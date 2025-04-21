import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/functions/responsive_font_size.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num count = 0;
  increaseCount() {
    count += 0.1;
  }

  decreaseCount() {
    count -= 0.1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
            style:
                TextStyle(fontSize: getResponsiveText(context, fontSize: 16)),
          ),
          Text(
            'You have pushed the button this many times:',
            style: TextStyle(
              fontSize: getResponsiveText(context, fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    increaseCount();
                  },
                );
              },
              child: Text(
                "increase",
                style: TextStyle(fontSize: 30),
              )),
          ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    decreaseCount();
                  },
                );
              },
              child: Text(
                "decrease",
                style: TextStyle(fontSize: 30),
              )),
          Text(count.toString()),
        ],
      ),
    );
  }
}
