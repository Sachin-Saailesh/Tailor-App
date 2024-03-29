import 'package:animatedloginui/models/Measure.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget {
  int index;
  @override
  OrderDetailsPage({Key key, @required this.index}) : super(key: key);
  _OrderDetailsPageState createState() => _OrderDetailsPageState(index);
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  List userDetailsList = [];

  @override
  void initState() {
    super.initState();
    fetchDetailsList();
  }

  fetchDetailsList() async {
    List resultant = await getDetailsList();

    if (resultant == null) {
      print("Unable to retrieve data");
    } else {
      setState(() {
        userDetailsList = resultant;
      });
    }
  }

  int index;

  _OrderDetailsPageState(index);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Tailor App",
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white54,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.white54,
              onPressed: () {
                print(index);
              }),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                      ),
                      Text(
                        'Order Date',
                        style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                      ),
                      Text(
                        'Measurements',
                        style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 270.0,
            ),
            GestureDetector(
                onTap: () {},
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.grey[900]),
                      child: Center(
                        child: Text(
                          "Update Order to almost Ready",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ))),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {},
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(500)),
                      child: Center(
                        child: Text(
                          "Update Order to Completed",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
