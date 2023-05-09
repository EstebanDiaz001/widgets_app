import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const name = 'Progress_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress  Screen View'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            
            SizedBox(height: 30,),
            Text('Circular Progress Indicator'),
            SizedBox(height: 30,),
            CircularProgressIndicator(strokeWidth: 2,),
            SizedBox(height: 30,),
            
            Text('Refresh Progress Indicator'),
            SizedBox(height: 30,),
            RefreshProgressIndicator(strokeWidth: 2),
            SizedBox(height: 30,),
      
            Text('Linear Progress Indicator'),
            SizedBox(height: 30,),
            LinearProgressIndicator(),
            SizedBox(height: 30,),
      
            Text('Custom Progress Indicator'),
            SizedBox(height: 30,),
            _ControllerProgressIndicator(),
            SizedBox(height: 30,),
      
      
      
          ],
        ),
      ),
    );
  }
}


class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value*2)/100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        
        final progressValue = snapshot.data ?? 0;

        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black12, value: progressValue,),
            const SizedBox(width: 20,),
            Expanded(child: LinearProgressIndicator( value: progressValue,)),
    
          ],
        ),
        );


      },
    );
  }
}