class Disciplina {
  String id;
  String nome;
  int faltas;
  int faltas_max;

  Disciplina({
    required this.id,
    required this.nome,
    required this.faltas,
    required this.faltas_max,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'faltas': faltas,
      'faltas_max': faltas_max,
    };
  }

  factory Disciplina.fromMap(Map<String, dynamic> map) {
    return Disciplina(
        id: map['id'],
        nome: map['nome'],
        faltas: map['faltas'],
        faltas_max: map['faltas_max']
    );
  }
}