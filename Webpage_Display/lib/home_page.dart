import 'package:flutter/material.dart';
import 'web_view.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Webpages"),
      ),
      body: Center(
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(

              child: const Text("Open Google ..."),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView(
                      title: "Google_HomePage",
                      selectedUrl: "https://www.google.com/",
                    )
                ));
              },
            ),

          )

      ),
    );
  }
}