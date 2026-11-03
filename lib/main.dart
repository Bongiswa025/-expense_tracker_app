
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTrackerApp());
}

// MAIN APPLICATION
class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const ExpenseHomePage(),
    );
  }
}

// EXPENSE TRACKER HOME SCREEN
class ExpenseHomePage extends StatelessWidget {
  const ExpenseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      // ALLOWS THE SCREEN TO SCROLL
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // DASHBOARD HEADING
              const Text(
                'My Dashboard',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // TOTAL BALANCE CARD
              Card(
                color: Colors.deepPurple,
                elevation: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.account_balance_wallet,
                              color: Colors.white,
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        const Text(
                          'R 5,000.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'Your available balance',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // INCOME AND EXPENSES CARDS
              Row(
                children: [

                  // INCOME CARD
                  Expanded(
                    child: Card(
                      color: Colors.green.shade50,
                      child: const Padding(
                        padding: EdgeInsets.all(20),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_downward,
                              color: Colors.green,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Income',
                              style: TextStyle(fontSize: 16),
                            ),

                            SizedBox(height: 8),

                            Text(
                              'R 8,000',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // EXPENSES CARD
                  Expanded(
                    child: Card(
                      color: Colors.red.shade50,
                      child: const Padding(
                        padding: EdgeInsets.all(20),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.red,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Expenses',
                              style: TextStyle(fontSize: 16),
                            ),

                            SizedBox(height: 8),

                            Text(
                              'R 3,000',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // RECENT TRANSACTIONS HEADING
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // RECENT TRANSACTIONS LIST
              const Card(
                child: Column(
                  children: [

                    // GROCERIES
                    ListTile(
                      leading: Icon(
                        Icons.shopping_cart,
                        color: Colors.deepPurple,
                      ),
                      title: Text('Groceries'),
                      subtitle: Text('Food'),
                      trailing: Text(
                        '-R 450.00',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    // TRANSPORT
                    ListTile(
                      leading: Icon(
                        Icons.directions_bus,
                        color: Colors.deepPurple,
                      ),
                      title: Text('Transport'),
                      subtitle: Text('Travel'),
                      trailing: Text(
                        '-R 200.00',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    // SALARY
                    ListTile(
                      leading: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.deepPurple,
                      ),
                      title: Text('Salary'),
                      subtitle: Text('Income'),
                      trailing: Text(
                        '+R 8,000.00',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
