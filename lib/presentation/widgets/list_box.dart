import 'package:flutter/material.dart';
import 'package:midterm_project_food/domain/list_model.dart';

class ListBox extends StatelessWidget {
  const ListBox({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
        height: 150,
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/${item.img}",
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      item.descriptions,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                      maxLines: 4,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "ອ່ານເພີ່ມ.....",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
