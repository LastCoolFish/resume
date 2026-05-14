class StudyEntity {
  final String universityName;
  final String degree;
  final String fieldName;
  final String specialization;
  final DateTime startDate;
  final DateTime? endDate;

  const StudyEntity({
    required this.universityName,
    required this.degree,
    required this.fieldName,
    required this.specialization,
    required this.startDate,
    this.endDate,
  });

  @override
  String toString() {
    return 'StudyEntity(\n'
        '  universityName: $universityName,\n'
        '  degree: $degree,\n'
        '  fieldName: $fieldName,\n'
        '  specialization: $specialization,\n'
        '  startDate: ${startDate.year},\n'
        '  endDate: ${endDate?.year ?? "По настоящее время"}\n'
        ')';
  }
}