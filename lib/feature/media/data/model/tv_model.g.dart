// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TVModelAdapter extends TypeAdapter<TVModel> {
  @override
  final int typeId = 3;

  @override
  TVModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TVModel(
      id: fields[1] as int,
      name: fields[2] as String,
      image: fields[3] as String,
      overview: fields[4] as String,
      mediaType: fields[5] as MediaType,
      firstAirDate: fields[6] as String,
      numberOfSeasons: fields[7] as int?,
    )..imgesList = (fields[0] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, TVModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(6)
      ..write(obj.firstAirDate)
      ..writeByte(7)
      ..write(obj.numberOfSeasons)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.overview)
      ..writeByte(5)
      ..write(obj.mediaType)
      ..writeByte(0)
      ..write(obj.imgesList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TVModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TVModel _$TVModelFromJson(Map<String, dynamic> json) => TVModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['poster_path'] as String,
      overview: json['overview'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      firstAirDate: json['first_air_date'] as String,
      numberOfSeasons: (json['number_of_seasons'] as num?)?.toInt(),
    )..imgesList = json['profile'] == null
        ? []
        : imgList(json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$TVModelToJson(TVModel instance) => <String, dynamic>{
      'profile': instance.imgesList,
      'id': instance.id,
      'poster_path': instance.image,
      'overview': instance.overview,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'name': instance.name,
      'first_air_date': instance.firstAirDate,
      'number_of_seasons': instance.numberOfSeasons,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
