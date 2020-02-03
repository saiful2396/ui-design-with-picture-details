import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/lion.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                IconButton(
                  color: Colors.black,
                  icon: Icon(
                    Icons.arrow_back,
                    size: 150.0,
                  ),
                ),

                ClipRect(
                  child: Image.asset(
                    'images/lion.jpg',
                    height: 320.0,
                    width: 320.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'The Lion King',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '7.2/10',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'The Lion King is a 2019 American musical film directed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(10.0),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Container(
                              color: Colors.deepPurple,
                              width: 165.0,
                              height: 48.0,
                              child: ListTile(
                                title: Text(
                                  'Rate Movies',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    color: Colors.deepPurple,
                                    width: 75.0,
                                    height: 50.0,
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    color: Colors.deepPurple,
                                    width: 63.0,
                                    height: 50.0,
                                    child: Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
