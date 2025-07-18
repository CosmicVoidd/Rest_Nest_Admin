import 'package:flutter/material.dart';

class reservations extends StatefulWidget {
  const reservations({super.key});

  @override
  State<reservations> createState() => _reservationsState();
}

class _reservationsState extends State<reservations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      color: Colors.white,
    );
  }
}

class HomePage extends StatelessWidget {
  final _hotelName = "XYZ Hotel";
  static final TextStyle _hotelNameTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle _adminTextStyle = TextStyle(
    fontSize: 20,
    // fontStyle: FontStyle.italic,
  );

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text("Hii Admin", style: _adminTextStyle,),
            Text(_hotelName, style: _hotelNameTextStyle,)
          ],
        ),
      ),
    );
  }
}

class RoomManagment extends StatelessWidget {
  const RoomManagment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class checkInCheckOut extends StatelessWidget {
  const checkInCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BillGeneration extends StatelessWidget {
  const BillGeneration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RoomSummary extends StatelessWidget {
  const RoomSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class topBarDashboard extends StatelessWidget {
  const topBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(14.0),
        child: Row(
          children: [
            MaterialButton(onPressed: () => {}, child: Icon(Icons.logout), splashColor: Colors.red, minWidth: 14,),
            MaterialButton(onPressed: () => {}, child: Icon(Icons.notification_important), minWidth: 14,)
          ],
        ),
      ),
    );
  }
}
