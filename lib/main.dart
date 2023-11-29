import 'package:dart_practice/widgets/button.dart';
import 'package:dart_practice/widgets/currency_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

// flutter root widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "example",
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  isInverted: false,
                  currencyName: "Euro",
                  amount: "6 428",
                  currencyUnit: "EUR",
                  currencyIcon: Icons.euro_rounded,
                  index: 0,
                ),
                const CurrencyCard(
                  isInverted: true,
                  currencyName: "Bitcoin",
                  amount: "9 785",
                  currencyUnit: "BTC",
                  currencyIcon: Icons.currency_bitcoin,
                  index: 1,
                ),
                const CurrencyCard(
                  isInverted: false,
                  currencyName: "Dollar",
                  amount: "428",
                  currencyUnit: "USD",
                  currencyIcon: Icons.attach_money_outlined,
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
