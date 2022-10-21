import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Daniel',
      'last_name': 'García',
      'email': 'mailkaze@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: Text('Inputs y Forms')),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInput(
                  labelText: 'Nombre',
                  // helperText: 'escribe coño!',
                  hintText: 'Nombre del usuario',
                  // suffixIcon: Icons.dangerous_outlined,
                  formValues: formValues,
                  formPropery: 'first_name',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInput(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  formValues: formValues,
                  formPropery: 'last_name',
                ),
                const SizedBox(height: 30),
                CustomInput(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formValues: formValues,
                  formPropery: 'email',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInput(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  keyboardType: TextInputType.visiblePassword,
                  formValues: formValues,
                  formPropery: 'password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'User',
                      child: Text('User'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      // recupera el docus al widget actual, quitandoselo
                      // al teclado y haciendo que se oculte
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('FORMULARIO NO VÁLIDO');
                        return;
                      }

                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('Guardar'),
                        )))
              ],
            ),
          )),
    );
  }
}
