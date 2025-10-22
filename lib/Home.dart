import 'package:flutter/material.dart';
import 'pages/tratamentosPage.dart';
import 'widgets/widgets.dart';

const Color orangeColor = Color(0xfff35f14);

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
                ServiceBox(
                  title: 'TRATAMENTOS',
                  imagePath: 'assets/images/6.png',
                  onTap: () => _onItemTapped(1),
                ),
                ServiceBox(
                  title: 'AGENDAMENTOS',
                  imagePath: 'assets/images/7.png',
                  onTap: () => _onItemTapped(2),
                ),
                ServiceBox(
                  title: 'FIDELIDADE',
                  imagePath: 'assets/images/3.png',
                  onTap: () => _onItemTapped(3),
                ),
                ServiceBox(
                  title: 'DICAS DE BELEZA',
                  imagePath: 'assets/images/1.png',
                  onTap: () => _onItemTapped(4),
                ),
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
      const TratamentosPage(),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: orangeColor),
            onPressed: () {},
          ),
        ],
      ),
      body: pages[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: orangeColor,
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