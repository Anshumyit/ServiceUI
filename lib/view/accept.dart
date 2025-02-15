import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "#5963",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "Check status →",
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Card(
                            color: HexColor("#fef0e9"),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Easy Breezy Laundry",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\$15.26",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "AC repair",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Our expert technicians will thoroughly clean and disinfect your air conditioning system...",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Read More',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue, // Optional: Set underline color
                            decorationThickness: 1.5, // Optional: Set thickness of underline
                            color: Colors.blue, // Text color
                          ),
                        ),
                        Text(''),
                        Row(
                          children: [
                            Icon(Icons.calendar_today,size: 16,),
                            SizedBox(width: 6),
                             Text('Date and Time'),
                            SizedBox(width: 50),
                            const Text("6 Sep, 2023 at 6:00 PM", style: TextStyle(color: Colors.green)),
                        ],
                        ),

                        const SizedBox(height: 8),

                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
                            SizedBox(width: 10,),
                            Text('Location'),
                            const SizedBox(width: 40),
                            const Expanded(
                              child: Text("211B Thornridge Cir, Syracuse, Connecticut - 35624, USA."),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "View location ",
                              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text('→',
                                style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: const Text(
                    "Bill Summary",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        billRow("Per servicemen charge", "\$12.00"),
                        billRow("2 servicemen [\$12.00*2]", "\$24.00"),
                        billRow("Coupon Discount (24% off)", "-\$1.20", discount: true),
                        billRow("Tax [2%]", "+\$15.00"),
                        billRow("Platform fees", "+\$11.00"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget billRow(String title, String amount, {bool discount = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: discount ? Colors.red : Colors.black,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: discount ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
