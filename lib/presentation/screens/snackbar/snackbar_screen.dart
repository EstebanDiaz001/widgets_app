import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'Snackbar_Screen';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    const snackbar = SnackBar(content: Text('Snackbar'));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are u sure?'),
        content: const Text(
            'amet magna magna dolor pariatur ipsum laborum aute nostrud sed consequat reprehenderit fugiat nostrud ut magna commodo laboris incididunt. cupidatat qui proident cillum amet ut ad consectetur lorem elit officia proident adipiscing aliquip magna exercitation reprehenderit. ullamco elit nostrud ut ea aliquip reprehenderit mollit consequat officia sed nisi in culpa laboris amet do. mollit aliqua ad sit aliqua irure sed in ullamco incididunt quis aliqua proident commodo aliqua aute reprehenderit sit nostrud. ullamco Duis nulla pariatur laboris consequat cupidatat dolore ea ut mollit aute consectetur amet anim velit esse mollit. tempor deserunt cillum esse commodo enim officia ad irure aute et commodo incididunt amet officia exercitation. sit consectetur elit eu deserunt Duis officia esse eiusmod nulla id quis et ex mollit nisi mollit.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogo de pantall')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
