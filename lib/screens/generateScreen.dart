import 'package:barcodeflutter/views/drawerApp.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class GenerateScreen extends StatefulWidget {
  GenerateScreen({Key key}) : super(key: key);

  @override
  _GenerateScreenshotsState createState() => _GenerateScreenshotsState();
}

class _GenerateScreenshotsState extends State<GenerateScreen> {
  String dropdownValue = 'Aztec';
  Barcode code = Barcode.aztec();
  TextEditingController txtData;

  @override
  void initState() {
    txtData = TextEditingController(
      text: '101010',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(title: const Text('Generate barcode')),
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              Text(
                "Select type",
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    switch (newValue) {
                      case 'Aztec':
                        code = Barcode.aztec();
                        break;
                      case 'CODABAR':
                        code = Barcode.codabar();
                        break;
                      case 'CODE 128':
                        code = Barcode.code128();
                        break;
                      case 'CODE 39':
                        code = Barcode.code39();
                        break;
                      case 'CODE 93':
                        code = Barcode.code93();
                        break;
                      case 'Data Matrix':
                        code = Barcode.dataMatrix();
                        break;
                      case 'EAN 13':
                        code = Barcode.ean13();
                        break;
                      case 'EAN 2':
                        code = Barcode.ean2();
                        break;
                      case 'EAN 5':
                        code = Barcode.ean5();
                        break;
                      case 'EAN 8':
                        code = Barcode.ean8();
                        break;
                      case 'GS1 128':
                        code = Barcode.gs128();
                        break;
                      case 'ISBN':
                        code = Barcode.isbn();
                        break;
                      case 'ITF':
                        code = Barcode.itf();
                        break;
                      case 'ITF 14':
                        code = Barcode.itf14();
                        break;
                      case 'ITF 16':
                        code = Barcode.itf16();
                        break;
                      case 'PDF417':
                        code = Barcode.pdf417();
                        break;
                      case 'QR-Code':
                        code = Barcode.qrCode();
                        break;
                      case 'RM4SCC':
                        code = Barcode.rm4scc();
                        break;
                      case 'Telepen':
                        code = Barcode.telepen();
                        break;
                      case 'UPC A':
                        code = Barcode.upcA();
                        break;
                      case 'UPC E':
                        code = Barcode.upcE();
                        break;
                      default:
                    }
                  });
                },
                items: <String>[
                  'Aztec',
                  'CODABAR',
                  'CODE 128',
                  'CODE 39',
                  'CODE 93',
                  'Data Matriz',
                  'EAN 13',
                  'EAN 2',
                  'EAN 5',
                  'EAN 8',
                  'GS1 128',
                  'ISBN',
                  'ITF',
                  'ITF 14',
                  'ITF 16',
                  'PDF417',
                  'QR-Code',
                  'RM4SCC',
                  'Telepen',
                  'UPC A',
                  'UPC E'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Data",
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ),
          TextField(
            controller: txtData,
            onChanged: (value) {
              setState(() {});
            },
          ),
          Center(
            child: BarcodeWidget(
              barcode: code, // Barcode type and settings
              data: txtData.text, // Content
              width: 200,
              height: 200,
              errorBuilder: (context, error) => Center(child: Text(error)),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
