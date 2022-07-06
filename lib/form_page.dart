import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text(
          'Formulario',
        ),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: textController,
                  validator: (value) {
                   
                    if (value!.trim().isEmpty) {
                      return 'Campo em branco';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context, textController.text);
                  }
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Lista Atualizada'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Salvar',
                ),
              ),
            ],
          )),
    );
  }
}


