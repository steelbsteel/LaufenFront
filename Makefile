ENV ?= dev
FLAVOR ?= googlePlay
ENV_FILE = assets/env/$(ENV)_env.json
COMMIT_DATE ?= $(shell git log -1 --format=%cI)
DEFINE = --dart-define-from-file=$(ENV_FILE) --dart-define=COMMIT_DATE=$(COMMIT_DATE)
# --flavor is mandatory for any Android build (googlePlay / ruStore); iOS has no flavors
ANDROID_ARGS = --flavor $(FLAVOR) --target-platform android-arm,android-arm64

.PHONY: help setup get codegen codegen-watch clean analyze test run run-dev run-stage run-prod run-android build-apk build-apk-dev build-apk-stage build-apk-prod build-appbundle build-ios check-env check-fvm

help:
	@echo "Targets (ENV=dev|stage|prod, default dev; FLAVOR=googlePlay|ruStore, default googlePlay):"
	@echo "  setup           - fvm install + pub get"
	@echo "  get             - pub get"
	@echo "  codegen         - build_runner build (freezed, injectable, retrofit, auto_route, slang, graphql)"
	@echo "  codegen-watch   - build_runner watch (full 'make codegen' before commit)"
	@echo "  analyze         - dart analyze"
	@echo "  test            - run tests"
	@echo "  clean           - flutter clean + pub get"
	@echo "  run             - run app on iOS/simulator (no flavor)"
	@echo "  run-android     - run app on Android device (with FLAVOR)"
	@echo "  run-dev/run-stage/run-prod"
	@echo "  build-apk / build-appbundle - Android release, pass ENV=... FLAVOR=..."
	@echo "  build-apk-dev/build-apk-stage/build-apk-prod"
	@echo "  build-ios       - iOS release (ipa), pass ENV=..."

check-fvm:
	@fvm --version >nul 2>&1 || fvm --version >/dev/null 2>&1 || (echo fvm not found. Install it: 'brew install fvm' (macOS), 'choco install fvm' (Windows) or 'dart pub global activate fvm' && exit 1)

setup: check-fvm
	fvm install
	fvm flutter pub get

get:
	fvm flutter pub get

codegen:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

codegen-watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs

analyze:
	fvm dart analyze

test:
	fvm flutter test

clean:
	fvm flutter clean
	fvm flutter pub get

check-env:
	$(if $(wildcard $(ENV_FILE)),,$(error Missing $(ENV_FILE). Use ENV=dev|stage|prod))

run: check-env
	fvm flutter run $(DEFINE)

run-android: check-env
	fvm flutter run $(DEFINE) --flavor $(FLAVOR)

run-dev:
	$(MAKE) run ENV=dev

run-stage:
	$(MAKE) run ENV=stage

run-prod:
	$(MAKE) run ENV=prod

build-apk: check-env
	fvm flutter build apk --release $(DEFINE) $(ANDROID_ARGS)

build-apk-dev:
	$(MAKE) build-apk ENV=dev

build-apk-stage:
	$(MAKE) build-apk ENV=stage

build-apk-prod:
	$(MAKE) build-apk ENV=prod

build-appbundle: check-env
	fvm flutter build appbundle --release $(DEFINE) $(ANDROID_ARGS)

build-ios: check-env
	fvm flutter build ipa --release $(DEFINE)
