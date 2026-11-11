import 'package:laufen_front/app/data/schemas/scalar.dart';

class Input$RegisterInput {
  factory Input$RegisterInput({
    required String name,
    required String email,
    required String password,
  }) => Input$RegisterInput._({
    r'name': name,
    r'email': email,
    r'password': password,
  });

  Input$RegisterInput._(this._$data);

  factory Input$RegisterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$RegisterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$RegisterInput<Input$RegisterInput> get copyWith =>
      CopyWith$Input$RegisterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RegisterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([l$name, l$email, l$password]);
  }
}

abstract class CopyWith$Input$RegisterInput<TRes> {
  factory CopyWith$Input$RegisterInput(
    Input$RegisterInput instance,
    TRes Function(Input$RegisterInput) then,
  ) = _CopyWithImpl$Input$RegisterInput;

  factory CopyWith$Input$RegisterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegisterInput;

  TRes call({String? name, String? email, String? password});
}

class _CopyWithImpl$Input$RegisterInput<TRes>
    implements CopyWith$Input$RegisterInput<TRes> {
  _CopyWithImpl$Input$RegisterInput(this._instance, this._then);

  final Input$RegisterInput _instance;

  final TRes Function(Input$RegisterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) => _then(
    Input$RegisterInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (email != _undefined && email != null) 'email': (email as String),
      if (password != _undefined && password != null)
        'password': (password as String),
    }),
  );
}

class _CopyWithStubImpl$Input$RegisterInput<TRes>
    implements CopyWith$Input$RegisterInput<TRes> {
  _CopyWithStubImpl$Input$RegisterInput(this._res);

  TRes _res;

  call({String? name, String? email, String? password}) => _res;
}

class Input$RunCreateInput {
  factory Input$RunCreateInput({
    required DateTime startedAt,
    required int durationSec,
    required int distanceM,
    int? calories,
    required List<Input$RunPointInput> points,
  }) => Input$RunCreateInput._({
    r'startedAt': startedAt,
    r'durationSec': durationSec,
    r'distanceM': distanceM,
    if (calories != null) r'calories': calories,
    r'points': points,
  });

  Input$RunCreateInput._(this._$data);

  factory Input$RunCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$startedAt = data['startedAt'];
    result$data['startedAt'] = dateTimeFromJsonUtcToLocal(l$startedAt);
    final l$durationSec = data['durationSec'];
    result$data['durationSec'] = (l$durationSec as int);
    final l$distanceM = data['distanceM'];
    result$data['distanceM'] = (l$distanceM as int);
    if (data.containsKey('calories')) {
      final l$calories = data['calories'];
      result$data['calories'] = (l$calories as int?);
    }
    final l$points = data['points'];
    result$data['points'] = (l$points as List<dynamic>)
        .map((e) => Input$RunPointInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$RunCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get startedAt => (_$data['startedAt'] as DateTime);

  int get durationSec => (_$data['durationSec'] as int);

  int get distanceM => (_$data['distanceM'] as int);

  int? get calories => (_$data['calories'] as int?);

  List<Input$RunPointInput> get points =>
      (_$data['points'] as List<Input$RunPointInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$startedAt = startedAt;
    result$data['startedAt'] = dateTimeToUtcToJson(l$startedAt);
    final l$durationSec = durationSec;
    result$data['durationSec'] = l$durationSec;
    final l$distanceM = distanceM;
    result$data['distanceM'] = l$distanceM;
    if (_$data.containsKey('calories')) {
      final l$calories = calories;
      result$data['calories'] = l$calories;
    }
    final l$points = points;
    result$data['points'] = l$points.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$RunCreateInput<Input$RunCreateInput> get copyWith =>
      CopyWith$Input$RunCreateInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RunCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$durationSec = durationSec;
    final lOther$durationSec = other.durationSec;
    if (l$durationSec != lOther$durationSec) {
      return false;
    }
    final l$distanceM = distanceM;
    final lOther$distanceM = other.distanceM;
    if (l$distanceM != lOther$distanceM) {
      return false;
    }
    final l$calories = calories;
    final lOther$calories = other.calories;
    if (_$data.containsKey('calories') !=
        other._$data.containsKey('calories')) {
      return false;
    }
    if (l$calories != lOther$calories) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startedAt = startedAt;
    final l$durationSec = durationSec;
    final l$distanceM = distanceM;
    final l$calories = calories;
    final l$points = points;
    return Object.hashAll([
      l$startedAt,
      l$durationSec,
      l$distanceM,
      _$data.containsKey('calories') ? l$calories : const {},
      Object.hashAll(l$points.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$RunCreateInput<TRes> {
  factory CopyWith$Input$RunCreateInput(
    Input$RunCreateInput instance,
    TRes Function(Input$RunCreateInput) then,
  ) = _CopyWithImpl$Input$RunCreateInput;

  factory CopyWith$Input$RunCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RunCreateInput;

  TRes call({
    DateTime? startedAt,
    int? durationSec,
    int? distanceM,
    int? calories,
    List<Input$RunPointInput>? points,
  });
  TRes points(
    Iterable<Input$RunPointInput> Function(
      Iterable<CopyWith$Input$RunPointInput<Input$RunPointInput>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$RunCreateInput<TRes>
    implements CopyWith$Input$RunCreateInput<TRes> {
  _CopyWithImpl$Input$RunCreateInput(this._instance, this._then);

  final Input$RunCreateInput _instance;

  final TRes Function(Input$RunCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startedAt = _undefined,
    Object? durationSec = _undefined,
    Object? distanceM = _undefined,
    Object? calories = _undefined,
    Object? points = _undefined,
  }) => _then(
    Input$RunCreateInput._({
      ..._instance._$data,
      if (startedAt != _undefined && startedAt != null)
        'startedAt': (startedAt as DateTime),
      if (durationSec != _undefined && durationSec != null)
        'durationSec': (durationSec as int),
      if (distanceM != _undefined && distanceM != null)
        'distanceM': (distanceM as int),
      if (calories != _undefined) 'calories': (calories as int?),
      if (points != _undefined && points != null)
        'points': (points as List<Input$RunPointInput>),
    }),
  );

  TRes points(
    Iterable<Input$RunPointInput> Function(
      Iterable<CopyWith$Input$RunPointInput<Input$RunPointInput>>,
    )
    _fn,
  ) => call(
    points: _fn(
      _instance.points.map((e) => CopyWith$Input$RunPointInput(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$RunCreateInput<TRes>
    implements CopyWith$Input$RunCreateInput<TRes> {
  _CopyWithStubImpl$Input$RunCreateInput(this._res);

  TRes _res;

  call({
    DateTime? startedAt,
    int? durationSec,
    int? distanceM,
    int? calories,
    List<Input$RunPointInput>? points,
  }) => _res;

  points(_fn) => _res;
}

class Input$RunPointInput {
  factory Input$RunPointInput({
    required double lat,
    required double lng,
    required DateTime recordedAt,
  }) => Input$RunPointInput._({
    r'lat': lat,
    r'lng': lng,
    r'recordedAt': recordedAt,
  });

  Input$RunPointInput._(this._$data);

  factory Input$RunPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lng = data['lng'];
    result$data['lng'] = (l$lng as num).toDouble();
    final l$recordedAt = data['recordedAt'];
    result$data['recordedAt'] = dateTimeFromJsonUtcToLocal(l$recordedAt);
    return Input$RunPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);

  double get lng => (_$data['lng'] as double);

  DateTime get recordedAt => (_$data['recordedAt'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lng = lng;
    result$data['lng'] = l$lng;
    final l$recordedAt = recordedAt;
    result$data['recordedAt'] = dateTimeToUtcToJson(l$recordedAt);
    return result$data;
  }

  CopyWith$Input$RunPointInput<Input$RunPointInput> get copyWith =>
      CopyWith$Input$RunPointInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RunPointInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$recordedAt = recordedAt;
    final lOther$recordedAt = other.recordedAt;
    if (l$recordedAt != lOther$recordedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$recordedAt = recordedAt;
    return Object.hashAll([l$lat, l$lng, l$recordedAt]);
  }
}

abstract class CopyWith$Input$RunPointInput<TRes> {
  factory CopyWith$Input$RunPointInput(
    Input$RunPointInput instance,
    TRes Function(Input$RunPointInput) then,
  ) = _CopyWithImpl$Input$RunPointInput;

  factory CopyWith$Input$RunPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RunPointInput;

  TRes call({double? lat, double? lng, DateTime? recordedAt});
}

class _CopyWithImpl$Input$RunPointInput<TRes>
    implements CopyWith$Input$RunPointInput<TRes> {
  _CopyWithImpl$Input$RunPointInput(this._instance, this._then);

  final Input$RunPointInput _instance;

  final TRes Function(Input$RunPointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? recordedAt = _undefined,
  }) => _then(
    Input$RunPointInput._({
      ..._instance._$data,
      if (lat != _undefined && lat != null) 'lat': (lat as double),
      if (lng != _undefined && lng != null) 'lng': (lng as double),
      if (recordedAt != _undefined && recordedAt != null)
        'recordedAt': (recordedAt as DateTime),
    }),
  );
}

class _CopyWithStubImpl$Input$RunPointInput<TRes>
    implements CopyWith$Input$RunPointInput<TRes> {
  _CopyWithStubImpl$Input$RunPointInput(this._res);

  TRes _res;

  call({double? lat, double? lng, DateTime? recordedAt}) => _res;
}

class Input$OrderByClause {
  factory Input$OrderByClause({
    required String column,
    required Enum$SortOrder order,
  }) => Input$OrderByClause._({r'column': column, r'order': order});

  Input$OrderByClause._(this._$data);

  factory Input$OrderByClause.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$column = data['column'];
    result$data['column'] = (l$column as String);
    final l$order = data['order'];
    result$data['order'] = fromJson$Enum$SortOrder((l$order as String));
    return Input$OrderByClause._(result$data);
  }

  Map<String, dynamic> _$data;

  String get column => (_$data['column'] as String);

  Enum$SortOrder get order => (_$data['order'] as Enum$SortOrder);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$column = column;
    result$data['column'] = l$column;
    final l$order = order;
    result$data['order'] = toJson$Enum$SortOrder(l$order);
    return result$data;
  }

  CopyWith$Input$OrderByClause<Input$OrderByClause> get copyWith =>
      CopyWith$Input$OrderByClause(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderByClause || runtimeType != other.runtimeType) {
      return false;
    }
    final l$column = column;
    final lOther$column = other.column;
    if (l$column != lOther$column) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$column = column;
    final l$order = order;
    return Object.hashAll([l$column, l$order]);
  }
}

abstract class CopyWith$Input$OrderByClause<TRes> {
  factory CopyWith$Input$OrderByClause(
    Input$OrderByClause instance,
    TRes Function(Input$OrderByClause) then,
  ) = _CopyWithImpl$Input$OrderByClause;

  factory CopyWith$Input$OrderByClause.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderByClause;

  TRes call({String? column, Enum$SortOrder? order});
}

class _CopyWithImpl$Input$OrderByClause<TRes>
    implements CopyWith$Input$OrderByClause<TRes> {
  _CopyWithImpl$Input$OrderByClause(this._instance, this._then);

  final Input$OrderByClause _instance;

  final TRes Function(Input$OrderByClause) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? column = _undefined, Object? order = _undefined}) => _then(
    Input$OrderByClause._({
      ..._instance._$data,
      if (column != _undefined && column != null) 'column': (column as String),
      if (order != _undefined && order != null)
        'order': (order as Enum$SortOrder),
    }),
  );
}

class _CopyWithStubImpl$Input$OrderByClause<TRes>
    implements CopyWith$Input$OrderByClause<TRes> {
  _CopyWithStubImpl$Input$OrderByClause(this._res);

  TRes _res;

  call({String? column, Enum$SortOrder? order}) => _res;
}

enum Enum$RunPeriod {
  WEEK,
  MONTH,
  YEAR,
  $unknown;

  factory Enum$RunPeriod.fromJson(String value) =>
      fromJson$Enum$RunPeriod(value);

  String toJson() => toJson$Enum$RunPeriod(this);
}

String toJson$Enum$RunPeriod(Enum$RunPeriod e) {
  switch (e) {
    case Enum$RunPeriod.WEEK:
      return r'WEEK';
    case Enum$RunPeriod.MONTH:
      return r'MONTH';
    case Enum$RunPeriod.YEAR:
      return r'YEAR';
    case Enum$RunPeriod.$unknown:
      return r'$unknown';
  }
}

Enum$RunPeriod fromJson$Enum$RunPeriod(String value) {
  switch (value) {
    case r'WEEK':
      return Enum$RunPeriod.WEEK;
    case r'MONTH':
      return Enum$RunPeriod.MONTH;
    case r'YEAR':
      return Enum$RunPeriod.YEAR;
    default:
      return Enum$RunPeriod.$unknown;
  }
}

enum Enum$SortOrder {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortOrder.fromJson(String value) =>
      fromJson$Enum$SortOrder(value);

  String toJson() => toJson$Enum$SortOrder(this);
}

String toJson$Enum$SortOrder(Enum$SortOrder e) {
  switch (e) {
    case Enum$SortOrder.ASC:
      return r'ASC';
    case Enum$SortOrder.DESC:
      return r'DESC';
    case Enum$SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$SortOrder fromJson$Enum$SortOrder(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortOrder.ASC;
    case r'DESC':
      return Enum$SortOrder.DESC;
    default:
      return Enum$SortOrder.$unknown;
  }
}

enum Enum$OrderByRelationAggregateFunction {
  COUNT,
  $unknown;

  factory Enum$OrderByRelationAggregateFunction.fromJson(String value) =>
      fromJson$Enum$OrderByRelationAggregateFunction(value);

  String toJson() => toJson$Enum$OrderByRelationAggregateFunction(this);
}

String toJson$Enum$OrderByRelationAggregateFunction(
  Enum$OrderByRelationAggregateFunction e,
) {
  switch (e) {
    case Enum$OrderByRelationAggregateFunction.COUNT:
      return r'COUNT';
    case Enum$OrderByRelationAggregateFunction.$unknown:
      return r'$unknown';
  }
}

Enum$OrderByRelationAggregateFunction
fromJson$Enum$OrderByRelationAggregateFunction(String value) {
  switch (value) {
    case r'COUNT':
      return Enum$OrderByRelationAggregateFunction.COUNT;
    default:
      return Enum$OrderByRelationAggregateFunction.$unknown;
  }
}

enum Enum$OrderByRelationWithColumnAggregateFunction {
  AVG,
  MIN,
  MAX,
  SUM,
  COUNT,
  $unknown;

  factory Enum$OrderByRelationWithColumnAggregateFunction.fromJson(
    String value,
  ) => fromJson$Enum$OrderByRelationWithColumnAggregateFunction(value);

  String toJson() =>
      toJson$Enum$OrderByRelationWithColumnAggregateFunction(this);
}

String toJson$Enum$OrderByRelationWithColumnAggregateFunction(
  Enum$OrderByRelationWithColumnAggregateFunction e,
) {
  switch (e) {
    case Enum$OrderByRelationWithColumnAggregateFunction.AVG:
      return r'AVG';
    case Enum$OrderByRelationWithColumnAggregateFunction.MIN:
      return r'MIN';
    case Enum$OrderByRelationWithColumnAggregateFunction.MAX:
      return r'MAX';
    case Enum$OrderByRelationWithColumnAggregateFunction.SUM:
      return r'SUM';
    case Enum$OrderByRelationWithColumnAggregateFunction.COUNT:
      return r'COUNT';
    case Enum$OrderByRelationWithColumnAggregateFunction.$unknown:
      return r'$unknown';
  }
}

Enum$OrderByRelationWithColumnAggregateFunction
fromJson$Enum$OrderByRelationWithColumnAggregateFunction(String value) {
  switch (value) {
    case r'AVG':
      return Enum$OrderByRelationWithColumnAggregateFunction.AVG;
    case r'MIN':
      return Enum$OrderByRelationWithColumnAggregateFunction.MIN;
    case r'MAX':
      return Enum$OrderByRelationWithColumnAggregateFunction.MAX;
    case r'SUM':
      return Enum$OrderByRelationWithColumnAggregateFunction.SUM;
    case r'COUNT':
      return Enum$OrderByRelationWithColumnAggregateFunction.COUNT;
    default:
      return Enum$OrderByRelationWithColumnAggregateFunction.$unknown;
  }
}

enum Enum$Trashed {
  ONLY,
  WITH,
  WITHOUT,
  $unknown;

  factory Enum$Trashed.fromJson(String value) => fromJson$Enum$Trashed(value);

  String toJson() => toJson$Enum$Trashed(this);
}

String toJson$Enum$Trashed(Enum$Trashed e) {
  switch (e) {
    case Enum$Trashed.ONLY:
      return r'ONLY';
    case Enum$Trashed.WITH:
      return r'WITH';
    case Enum$Trashed.WITHOUT:
      return r'WITHOUT';
    case Enum$Trashed.$unknown:
      return r'$unknown';
  }
}

Enum$Trashed fromJson$Enum$Trashed(String value) {
  switch (value) {
    case r'ONLY':
      return Enum$Trashed.ONLY;
    case r'WITH':
      return Enum$Trashed.WITH;
    case r'WITHOUT':
      return Enum$Trashed.WITHOUT;
    default:
      return Enum$Trashed.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
