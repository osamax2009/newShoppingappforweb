class Student {
  int? avg;
  String? year;
  String? sub;
  String? school;
  String? stage;
  String? address;
  String? birth;
  String? sex;
  String? mothername;
  String? fullname;
  String? orgnization;

  Student(
      {this.avg,
        this.year,
        this.sub,
        this.school,
        this.stage,
        this.address,
        this.birth,
        this.sex,
        this.mothername,
        this.fullname,
        this.orgnization});

  Student.fromJson(Map<String, dynamic> json) {
    avg = json['avg'];
    year = json['year'];
    sub = json['sub'];
    school = json['school'];
    stage = json['stage'];
    address = json['address'];
    birth = json['birth'];
    sex = json['sex'];
    mothername = json['mothername'];
    fullname = json['fullname'];
    orgnization = json['orgnization'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avg'] = this.avg;
    data['year'] = this.year;
    data['sub'] = this.sub;
    data['school'] = this.school;
    data['stage'] = this.stage;
    data['address'] = this.address;
    data['birth'] = this.birth;
    data['sex'] = this.sex;
    data['mothername'] = this.mothername;
    data['fullname'] = this.fullname;
    data['orgnization'] = this.orgnization;
    return data;
  }
}
