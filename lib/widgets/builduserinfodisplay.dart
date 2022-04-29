import 'package:flutter/material.dart';

Widget buildUserInfoDisplay(String getValue, String title) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          width: 350,
          height: 40,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    getValue,
                    style: const TextStyle(
                        fontSize: 16, height: 1.4, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
