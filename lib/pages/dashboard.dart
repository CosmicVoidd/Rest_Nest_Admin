import 'package:flutter/material.dart';
import 'dashboardItems.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const RoomManagment(),
    const checkInCheckOut(),
    const BillGeneration(),
    const RoomSummary(),
  ];

  @override
  Widget build(BuildContext context) {

    const TextStyle _navRailLabelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);

    return Scaffold(
      backgroundColor: Colors.teal[100],

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: topBarDashboard(),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(10),),
                    child: NavigationRail(
                      // elevation: 5.0,
                      groupAlignment: 0.0,
                      backgroundColor: Colors.teal,
                      selectedIndex: _selectedIndex,
                      onDestinationSelected: (int index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      labelType: NavigationRailLabelType.all,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home, size: 30,), label: Text('Home', style: _navRailLabelStyle,)),
                        NavigationRailDestination(icon: Icon(Icons.bed, size: 30), label: Text('Room Management', style: _navRailLabelStyle)),
                        NavigationRailDestination(icon: Icon(Icons.shopping_bag, size: 30), label: Text('CheckIn/CheckOut', style: _navRailLabelStyle)),
                        NavigationRailDestination(icon: Icon(Icons.receipt_long, size: 30), label: Text('Bill Generation', style: _navRailLabelStyle)),
                        NavigationRailDestination(icon: Icon(Icons.short_text, size: 30), label: Text('Room Summary', style: _navRailLabelStyle))
                      ],
                    ),
                  ),
                ),
                Expanded(child: _pages[_selectedIndex])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
