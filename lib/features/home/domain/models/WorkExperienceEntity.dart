// job_experience_entity.dart
import 'CompanyInfoEntity.dart';

class WorkExperienceEntity {
  final String position;
  final CompanyInfoEntity company;
  final DateTime startDate;
  final DateTime? endDate; // Поле может быть null
  final String description;

  const WorkExperienceEntity({
    required this.position,
    required this.company,
    required this.startDate,
    this.endDate,
    required this.description,
  });

  @override
  String toString() {
    return 'WorkExperienceEntity(\n'
        '  position: $position,\n'
        '  company: ${company.toString()},\n'
        '  startDate: $startDate,\n'
        '  endDate: ${endDate ?? "По настоящее время"},\n'
        '  description: $description\n'
        ')';
  }
}
