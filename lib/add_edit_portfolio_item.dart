import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddEditPortfolioItem extends StatefulWidget {
  final DocumentSnapshot? document;

  AddEditPortfolioItem({this.document});

  @override
  _AddEditPortfolioItemState createState() => _AddEditPortfolioItemState();
}

class _AddEditPortfolioItemState extends State<AddEditPortfolioItem> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  @override
  void initState() {
    super.initState();
    if (widget.document != null) {
      _title = widget.document!['title'];
      _description = widget.document!['description'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.document == null ? 'Add Portfolio Item' : 'Edit Portfolio Item'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _title,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              TextFormField(
                initialValue: _description,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (widget.document == null) {
                      FirebaseFirestore.instance.collection('portfolio').add({
                        'title': _title,
                        'description': _description,
                      });
                    } else {
                      widget.document!.reference.update({
                        'title': _title,
                        'description': _description,
                      });
                    }
                    Navigator.pop(context);
                  }
                },
                child: Text(widget.document == null ? 'Add' : 'Update'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
