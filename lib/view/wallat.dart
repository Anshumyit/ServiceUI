import 'package:flutter/material.dart';

// Wallet Screen
// class Wallet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Wallet")),
//       body: Center(child: Text("Wallet Screen", style: TextStyle(fontSize: 24))),
//     );
//   }
// }
class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.058),
                      child: Text("Wallet", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.add, color: Colors.black), onPressed: () {}),
                        IconButton(icon: Icon(Icons.notifications_none, color: Colors.black), onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    'Total balance :',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$225236.23',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.orange,
                      ),
                      child: Text('Withdraw'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Wallet history',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            WalletHistoryCard(),
          ],
        ),
      ),
    );
  }
}

class WalletHistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '#032',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '\$21.78',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/44.jpg'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Customer',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Giana Fiorad',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
           SizedBox(
             width: double.infinity,
             height: 150,
             child: Card(
               child: Column(
                 children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 15,top: 25),
                        child: Text('Payment ID'),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 25,right: 15),
                        child: Text(
                          '#1536',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                   SizedBox(height: 5,),
                   Row(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 15,top: 8),
                         child: Text('Method type'),
                       ),
                       Spacer(),
                       Padding(
                         padding: EdgeInsets.only(top: 8,right: 15),
                         child: Text(
                           'Cash',
                           style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ),

                     ],
                   ),
                   SizedBox(height: 5,),
                   Row(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 15,top: 8),
                         child: Text('Status'),
                       ),
                       Spacer(),
                       Padding(
                         padding: EdgeInsets.only(top: 8,right: 15),
                         child: Text(
                           'Paid',
                           style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyanAccent),
                         ),
                       ),

                     ],
                   ),

                 ],
               ),
             ),
           ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('View details',style: TextStyle(color: Colors.red),),
                ),
                Spacer(),
                Padding(
                  padding:EdgeInsets.only(right: 10),
                  child: Text('→',style: TextStyle(fontSize: 20,color: Colors.red),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

