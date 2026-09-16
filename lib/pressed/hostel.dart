import 'package:flutter/material.dart';

class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      'Hostel Facilities',
                      style: TextStyle(
                        color: Color(0xFFDCC9AE),
                        fontSize: 13,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Rashid Minhas Shaheed Hostel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/Hostel.jpeg',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The hostel of GCT Bahawalpur is named "Rashid Minhas Shaheed Hostel". It has a total capacity of about 160 students. The hostel rooms are spacious and well furnished. All necessary facilities like common room, mess hall, well managed lawns,laundary and cafeteria are available for students. All the students have to observe hostel rules framed by th hostel administration. The hostel administration is dedicated personality who does its best efforts to improve the facilitations for students of the hostel.',
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Hostel Rules',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Boarder students will observe the following rules, otherwise necessary action will be taken against them.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _RuleItem(
                      'Every boarder will take meal in hostel mess, otherwise his seat will be cancelled. In special circumstances Hostel Warden may allow out side mess.',
                    ),
                    _RuleItem(
                      'Hostel warden has discretionary power in terms of allotment of seats.',
                    ),
                    _RuleItem(
                      'All students should stay in their rooms in following timings for study period.',
                    ),
                    _RuleSubItem('Winter Timing: 9:00 pm to 11:00 pm'),
                    _RuleSubItem('Summer Timing: 9:30 pm to 11:30 pm'),
                    _RuleItem(
                      'The students who remain absent in classes, may be expelled from hostel.',
                    ),
                    _RuleItem(
                      'Absent without reason from hostel will be fined at the rate of Rs. 20/- per day.',
                    ),
                    _RuleItem(
                      'Father/Guardian of boarder student can stay in guest room with prior permission of Hostel Warden. Violation may be treated in terms of fine or expulsion from hostel.',
                    ),
                    _RuleItem(
                      "The students of nearby hostel's village or town will not be allowed to stay in hostel.",
                    ),
                    _RuleItem(
                      'Imoral action, drinking and other addictable items are not allowed in the hostel. Accused students will be expelled and will also suffer punishment declared by the college council.',
                    ),
                    _RuleItem(
                      'Electric heater/iron is not allowed, violation may result in fine or expulsion from hostel.',
                    ),
                    _RuleItem(
                      'Principal/hostel administration may check the students at any time for any reason without any prior information..',
                    ),
                    _RuleItem(
                      'Show of weapons/arms in hostel may result in expulsion from hostel.',
                    ),
                    _RuleItem(
                      'Any kind of political or secterial literature and preeching is strictly prohibited',
                    ),
                    _RuleItem(
                      'Any case of violation of rules will be dealt strictly.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/Shoaib.jpeg',
                        height: 150,
                        width: 150,
                      ),
                      Column(
                        children: [
                          Text(
                            'Engr. Shoaib Ahmad Siddique\n Hostel Warden',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _RuleItem extends StatelessWidget {
  final String text;

  const _RuleItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  ', style: TextStyle(fontSize: 14)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}

class _RuleSubItem extends StatelessWidget {
  final String text;

  const _RuleSubItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 8),
      child: Text(text, style: const TextStyle(fontSize: 14, height: 1.4)),
    );
  }
}
