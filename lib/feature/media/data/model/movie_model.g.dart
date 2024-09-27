// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieModelAdapter extends TypeAdapter<MovieModel> {
  @override
  final int typeId = 2;

  @override
  MovieModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieModel(
      id: fields[1] as int,
      name: fields[2] as String,
      image: fields[3] as String,
      overview: fields[4] as String,
      mediaType: fields[5] as MediaType,
      releaseDate: fields[6] as String,
    )..imgesList = (fields[0] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, MovieModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(6)
      ..write(obj.releaseDate)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
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
      other is MovieModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: (json['id'] as num).toInt(),
      name: json['title'] as String,
      image: json['poster_path'] as String,
      overview: json['overview'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']), 
      releaseDate: json['release_date'] as String,
    )..imgesList = json['profile'] == null
        ? []
        : imgList(json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'profile': instance.imgesList,
      'id': instance.id,
      'title': instance.name,
      'poster_path': instance.image,
      'overview': instance.overview,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'release_date': instance.releaseDate,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
