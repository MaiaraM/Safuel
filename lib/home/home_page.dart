import 'package:flutter/material.dart';
import 'package:safuel_app/home/widgets/button_widget.dart';
import 'package:safuel_app/home/widgets/input_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safuel"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputWidget(
                label: 'Gasolina',
              ),
              InputWidget(
                label: 'Alcool',
              ),
              ButtonWidget(onTap: () => _calcule(), text: 'Calcular'),
            ],
          ),
        ),
      ),
    );
  }

  _calcule() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));
    }
  }
}
