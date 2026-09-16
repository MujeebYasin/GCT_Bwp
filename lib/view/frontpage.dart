import 'package:flutter/material.dart';
import 'package:gct_bwp/pressed/auto.dart';
import 'package:gct_bwp/pressed/hostel.dart';
import 'package:gct_bwp/pressed/library.dart';
import 'package:gct_bwp/pressed/short.dart';
import 'package:gct_bwp/view/LastAButton.dart';
import 'package:gct_bwp/view/button.dart';
import 'package:solar_icons/solar_icons.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(color: const Color(0xFF1E3A45)),
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
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
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
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.25),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          const Text(
                            'is the leader in Technical Education in Southern Punjab.',
                            style: TextStyle(
                              color: Color(0xFFDCC9AE),
                              fontSize: 13,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Short(),
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icons.menu_book,
                        name: 'Short courses',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Lab(),
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icons.library_books_outlined,
                        name: 'Library',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Hostel(),
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icons.bed_rounded,
                        name: 'Hostel Facilities',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Departments',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Auto(),
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icons.settings,
                        name: 'Auto and Farm\n  Department',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: SolarIconsBold.buildings,
                        name: '     Civil\nDepartment',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: Icons.computer,
                        name: 'Computer Information Technology\n                     Department',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: SolarIconsBold.lightbulb,
                        name: '  Electrical\nDepartment',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: SolarIconsBold.cpu,
                        name: 'Electonics\nDepartment',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: Icons.build,
                        name: '  Mechanical\nDepartment',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: Icons.cell_tower,
                        name: 'Telecommunication\n      Department',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Button(
                        onPressed: () {},
                        icon: SolarIconsBold.usersGroupTwoRounded,
                        name: '  Related\n  Studies',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Admission',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    const labels = [
                      'Admission System',
                      'Division of Seats',
                      'Division of Seats',
                      'Important Instructions',
                      'Admission Dues',
                      'Administration Staff',
                    ];
                    return LastAButton(name: labels[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Others',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 1,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        itemCount: 7,
                        separatorBuilder: (_, __) => const SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          const labels = [
                            'Hostel',
                            'Library',
                            'Sports',
                            'Intership and Placement cell',
                            'In Campus Facilities',
                            'Procurement Cell',
                            'Propectus',
                          ];
                          return LastAButton(name: labels[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 1,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        itemCount: 4,
                        separatorBuilder: (_, __) => const SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          const labels = [
                            'About Us',
                            'Events',
                            'Gallery',
                            'Contact Us',
                          ];
                          return LastAButton(name: labels[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ), // bottom breathing room
            ],
          ),
        ),
      ),
    );
  }
}
