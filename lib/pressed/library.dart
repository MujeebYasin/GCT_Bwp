import 'package:flutter/material.dart';

class Lab extends StatefulWidget {
  const Lab({super.key});

  @override
  State<Lab> createState() => _LabState();
}

class _LabState extends State<Lab> {
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
                      'Library',
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
                      'College Library',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/library.jpeg',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Fully air conditioned library of G.C.T. Bhawalpur plays a vital role in providing upto-date information and help to stay abreast of ever changing times. This library was established in 1962. The library has the capacity to house nearly 100 readers at a time. It holds an extensive collection of over 17,000 books. It remains opened six days a week through out the year from 8:00 am to 8:00 pm. Computers are availabe with internet connection. The whole record of the library is computerized. Numerous up-to-date journals and publications cater to almost every need of teachers and taught.',
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Library Rules',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Following rules of library are compulsary for all the students to obey,',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _RuleItem('A student must have college Library card.'),
                    _RuleItem(
                      'Library card is non-transferable. In case of any damage of card, student may get a new by paying Rs. 5/-. If card is lost, he can get a new one by payment of Rs. 25/-.',
                    ),
                    _RuleItem(
                      'The student has to pay 10% more cost and original amount of book if issued book is torn, over marked or any other kind of damage.',
                    ),
                    _RuleItem(
                      'Books are issued only for 14 days. In case of non-return of book within due time, six rupees per day will be fined.',
                    ),
                    _RuleItem('Only two books will be issued at a time.'),
                    _RuleItem(
                      'First come first get the book in case of shortage of books.',
                    ),
                    _RuleItem(
                      'Reference books will not be issued but can be study in the library.',
                    ),
                    _RuleItem('Re-issuance of the same book is allowed.'),
                    _RuleItem(
                      'If a book is lost, buy new book and return to library with 10% fine. If book is not available in market, student will have to pay double price of the book lost.',
                    ),
                    _RuleItem(
                      'Rental book is issued for the session. If book is not returned at the end of the year, one rupee fine will be imposed every day.',
                    ),
                    _RuleItem(
                      'Students of third year will return the books before 1st annual examination of PBTE.',
                    ),
                    _RuleItem(
                      'The student whose issued book is lost, will not be allowed to get any other book unless he pays fine or return the book.',
                    ),
                    _RuleItem(
                      'After issuance of book, student should check the book thoroughly, otherwise he will be responsible in case of any damage.',
                    ),
                    _RuleItem(
                      'Study place is available for students within the library, where they can study books, journals, newspapers etc. In case of loss of any kind, student will be held responsible for.',
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
                        'assets/Irshad.jpeg',
                        height: 150,
                        width: 150,
                      ),
                      Column(
                        children: [
                          Text(
                            'Irshad Hussain Chugtai\n Librarian',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Abdul Rasheed.jpeg',
                        height: 150,
                        width: 150,
                      ),
                      Column(
                        children: [
                          Text(
                            'Abdul Rasheed\n Librarian',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Mazhar.jpeg',
                        height: 150,
                        width: 150,
                      ),
                      Column(
                        children: [
                          Text(
                            'Mazhar\n Librarian',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
