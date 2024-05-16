import 'package:flutter/material.dart';
import 'package:midterm_project_food/domain/list_model.dart';

class ListDetails extends StatelessWidget {
  const ListDetails({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 232, 225, 00),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'ອາຫານແບບພື້ນເມືອງລາວ',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/${item.img}"),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        item.descriptions,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Location : ${item.location}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
