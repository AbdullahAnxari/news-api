import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        /// -- English Language --
        'en_UK': {
          // -- NEWS APP
          'splash_text': 'Top Headlines',
          'appbar_title': 'News',

          // --NOT IN USE
          'welcome_message': 'Welcome to My App!',
          'email_hint': 'Enter email',
          'app_title': 'My App',
          'password_hint': 'Enter password',
          'login_button': 'Login',
        },

        // -- ES Language --
        'es_ES': {
          'app_title': 'Mi Aplicación',
          'welcome_message': '¡Bienvenido a Mi Aplicación!',
          'email_hint': 'Ingrese su correo electrónico',
          'password_hint': 'Ingrese su contraseña',
          'login_button': 'Iniciar sesión',
        },

        // -- Urdu Language --
        'ur_PK': {'email_hint': 'طصھدٹپتب'},
      };
}
