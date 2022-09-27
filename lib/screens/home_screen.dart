import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: const [
          Icon(Icons.add_box, color: Colors.black),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.favorite, color: Colors.black),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.send, color: Colors.black),
          SizedBox(
            width: 20,
          )
        ],
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontFamily: 'Billabong', fontSize: 32, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10.0),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black26,
                        //       offset: Offset(0, 2),
                        //       blurRadius: 6)
                        // ],
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: ClipOval(
                              child: Image(
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/71889823?v=4"))),
                        ),
                      ),
                    )),
          ),
          Container(
              height: 200,
              width: double.infinity,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    child: ClipOval(child: Image(
                      fit: BoxFit.cover,
                      height:60 ,width: 60,image: NetworkImage("https://avatars.githubusercontent.com/u/71889823?v=4"),)),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
