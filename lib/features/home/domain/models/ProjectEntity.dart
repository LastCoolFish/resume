class ProjectEntity {
  final String name;
  final String description;
  final List<String> stack;
  final String? url;

  const ProjectEntity({
    required this.name,
    required this.description,
    this.stack = const [],
    this.url,
  });
}
