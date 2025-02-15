import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanclap/view/accept.dart';
import 'package:urbanclap/view/reject.dart';

late Size Min;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Min = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), // Enables smooth scrolling
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
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
                        child: Text("Home", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.location_on_outlined, color: Colors.black), onPressed: () {}),
                          IconButton(icon: Icon(Icons.notifications_none, color: Colors.black), onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Balance Card
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total balance:", style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 5),
                    Text("\$225,236.23", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text("Withdraw"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Earnings, Bookings, Services, Categories Grid
              GridView.count(
                shrinkWrap: true, // Prevents scrolling conflicts
                physics: NeverScrollableScrollPhysics(), // Disables internal scrolling
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 13 / 9,
                children: [
                  _buildInfoCard(Icons.attach_money, "Total Earning", "3,263.03"),
                  _buildInfoCard(Icons.book, "Total Booking", "153"),
                  _buildInfoCard(Icons.work, "Total Service", "56"),
                  _buildInfoCard(Icons.category, "Total Category", "72"),
                ],
              ),
              SizedBox(height: 20),

              // Recent Booking Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent booking", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: Text("View all", style: TextStyle(color: Colors.orange))),
                ],
              ),

              // Recent Booking Item
              Container(
                padding: EdgeInsets.all(12),
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("images/Screenshot 2025-02-07 194952.png"),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("#2345 Package", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Cloth washing", style: TextStyle(color: Colors.grey)),
                          Text("\$22.00", style: TextStyle(color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(6)),
                      child: Text("Pending", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              GridView.count(

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 13 / 6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                children: [
                  _buildDetailCard( "Date & time", "6 Sep, 2023 at 6:00 PM"),
                  _buildDetailCard( "Serviceman", "2 required"),
                  _buildDetailCard( "Location", "California - USA"),
                  _buildDetailCard( "Payment", "Not paid yet", color: Colors.green),
                ],
              ),
              SizedBox(height: 20,),
              // Customer Section
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade200,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Stalla Milevski", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Customer", style: TextStyle(color: Colors.orange, fontSize: 12)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text("Note: Serviceman is not selected by user.", style: TextStyle(color: Colors.grey.shade600)),

              // Buttons
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {

                       Get.to(Service(showRejectSheet: true));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text("Reject"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(ServiceDetails());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text("Accept"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }




  // Helper Widget for Grid Items
  Widget _buildInfoCard(IconData icon, String title, String value) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: Min.width * 0.3, top: Min.height * 0.02),
            child: Icon(icon, color: Colors.orange, size: 24),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: Min.width * 0.13, top: Min.height * 0.01),
                child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              SizedBox(height: 5),
              Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildDetailCard( String title, String value, {Color color = Colors.black}) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [

          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
              ],
            ),
          ),
        ],
      ),
    );
  }


}


