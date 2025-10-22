import 'package:flutter/material.dart';

const Color orangeColor = Color(0xfff35f14);
const Color orangeColor3 = Color(0xfff0844c);
const Color orangeColor2 = Color(0xffe58251);
const Color orangeColor4 = Color(0xffd0957a);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    // Página inicial
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.home_work_outlined,
            size: 100,
            color: Color(0xFFC23494),
          ),
          SizedBox(height: 20),
          Text(
            'Bem-vindo(a) à Tela Inicial!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: orangeColor),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
            const Text(
              'Beauty Clinic',
              style: TextStyle(color: orangeColor),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: orangeColor2,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.spa, color: orangeColor),
              title: const Text('Tratamento'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month, color: orangeColor),
              title: const Text('Agendamento'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.stars, color: orangeColor),
              title: const Text('Sistema de Fidelidade'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.storefront, color: orangeColor),
              title: const Text('Quem somos'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}