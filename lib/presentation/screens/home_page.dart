import 'package:flutter/material.dart';
import 'package:midterm_project_food/data/list_item.dart';
import 'package:midterm_project_food/presentation/screens/list_detail.dart';
import 'package:midterm_project_food/presentation/widgets/list_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ອາຫານລາວ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListBox(
              item: items[index],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ListDetails(item: items[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
