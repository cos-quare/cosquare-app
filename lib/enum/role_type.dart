enum RoleType {
  photographer('사진사'),
  cosplayer('코스어');

  final String value;

  const RoleType(this.value);

  @override
  String toString() {
    return value;
  }
}
