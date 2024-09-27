import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
@JsonEnum(valueField: 'gender')
@HiveType(typeId: 1)
enum Gender {
  @JsonValue(0)
  @HiveField(0)
  notSet,
  @JsonValue(1)
  @HiveField(1)
  female,
  @JsonValue(2)
  @HiveField(2)
  male,
  @JsonValue(3)
  @HiveField(3)
  nonbinary;
}

// extension GenderExtension on int {
//   Gender getGender() {
//     switch (this) {
//       case 0:
//         return Gender.notSet;
//       case 1:
//         return Gender.female;
//       case 2:
//         return Gender.male;
//       case 3:
//         return Gender.nonbinary;
//       default:
//         return Gender.notSet;
//     }
//   }
// }
