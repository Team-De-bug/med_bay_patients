class Presc {
  Presc(this.medicine);

  String medicine = '';

  factory Presc.fromJson(dynamic json) {
    return Presc(json['item']['name']);
  }

  @override
  String toString() {
    return '${this.medicine}';
  }
}
