import 'package:flutter/material.dart';

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({super.key});

  @override
  State<LoyaltyPage> createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static const Color orangeColor = Color(0xfff35f14);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sistema de Fidelidade',
          style: TextStyle(color: orangeColor),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: orangeColor,
          unselectedLabelColor: Colors.grey,
          indicatorColor: orangeColor,
          tabs: const [
            Tab(text: 'Campanha'),
            Tab(text: 'Prêmios'),
            Tab(text: 'Pontuação'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Aba de Campanha
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Como Funciona Nossa Campanha de Fidelidade',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
                  ),
                ),
                const SizedBox(height: 20),
                _buildInfoSection(
                  'Acumule Pontos',
                  'A cada R\$ 100,00 gastos em nossos serviços, você ganha 1 ponto de fidelidade.',
                  Icons.add_circle_outline,
                ),
                const SizedBox(height: 16),
                _buildInfoSection(
                  'Acompanhe seus Pontos',
                  'Visualize seu saldo de pontos e histórico de transações na aba "Pontuação".',
                  Icons.history,
                ),
                const SizedBox(height: 16),
                _buildInfoSection(
                  'Resgate Prêmios',
                  'Use seus pontos para resgatar tratamentos e produtos exclusivos na aba "Prêmios".',
                  Icons.card_giftcard,
                ),
                const SizedBox(height: 16),
                _buildInfoSection(
                  'Validade',
                  'Seus pontos são válidos por 12 meses a partir da data de acúmulo.',
                  Icons.access_time,
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: orangeColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dica:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: orangeColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Quanto mais serviços você realizar, mais rápido acumulará pontos para trocar por prêmios exclusivos!',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Aba de Prêmios (será implementada posteriormente)
          const Center(child: Text('Prêmios em breve')),
          // Aba de Pontuação (será implementada posteriormente)
          const Center(child: Text('Pontuação em breve')),
        ],
      ),
    );
  }

  Widget _buildInfoSection(String title, String description, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: orangeColor, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
