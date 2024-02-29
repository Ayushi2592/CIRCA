import 'package:flutter/material.dart';

class ElectricianScreen extends StatelessWidget {
  static const String id = 'electrician_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electrician Services'),
      ),
      body: ListView(
        children: [
          ServiceItem(
            serviceName: 'Electrical Wiring Repair',
            serviceDescription: 'Repair faulty electrical wiring.',
            servicePrice: '\$50 - \$100',
          ),
          ServiceItem(
            serviceName: 'Light Fixture Installation/Repair',
            serviceDescription: 'Install or repair light fixtures.',
            servicePrice: '\$30 - \$80',
          ),
          ServiceItem(
            serviceName: 'Fuse Box Installation/Repair',
            serviceDescription: 'Install or repair fuse boxes.',
            servicePrice: '\$100 - \$200',
          ),
          ServiceItem(
            serviceName: 'Ceiling Fan Installation/Repair',
            serviceDescription: 'Install or repair ceiling fans.',
            servicePrice: '\$80 - \$150',
          ),
          // Add more ServiceItem widgets as needed
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String serviceName;
  final String serviceDescription;
  final String servicePrice;

  ServiceItem({
    required this.serviceName,
    required this.serviceDescription,
    required this.servicePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              serviceName,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              serviceDescription,
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 5.0),
            Text(
              'Price Range: $servicePrice',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Add logic to book this service
                // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => BookServicePage(serviceName)));
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
