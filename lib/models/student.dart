class alumnoData {
  Alumno? alumno;

  alumnoData({this.alumno});

  alumnoData.fromJson(Map<String, dynamic> json) {
    alumno =
        json['alumno'] != null ? new Alumno.fromJson(json['alumno']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.alumno != null) {
      data['alumno'] = this.alumno!.toJson();
    }
    return data;
  }
}

class Alumno {
  String? codigo;
  String? matricula;
  String? nombre;
  String? apellidoPat;
  String? apellidoMat;
  String? correo;
  bool? isEnable;
  String? foto;
  String? contrasena;
  String? proyectoE1Id;
  String? proyectoE2Id;
  String? proyectoE3Id;
  ProyectoE1? proyectoE1;
  ProyectoE2? proyectoE2;
  ProyectoE1? proyectoE3;

  Alumno(
      {this.codigo,
      this.matricula,
      this.nombre,
      this.apellidoPat,
      this.apellidoMat,
      this.correo,
      this.isEnable,
      this.foto,
      this.contrasena,
      this.proyectoE1Id,
      this.proyectoE2Id,
      this.proyectoE3Id,
      this.proyectoE1,
      this.proyectoE2,
      this.proyectoE3});

  Alumno.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    matricula = json['matricula'];
    nombre = json['nombre'];
    apellidoPat = json['apellidoPat'];
    apellidoMat = json['apellidoMat'];
    correo = json['correo'];
    isEnable = json['isEnable'];
    foto = json['foto'];
    contrasena = json['contrasena'];
    proyectoE1Id = json['proyectoE1Id'];
    proyectoE2Id = json['proyectoE2Id'];
    proyectoE3Id = json['proyectoE3Id'];
    proyectoE1 = json['proyectoE1'] != null
        ? new ProyectoE1.fromJson(json['proyectoE1'])
        : null;
    proyectoE2 = json['ProyectoE2'] != null
        ? new ProyectoE2.fromJson(json['ProyectoE2'])
        : null;
    proyectoE3 = json['ProyectoE3'] != null
        ? new ProyectoE1.fromJson(json['ProyectoE3'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['matricula'] = this.matricula;
    data['nombre'] = this.nombre;
    data['apellidoPat'] = this.apellidoPat;
    data['apellidoMat'] = this.apellidoMat;
    data['correo'] = this.correo;
    data['isEnable'] = this.isEnable;
    data['foto'] = this.foto;
    data['contrasena'] = this.contrasena;
    data['proyectoE1Id'] = this.proyectoE1Id;
    data['proyectoE2Id'] = this.proyectoE2Id;
    data['proyectoE3Id'] = this.proyectoE3Id;
    if (this.proyectoE1 != null) {
      data['proyectoE1'] = this.proyectoE1!.toJson();
    }
    if (this.proyectoE2 != null) {
      data['ProyectoE2'] = this.proyectoE2!.toJson();
    }
    if (this.proyectoE3 != null) {
      data['ProyectoE3'] = this.proyectoE3!.toJson();
    }
    return data;
  }
}

class ProyectoE1 {
  String? id;
  String? nombre;
  String? urldocumento;
  String? estado;
  String? observacion;
  String? fechaRegistro;
  String? docenteCodigo;
  Docente? docente;

  ProyectoE1(
      {this.id,
      this.nombre,
      this.urldocumento,
      this.estado,
      this.observacion,
      this.fechaRegistro,
      this.docenteCodigo,
      this.docente});

  ProyectoE1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    urldocumento = json['urldocumento'];
    estado = json['estado'];
    observacion = json['observacion'];
    fechaRegistro = json['fechaRegistro'];
    docenteCodigo = json['docenteCodigo'];
    docente =
        json['docente'] != null ? new Docente.fromJson(json['docente']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['urldocumento'] = this.urldocumento;
    data['estado'] = this.estado;
    data['observacion'] = this.observacion;
    data['fechaRegistro'] = this.fechaRegistro;
    data['docenteCodigo'] = this.docenteCodigo;
    if (this.docente != null) {
      data['docente'] = this.docente!.toJson();
    }
    return data;
  }
}

class Docente {
  String? codigo;
  String? nombre;
  String? apellidoPat;
  String? apellidoMat;
  String? correo;
  bool? isEnable;
  String? foto;
  String? contrasena;

  Docente(
      {this.codigo,
      this.nombre,
      this.apellidoPat,
      this.apellidoMat,
      this.correo,
      this.isEnable,
      this.foto,
      this.contrasena});

  Docente.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    nombre = json['nombre'];
    apellidoPat = json['apellidoPat'];
    apellidoMat = json['apellidoMat'];
    correo = json['correo'];
    isEnable = json['isEnable'];
    foto = json['foto'];
    contrasena = json['contrasena'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['nombre'] = this.nombre;
    data['apellidoPat'] = this.apellidoPat;
    data['apellidoMat'] = this.apellidoMat;
    data['correo'] = this.correo;
    data['isEnable'] = this.isEnable;
    data['foto'] = this.foto;
    data['contrasena'] = this.contrasena;
    return data;
  }
}

class ProyectoE2 {
  String? id;
  String? nombre;
  String? urldocumento;
  String? estado;
  String? evaluacion;
  String? observacion;
  String? fechaRegistro;
  String? docenteCodigo;
  Docente? docente;

  ProyectoE2(
      {this.id,
      this.nombre,
      this.urldocumento,
      this.estado,
      this.evaluacion,
      this.observacion,
      this.fechaRegistro,
      this.docenteCodigo,
      this.docente});

  ProyectoE2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    urldocumento = json['urldocumento'];
    estado = json['estado'];
    evaluacion = json['evaluacion'];
    observacion = json['observacion'];
    fechaRegistro = json['fechaRegistro'];
    docenteCodigo = json['docenteCodigo'];
    docente =
        json['docente'] != null ? new Docente.fromJson(json['docente']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['urldocumento'] = this.urldocumento;
    data['estado'] = this.estado;
    data['evaluacion'] = this.evaluacion;
    data['observacion'] = this.observacion;
    data['fechaRegistro'] = this.fechaRegistro;
    data['docenteCodigo'] = this.docenteCodigo;
    if (this.docente != null) {
      data['docente'] = this.docente!.toJson();
    }
    return data;
  }
}
