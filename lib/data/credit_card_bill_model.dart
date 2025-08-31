class CreditCardBillModel {
  final String id;
  final double amount;
  final DateTime date;
  final String status; 

  CreditCardBillModel({
    required this.id,
    required this.amount,
    required this.date,
    required this.status,
  });
}

List<CreditCardBillModel> mockCreditCardBills = [
  CreditCardBillModel(
    id: "BILL001",
    amount: 5240.75,
    date: DateTime(2025, 08, 05),
    status: "Paid",
  ),
  CreditCardBillModel(
    id: "BILL002",
    amount: 3120.40,
    date: DateTime(2025, 08, 15),
    status: "Unpaid",
  ),
  CreditCardBillModel(
    id: "BILL003",
    amount: 8420.99,
    date: DateTime(2025, 07, 10),
    status: "Overdue",
  ),
  CreditCardBillModel(
    id: "BILL004",
    amount: 4520.00,
    date: DateTime(2025, 08, 28),
    status: "Unpaid",
  ),
  CreditCardBillModel(
    id: "BILL005",
    amount: 1999.50,
    date: DateTime(2025, 06, 25),
    status: "Paid",
  ),
];
