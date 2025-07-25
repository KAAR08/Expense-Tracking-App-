class Expense {
  final String id;
  final double amount;
  final String categoryId;
  final String payee;
  final String note;
  final DateTime date;
  final String tag;

  Expense({
    required this.id,
    required this.amount,
    required this.categoryId,
    required this.payee,
    required this.note,
    required this.date,
    required this.tag,
  });

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
      id: json['id'],
      amount: json['amount'],
      categoryId: json['categoryId'],
      payee: json['payee'],
      note: json['note'],
      date: DateTime.parse(json['date']),
      tag: json['tag'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'categoryId': categoryId,
      'payee': payee,
      'note': note,
      'date': date.toIso8601String(),
      'tag': tag,
    };
  }

  
  
}