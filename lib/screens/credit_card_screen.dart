import 'package:bon_assignment/data/credit_card_bill_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Paid':
        return Colors.green;
      case 'Unpaid':
        return Colors.orange;
      case 'Overdue':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card Bills'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: mockCreditCardBills.length,
        itemBuilder: (context, index) {
          final bill = mockCreditCardBills[index];
          //slide+ fade animation on card entry
          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 1.0, end: 0.0,),
            duration: Duration(milliseconds: 1200 + (index * 300)),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(value*120,0),
                child: Opacity(
                  opacity: 1 - value,
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.receipt_long, color: Colors.blue),
                      title: Text('Bill ID: ${bill.id}'),
                      subtitle: Text(
                         'Amount: \$${bill.amount.toStringAsFixed(2)}\n'
                          'Date: ${DateFormat('dd MMM yyyy').format(bill.date)}',
                      ),
                      trailing: AnimatedContainer(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOutCubic,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(bill.status).withValues(alpha: 0.10),
                          border: Border.all(
                            color: _getStatusColor(bill.status),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          bill.status,
                          style: TextStyle(
                            color: _getStatusColor(bill.status),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


