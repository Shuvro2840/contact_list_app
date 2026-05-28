import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFF5A7383), // Hex color matching the screenshot's slate grey
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // 1. Name Input Field
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Sabiya',
              ),
            ),
            const SizedBox(height: 10),
            
            // 2. Phone Number Input Field
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '01845-776677',
              ),
            ),
            const SizedBox(height: 12),
            
            // 3. Full-width "Add" Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5A7383), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {}, 
                child: const Text('Add', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            
            // 4. Contact List Display (Scrollable layout container)
            Expanded(
              child: ListView(
                children: [
                  _buildContactCard('Shifat', '01677-777754'),
                  _buildContactCard('Lamiya', '01673-765487'),
                  _buildContactCard('Hasan', '01745-775438'),
                  _buildContactCard('Nakul', '01845-753217'),
                  _buildContactCard('Payel', '01945-876905'),
                  _buildContactCard('Sakshi', '01945-876905'),
                  _buildContactCard('Roni', '01945-876905'),
                  _buildContactCard('Jannat', '01945-873452'),
                  _buildContactCard('Shuvro', '01945-876654'),
                  _buildContactCard('Amena', '01945-876905'),
                  _buildContactCard('Shakil', '01945-876985'),
                  _buildContactCard('Sijuka', '01945-876474'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper utility method to construct uniform list card layouts
  Widget _buildContactCard(String name, String phone) {
    return Card(
      color: const Color(0xFFF4F5F7), // Muted off-white card fill color
      elevation: 0, 
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ListTile(
        leading: const Icon(Icons.person, color: Colors.brown, size: 32),
        title: Text(
          name, 
          style: const TextStyle(
            color: Color(0xFFE55A54), // Reddish text tint style matching sample image
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(phone, style: const TextStyle(color: Colors.grey)),
        trailing: const Icon(Icons.phone, color: Colors.blue),
      ),
    );
  }
}