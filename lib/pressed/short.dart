import 'package:flutter/material.dart';

class Short extends StatefulWidget {
  const Short({super.key});

  @override
  State<Short> createState() => _ShortState();
}

class _ShortState extends State<Short> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(color: Color(0xFF1E3A45)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF2E5266),
                          border: Border.all(
                            color: const Color(0xFFC17A3D),
                            width: 1.5,
                          ),
                        ),
                        child: const Icon(
                          Icons.account_balance,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Govt. College of Technology',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Bahawalpur · Southern Punjab',
                              style: TextStyle(
                                color: Color(0xFFB7C4C9),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Short Courses',
                    style: TextStyle(
                      color: Color(0xFFDCC9AE),
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            // TabBar
            TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: const Color(0xFF1E3A45),
              unselectedLabelColor: Colors.grey,
              indicatorColor: const Color(0xFFC17A3D),
              tabs: const [
                Tab(text: 'Auto & Farm\nDepartment'),
                Tab(text: 'Civil\nDepartment'),
                Tab(text: 'Computer\nInformation\nDepartment'),
                Tab(text: 'Electrical\nDepartment'),
                Tab(text: 'Electronics\nDepartment'),
                Tab(text: 'Mechanical\nDepartment'),
                Tab(text: 'Telecommunication\nDepartment'),
                Tab(text: 'Related\nStudeis'),
              ],
            ),
            // TabBarView
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildCourseTable(
                    title: 'Auto & Farm Short Courses List',
                    courses: ['Auto Electrician', 'Auto Mechanic'],
                  ),
                  _buildCourseTable(
                    title: 'Civil Short Courses List',
                    courses: [
                      'Civil Surveyor',
                      'Quantity Surveyor',
                      'Plumber',
                      'Auto CAD (Civil)',
                    ],
                  ),
                  _buildCourseTable(
                    title: 'Computer Information Technology Short Courses List',
                    courses: [
                      'Computer Applications (CCA)',
                      'Computer Hardware Technician',
                      'Computer Networks Technician',
                      'Microsoft Office Specialist (MIS)',
                      'CISCO Networks (CCNA)',
                      'Web Designing',
                    ],
                  ),
                  _buildCourseTable(
                    title: 'Electrical Short Courses List',
                    courses: [
                      'General Electrician',
                      'Industrial Electrician',
                      'Solar Technician',
                    ],
                  ),
                  _buildCourseTable(
                    title: 'Electronics Short Courses List',
                    courses: ['Home Appliances Repairing'],
                  ),
                  _buildCourseTable(
                    title: 'Mechanical Short Courses List',
                    courses: [
                      'Welder',
                      'HVACR Technician',
                      'CNC Operator',
                      'Machinist',
                      'Auto CAD (Mechanical)',
                    ],
                  ),
                  _buildCourseTable(
                    title: 'Telecommunication Short Courses List',
                    courses: ['Mobile Repairing'],
                  ),
                  _buildCourseTable(
                    title: 'Related Studies Short Courses List',
                    courses: ['English Language', 'Chinese Language'],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------- Table-style tab content ----------

  Widget _buildCourseTable({
    required String title,
    required List<String> courses,
  }) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Table(
            border: TableBorder(
              horizontalInside: BorderSide(color: Colors.grey.shade300),
            ),
            columnWidths: const {0: FixedColumnWidth(80), 1: FlexColumnWidth()},
            children: [
              TableRow(
                children: [_tableHeaderCell('Sr. #'), _tableHeaderCell('Name')],
              ),
              for (var i = 0; i < courses.length; i++)
                TableRow(
                  children: [_tableCell('${i + 1}'), _tableCell(courses[i])],
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }

  Widget _tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: const TextStyle(fontSize: 14)),
    );
  }
}
