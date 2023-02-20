import 'package:flutter/material.dart';
import 'package:phone_call/widgets/card_details_widget.dart';

import 'datas.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.personAndPhoneNumbers,
    required this.time,
  }) : super(key: key);

  final String personAndPhoneNumbers;
  final String time;

  @override
  Widget build(BuildContext context) {
    final double widht = MediaQuery.of(context).size.width;
    final double heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Directory"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: (heigth * 0.01), right: widht * 0.02, left: widht * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: ListView.builder(
                  itemCount: Datas.personAndPhoneNumbers.length,
                  itemBuilder: (BuildContext context, int index) => PersonCall(
                    context: context,
                    dateTime: Datas.time[index],
                    heigth: heigth,
                    widht: widht,
                    name: Datas.personAndPhoneNumbers.keys.elementAt(index),
                    phoneNumber:
                        Datas.personAndPhoneNumbers.values.elementAt(index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget PersonCall(
    {required BuildContext context,
    required String dateTime,
    required double heigth,
    required double widht,
    required String name,
    required String phoneNumber}) {
  return Card(
    color: Colors.white12,
    child: ListTile(
      title: Row(
        children: [
          Text(name + "  " + phoneNumber),
        ],
      ),
      leading: Icon(Icons.phone),
      subtitle: Text("Türkiye"),
      trailing: Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              dateTime,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (builder) => AlertDialog(
                          title: Text("Info"),
                          content: Text("Ayrıntılar"),
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              CardDetailsWidget(
                                                firstName: '',
                                                lastName: '',
                                                phoneNumber: '',
                                              )));
                                },
                                child: Text("düzenle"))
                          ],
                        ));
              },
              child: Icon(
                Icons.info,
                size: 25,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
