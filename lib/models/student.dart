class Student {
  String? career;
  String? fullname;
  String? mail;
  int? no;
  String? phone;
  String? semester;
  Student({
    this.career,
    this.fullname,
    this.mail,
    this.no,
    this.phone,
    this.semester,
  });
  factory Student.fromJson(dynamic json) => Student(
        career: json['career'],
        fullname: json['fullname'],
        mail: json['mail'],
        no: json['no'],
        phone: json['phone'],
        semester: json['semester'],
      );
}
