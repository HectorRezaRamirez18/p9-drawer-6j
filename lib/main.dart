import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerReza());

class MiDrawerReza extends StatelessWidget {
  const MiDrawerReza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Reza'),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.accessibility_new_outlined,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: const Color(0xffffffff),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("AppMaking.co"),
                accountEmail: Text("sundar@appmaking.co"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/HectorRezaRamirez18/Practica1_6J_IOS/main/logo2.avif"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/HectorRezaRamirez18/Practica1_6J_IOS/main/fondooo.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/HectorRezaRamirez18/Practica1_6J_IOS/main/logiyo.webp"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/HectorRezaRamirez18/Practica1_6J_IOS/main/logiyo2.avif"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.account_box_sharp, color: Colors.black),
                title: Text("Cliente"),
                onTap: () {},
              ),
              const ListTile(
                leading: Icon(Icons.add_box, color: Colors.black),
                title: Text(
                  'Inventario',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.add_ic_call_sharp, color: Colors.black),
                title: Text(
                  'Pedidos',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.air_sharp, color: Colors.black),
                title: Text(
                  'Provedor',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.account_tree_rounded, color: Colors.black),
                title: Text(
                  'Trabajadores',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
