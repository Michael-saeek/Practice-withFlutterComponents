import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      'first_name': 'null',
      'last_name': 'null',
      'e-mail': 'null',
      'password': 'null',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Text input')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomFieldText(
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
                helperText: 'Solo letras',
                keyboard: TextInputType.name,
                formValues: formValue,
                propertyValues: 'first_name',
              ),
              const SizedBox(height: 30),
              CustomFieldText(
                labelText: 'Apellido',
                hintText: 'Apellido del Usuario',
                helperText: 'Solo letras',
                keyboard: TextInputType.name,
                formValues: formValue,
                propertyValues: 'last_name',
              ),
              const SizedBox(height: 30),
              CustomFieldText(
                labelText: 'E-mail',
                hintText: 'Correo electronico',
                keyboard: TextInputType.emailAddress,
                formValues: formValue,
                propertyValues: 'e-mail',
              ),
              const SizedBox(height: 30),
              CustomFieldText(
                labelText: 'Contraseña',
                hintText: 'Password',
                keyboard: TextInputType.text,
                obscure: true,
                formValues: formValue,
                propertyValues: 'password',
              ),
              const SizedBox(height: 40),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'seller', child: Text('Seller')),
                  DropdownMenuItem(value: 'junior', child: Text('Junior')),
                  DropdownMenuItem(value: 'aspirant', child: Text('Aspirant')),
                ],
                onChanged: (value) {
                  /* Este valor no puede ser null porq daria error*/
                  formValue['role'] = value ?? 'admin';
                },
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: Text('Save'),
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }

                  print(formValue);
                  myFormKey.currentState!.reset();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
