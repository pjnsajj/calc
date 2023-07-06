import 'package:ayu_client/product_characteristics/product_characteristics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ListTile(
            title: Text(productNameValue),
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(productNameValue),
                actions: <Widget>[
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(right: 60)),
                      SizedBox(
                        width: 40,
                        height: 35,
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            isCollapsed: true,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      SizedBox(
                        width: 60,
                        height: 40,
                        child: DropdownButton<String>(
                          value: dropdownQuantity,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownQuantity = value!;
                            });
                          },
                          items: quantity
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
