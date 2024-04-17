import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  String? selectedValue1;
  String? selectedValue2;
  String? selectedValue3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const SizedBox(
                  child: Text(
                    'Create a Handy Post',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Montserrat-SemiBold',
                      color: Color(0xFF4180A3),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue1,
                    items: <String>[
                      'Plumbing',
                      'Electrical Services',
                      'Carpentry',
                      'Painting',
                      'Appliance Repair',
                      'Roofing',
                      'Landscaping',
                      'HVAC',
                      'Flooring',
                      'General'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                            child: Text(value, textAlign: TextAlign.center)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue1 = newValue;
                      });
                    },
                    hint: const Text('Job Listing'),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue2,
                    items: <String>[
                      'Plumbing Job',
                      'Electrical Work',
                      'Carpentry Projects',
                      'Painting Gigs',
                      'Appliance Repair Jobs',
                      'Roofing Projects',
                      'Landscaping Opportunities',
                      'HVAC Jobs',
                      'Flooring Jobs',
                      'General Hnadyman Work'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                            child: Text(value, textAlign: TextAlign.center)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue2 = newValue;
                      });
                    },
                    hint: const Text('Job Searching'),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue3,
                    items: <String>[
                      'Seeking Mentorship and Guidance',
                      'Pricing and Quoting Guidelines',
                      'Networking and Building'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                            child: Text(value, textAlign: TextAlign.center)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue3 = newValue;
                      });
                    },
                    hint: const Text('Job Advice'),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: null, // Allow multiple lines
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Enter Description',
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set border radius
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4180A3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Post',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Montserrat')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
