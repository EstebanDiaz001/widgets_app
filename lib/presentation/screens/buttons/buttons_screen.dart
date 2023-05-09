import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      // ignore: prefer_const_constructors
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          }),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevate')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevate Disable')),

            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_time_filled),
                label: const Text('Elevated Iconasdas')),

            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_photo_alternate_outlined),
              label: const Text('Filled icon'),
            ),

            OutlinedButton(onPressed: () {}, child: const Text('adasdasdsd')),
            OutlinedButton(
                onPressed: () {}, child: const Icon(Icons.zoom_in_map_sharp)),

            TextButton(onPressed: () {}, child: const Text('data')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.wind_power_rounded),
                label: const Text('Text Button Icon')),

            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.web_asset_outlined,
                  color: colors.primary,
                )),

            // TODO Make a Custom Button
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text('Hola mundo ',style: TextStyle(color: Colors.white),)
            ),
        ),
      ),
    );
  }
}
