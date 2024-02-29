import 'package:dicee_app/screens/cleaning_screen.dart';
import 'package:dicee_app/screens/electrician_screen.dart';
import 'package:dicee_app/screens/plumber_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: EdgeInsets.all(10.0),
        children: [
          ServiceCategoryWidget(categoryName: 'Plumbing', iconData: Icons.build),
          ServiceCategoryWidget(categoryName: 'Electrician', iconData: Icons.flash_on),
          ServiceCategoryWidget(categoryName: 'Cleaning', iconData: Icons.cleaning_services),
          ServiceCategoryWidget(categoryName: 'Carpentry', iconData: Icons.hardware),
          ServiceCategoryWidget(categoryName: 'Painting', iconData: Icons.format_paint),
          ServiceCategoryWidget(categoryName: 'HVAC', iconData: Icons.ac_unit),
          ServiceCategoryWidget(categoryName: 'Appliance Repair', iconData: Icons.settings),
          ServiceCategoryWidget(categoryName: 'Pest Control', iconData: Icons.bug_report),
          // Add more ServiceCategoryWidget as needed
        ],
      ),
    );
  }
}

class ServiceCategoryWidget extends StatelessWidget {
  final String categoryName;
  final IconData iconData;

  ServiceCategoryWidget({required this.categoryName, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle category selection, e.g., navigate to a specific category screen
        // Replace the following line with your navigation logic
         Navigator.push(context, MaterialPageRoute(builder: (context) => PlumberScreen()));
         Navigator.push(context, MaterialPageRoute(builder: (context) => ElectricianScreen()));
         Navigator.push(context, MaterialPageRoute(builder: (context) => CleaningScreen()));
      },
      child: Card(
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 50.0),
            SizedBox(height: 10.0),
            Text(categoryName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
