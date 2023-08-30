import 'package:flutter/material.dart';
import 'package:product_management_mobile_application/admin/product/screen/product_screen.dart';
import 'package:product_management_mobile_application/auth/models/login_response.dart';

class HomeScreen extends StatefulWidget {
  LoginResponse? loginResponse;
  HomeScreen({super.key, this.loginResponse});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get storage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 250,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(),
                  ),
                );
              },
              leading: Icon(Icons.list_alt_outlined),
              title: Text("List Product"),
              trailing: Icon(Icons.navigate_next_rounded),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "HomeScreen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("${widget.loginResponse!.username!.toUpperCase()}"),
      ),
    );
  }
}
