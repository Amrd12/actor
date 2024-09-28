// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonModelAdapter extends TypeAdapter<PersonModel> {
  @override
  final int typeId = 0;

  @override
  PersonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonModel(
      adult: fields[1] as bool,
      gender: fields[2] as Gender,
      id: fields[3] as int,
      name: fields[4] as String,
      image: fields[6] as String,
      media: (fields[7] as List).cast<MediaModel>(),
      originalName: fields[5] as String,
    )..imgesList = (fields[0] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, PersonModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.adult)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.originalName)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.media)
      ..writeByte(0)
      ..write(obj.imgesList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
      adult: json['adult'] as bool,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['profile_path'] as String,
      media: (json['known_for'] as List<dynamic>?)
              ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      originalName: json['original_name'] as String? ?? '',
    )..imgesList = json['profile'] == null
        ? []
        : imgList(json['profile'] as Map<String, dynamic>);
// ..apiPath = $enumDecode(_$ApiPathEnumMap, json['apiPath']);

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'profile': instance.imgesList,
      'adult': instance.adult,
      'apiPath': _$ApiPathEnumMap[instance.apiPath]!,
      'gender': _$GenderEnumMap[instance.gender]!,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'profile_path': instance.image,
      'known_for': instance.media.map((e) => e.toJson()).toList(),
    };

const _$GenderEnumMap = {
  Gender.notSet: 0,
  Gender.female: 1,
  Gender.male: 2,
  Gender.nonbinary: 3,
};

const _$ApiPathEnumMap = {
  ApiPath.tv: 'tv',
  ApiPath.movie: 'movie',
  ApiPath.person: 'person',
};
