import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookDetailsPage extends StatefulWidget {
  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  String _name = '';
  String _subject = '';
  String _category = '';
  int _marks = 0;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _marksController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _subjectController.dispose();
    _marksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter name',
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Name is required';
                  }
                  RegExp regex = RegExp(r'^[a-zA-Z ]+$');
                  if (!regex.hasMatch(value!)) {
                    return 'Please enter a valid name (only alphabetic characters)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Subject:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  hintText: 'Enter subject',
                ),
                onChanged: (value) {
                  setState(() {
                    _subject = value;
                  });
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter subject';
                  }
                  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    return 'Subject can only contain alphabets and spaces';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Category:',
                style: TextStyle(fontSize: 18.0),
              ),
              Row(
                children: <Widget>[
                  Radio<String>(
                    value: 'TW',
                    groupValue: _category,
                    onChanged: (value) {
                      setState(() {
                        _category = value!;
                      });
                    },
                  ),
                  Text('TW'),
                  Radio<String>(
                    value: 'IA',
                    groupValue: _category,
                    onChanged: (value) {
                      setState(() {
                        _category = value!;
                      });
                    },
                  ),
                  Text('IA'),
                  Radio<String>(
                    value: 'OR',
                    groupValue: _category,
                    onChanged: (value) {
                      setState(() {
                        _category = value!;
                      });
                    },
                  ),
                  Text('OR'),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Marks:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _marksController,
                decoration: InputDecoration(
                  hintText: 'Enter marks',
                ),
                onChanged: (value) {
                  setState(() {
                    _marks = int.tryParse(value) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter marks';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with submission
                    print('Name: $_name');
                    print('Subject: $_subject');
                    print('Category: $_category');
                    print('Marks: $_marks');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
