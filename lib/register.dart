import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with SingleTickerProviderStateMixin {
    late TabController _tabController;

  @override
  void initState() {
     super.initState();
    _tabController = TabController(length: 2, vsync: this);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
        title: Text('Registration'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              // Handle notification action
            },
          ),
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {
              // Handle home action
            },
          ),
          
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              indicatorWeight: 3,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              tabs: [
                Tab(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Patient List')),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Follow-up Visit List')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'From 08/10/2022 to 14/09/2022',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit_outlined, size: 20),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search_outlined, size: 20),
                  onPressed: () {
                    // Handle search action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.filter_list_outlined, size: 20),
                  onPressed: () {
                    // Handle filter action
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                _buildPatientCard(
                  name: 'Mr. Anirudh Ravichander',
                  age: 35,
                  genderIcon: Icons.male,
                  statusIconColor: Colors.red,
                  lastVisit: 'N/A',
                  entryStatus: 'N/A',
                ),
                _buildPatientCard(
                  name: 'Ms. Preethi Karunkumarn',
                  age: 35,
                  genderIcon: Icons.female,
                  statusIconColor: Colors.green,
                  lastVisit: '04/09/2023, 11:00 AM & OP',
                  entryStatus: 'Arrived',
                ),
                _buildPatientCard(
                  name: 'Mrs. Preethi Karunkumarn',
                  age: 35,
                  genderIcon: Icons.female,
                  statusIconColor: Colors.green,
                  lastVisit: '04/09/2023, 11:00 AM & OP',
                  entryStatus: 'Arrived',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Reg. fee: '),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
                SizedBox(width: 5),
                Text('Not paid '),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
                SizedBox(width: 5),
                Text('Paid'),
              ],
            ),
          ),
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Floating button action
        },
        child: const Icon(Icons.person_add_alt_1),
      ),
    );
  }
}

//cards passing names list
Widget _buildPatientCard({
  required String name,
  required int age,
  required IconData genderIcon,
  required Color statusIconColor,
  required String lastVisit,
  required String entryStatus,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Status dot (Red/Green)
              CircleAvatar(
                radius: 5,
                backgroundColor: statusIconColor,
              ),
              const SizedBox(width: 8),
              // Name and Age
              Expanded(
                child: Text(
                  '$name ($age yrs)',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Gender Icon
              Icon(genderIcon, color: Colors.blue),
            ],
          ),
          const SizedBox(height: 8),
          // Last visit info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DRU202309010098 | 799581856',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Last visit: $lastVisit',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'Entry status: $entryStatus',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              // More Options Button
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // More options action
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Appointment time and status (Arrived)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.calendar_today_outlined, size: 12, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                '11:00 AM, 04/09/2023',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Arrived',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

