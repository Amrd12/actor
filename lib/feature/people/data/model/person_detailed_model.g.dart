// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_detailed_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonDetailedModelAdapter extends TypeAdapter<PersonDetailedModel> {
  @override
  final int typeId = 1;

  @override
  PersonDetailedModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonDetailedModel(
      adult: fields[1] as bool,
      gender: fields[2] as Gender,
      id: fields[3] as int,
      name: fields[4] as String,
      image: fields[6] as String,
      media: (fields[7] as List).cast<MediaModel>(),
      originalName: fields[5] as String,
      biography: fields[8] as String?,
      birthday: fields[9] as String?,
      deathday: fields[10] as String?,
      placeOfBirth: fields[11] as String?,
      alsoKnownAs: (fields[12] as List?)?.cast<String>(),
      imdbId: fields[13] as String?,
    )..imgesList = (fields[0] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, PersonDetailedModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(8)
      ..write(obj.biography)
      ..writeByte(9)
      ..write(obj.birthday)
      ..writeByte(10)
      ..write(obj.deathday)
      ..writeByte(11)
      ..write(obj.placeOfBirth)
      ..writeByte(12)
      ..write(obj.alsoKnownAs)
      ..writeByte(13)
      ..write(obj.imdbId)
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
      other is PersonDetailedModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDetailedModel _$PersonDetailedModelFromJson(Map<String, dynamic> json) =>
    PersonDetailedModel(
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
      biography: json['biography'] as String?,
      birthday: json['birthday'] as String?,
      deathday: json['deathday'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      alsoKnownAs: (json['also_known_as'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imdbId: json['imdb_id'] as String?,
    )
      ..imgesList = json['profile'] == null
          ? []
          : imgList(json['profile'] as Map<String, dynamic>)
      ..apiPath = $enumDecode(_$ApiPathEnumMap, json['apiPath']);

Map<String, dynamic> _$PersonDetailedModelToJson(
        PersonDetailedModel instance) =>
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
      'biography': instance.biography,
      'birthday': instance.birthday,
      'deathday': instance.deathday,
      'place_of_birth': instance.placeOfBirth,
      'also_known_as': instance.alsoKnownAs,
      'imdb_id': instance.imdbId,
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
