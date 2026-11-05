class CourseEntity {
  final String name;
  final String provider;
  final int startYear;
  final int? endYear;
  final String? url;

  const CourseEntity({
    required this.name,
    required this.provider,
    required this.startYear,
    this.endYear,
    this.url,
  });
}
