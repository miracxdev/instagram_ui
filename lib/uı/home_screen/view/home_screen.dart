import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.favorite_border_outlined, color: Colors.black),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.send_outlined, color: Colors.black),
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
            color: Colors.white,
            width: double.infinity,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
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
              color: Colors.white,
              height: 560,
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        )),
                    leading: const CircleAvatar(
                      child: ClipOval(
                          child: Image(
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                        image: NetworkImage(
                            "https://avatars.githubusercontent.com/u/71889823?v=4"),
                      )),
                    ),
                    title: Text("krvlimrc"),
                    subtitle: Text("Natural History Museum - London"),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
