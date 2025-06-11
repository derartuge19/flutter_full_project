
part of 'idea.dart';



T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Idea _$IdeaFromJson(Map<String, dynamic> json) {
  return _Idea.fromJson(json);
}


mixin _$Idea {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

 
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdeaCopyWith<Idea> get copyWith => throw _privateConstructorUsedError;
}


abstract class $IdeaCopyWith<$Res> {
  factory $IdeaCopyWith(Idea value, $Res Function(Idea) then) =
      _$IdeaCopyWithImpl<$Res, Idea>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String status,
      int userId,
      String userName,
      String? feedback,
      int? rating,
      DateTime? createdAt,
      DateTime? updatedAt});
}


class _$IdeaCopyWithImpl<$Res, $Val extends Idea>
    implements $IdeaCopyWith<$Res> {
  _$IdeaCopyWithImpl(this._value, this._then);

  
  final $Val _value;
 
  final $Res Function($Val) _then;

  
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? userId = null,
    Object? userName = null,
    Object? feedback = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id 
              as int,
      title: null == title
          ? _value.title
          : title 
              as String,
      description: null == description
          ? _value.description
          : description 
              as String,
      status: null == status
          ? _value.status
          : status 
              as String,
      userId: null == userId
          ? _value.userId
          : userId 
              as int,
      userName: null == userName
          ? _value.userName
          : userName
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback 
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating 
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt 
              as DateTime?,
    ) as $Val);
  }
}


abstract class _$$IdeaImplCopyWith<$Res> implements $IdeaCopyWith<$Res> {
  factory _$$IdeaImplCopyWith(
          _$IdeaImpl value, $Res Function(_$IdeaImpl) then) =
      __$$IdeaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String status,
      int userId,
      String userName,
      String? feedback,
      int? rating,
      DateTime? createdAt,
      DateTime? updatedAt});
}


class __$$IdeaImplCopyWithImpl<$Res>
    extends _$IdeaCopyWithImpl<$Res, _$IdeaImpl>
    implements _$$IdeaImplCopyWith<$Res> {
  __$$IdeaImplCopyWithImpl(_$IdeaImpl _value, $Res Function(_$IdeaImpl) _then)
      : super(_value, _then);

  
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? userId = null,
    Object? userName = null,
    Object? feedback = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$IdeaImpl(
      id: null == id
          ? _value.id
          : id 
              as int,
      title: null == title
          ? _value.title
          : title 
              as String,
      description: null == description
          ? _value.description
          : description 
              as String,
      status: null == status
          ? _value.status
          : status
              as String,
      userId: null == userId
          ? _value.userId
          : userId 
              as int,
      userName: null == userName
          ? _value.userName
          : userName 
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback 
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating 
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt 
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt 
              as DateTime?,
    ));
  }
}


@JsonSerializable()
class _$IdeaImpl implements _Idea {
  const _$IdeaImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.status,
      required this.userId,
      required this.userName,
      this.feedback,
      this.rating,
      this.createdAt,
      this.updatedAt});

  factory _$IdeaImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdeaImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String status;
  @override
  final int userId;
  @override
  final String userName;
  @override
  final String? feedback;
  @override
  final int? rating;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Idea(id: $id, title: $title, description: $description, status: $status, userId: $userId, userName: $userName, feedback: $feedback, rating: $rating, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdeaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, status,
      userId, userName, feedback, rating, createdAt, updatedAt);

  
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdeaImplCopyWith<_$IdeaImpl> get copyWith =>
      __$$IdeaImplCopyWithImpl<_$IdeaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdeaImplToJson(
      this,
    );
  }
}

abstract class _Idea implements Idea {
  const factory _Idea(
      {required final int id,
      required final String title,
      required final String description,
      required final String status,
      required final int userId,
      required final String userName,
      final String? feedback,
      final int? rating,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$IdeaImpl;

  factory _Idea.fromJson(Map<String, dynamic> json) = _$IdeaImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get status;
  @override
  int get userId;
  @override
  String get userName;
  @override
  String? get feedback;
  @override
  int? get rating;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdeaImplCopyWith<_$IdeaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
