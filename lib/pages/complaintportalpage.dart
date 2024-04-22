import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Complaintportal extends StatelessWidget {
  const Complaintportal({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEED4FF),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Complaint Portal",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff37274C),
                  ),
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            buildAccountOption(context, "F I R", "https://posh.delhipolice.gov.in/"),
            SizedBox(height: 10),
            buildContent(context, "NGO", "https://ncwapps.nic.in/onlinecomplaintsv2/"),
            SizedBox(height: 10),
            buildLanguage(context, "Government Portal", "https://ncwapps.nic.in/"),
            SizedBox(height: 10),
            buildOthers(context, "News Channels", "https://dcw.delhi.gov.in/dcw/state-complaints"),
            SizedBox(height: 10),
            buildSocial(context, "Cyber Crime", "www.cybercrime.gov.in"),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildAccountOption(BuildContext context, String title, String url) {
    return ElevatedButton(
      onPressed: () {
        openWebView(context, url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildContent(BuildContext context, String title, String url) {
    return ElevatedButton(
      onPressed: () {
        openWebView(context, url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildSocial(BuildContext context, String title, String url) {
    return ElevatedButton(
      onPressed: () {
        openWebView(context, url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildLanguage(BuildContext context, String title, String url) {
    return ElevatedButton(
      onPressed: () {
        openWebView(context, url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildOthers(BuildContext context, String title, String url) {
    return ElevatedButton(
      onPressed: () {
        openWebView(context, url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  void openWebView(BuildContext context, String url) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => WebViewPage(url: url),
    ));
  }
}

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
