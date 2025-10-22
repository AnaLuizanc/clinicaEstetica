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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildServiceBox(String title, String imagePath) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 80,
                width: 80,
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: orangeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomePage() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Image.asset(
              'assets/images/abertura.png',
              fit: BoxFit.cover,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 1,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 4.0,
              children: [
                _buildServiceBox('TRATAMENTOS', 'assets/images/6.png'),
                _buildServiceBox('AGENDAMENTOS', 'assets/images/7.png'),
                _buildServiceBox('FIDELIDADE', 'assets/images/3.png'),
                _buildServiceBox('DICAS DE BELEZA', 'assets/images/1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      _buildHomePage(),
      // Other pages can be added here
    ];

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
      body: pages[_selectedIndex],
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
              leading: const Icon(Icons.home, color: orangeColor),
              title: const Text('Início'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.spa, color: orangeColor),
              title: const Text('Tratamento'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month, color: orangeColor),
              title: const Text('Agendamento'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.stars, color: orangeColor),
              title: const Text('Sistema de Fidelidade'),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.star, color: orangeColor),
              title: const Text('Dicas de Beleza'),
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            const Divider(),
            ListTile(
              leading: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                height: IconTheme.of(context).size,
              ),
              title: const Text('Quem somos'),
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}