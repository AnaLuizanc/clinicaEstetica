import 'package:flutter/material.dart';

class BeautyTipsPage extends StatelessWidget {
  const BeautyTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xfff35f14);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dicas de Beleza',
          style: TextStyle(color: orangeColor),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCategorySection(
            'Cuidados com a Pele',
            [
              {
                'title': 'Limpeza Diária',
                'description': 'Lave o rosto duas vezes ao dia com água morna e um produto de limpeza adequado para seu tipo de pele.',
                'icon': Icons.face_retouching_natural,
              },
              {
                'title': 'Hidratação',
                'description': 'Aplique hidratante facial todos os dias, preferencialmente com proteção solar FPS 30 ou superior.',
                'icon': Icons.wb_sunny,
              },
              {
                'title': 'Esfoliação',
                'description': 'Faça uma esfoliação suave 1-2 vezes por semana para remover células mortas.',
                'icon': Icons.cyclone,
              },
            ],
          ),
          const SizedBox(height: 24),
          _buildCategorySection(
            'Cuidados com os Cabelos',
            [
              {
                'title': 'Lavagem Adequada',
                'description': 'Use shampoo e condicionador específicos para seu tipo de cabelo. Evite água muito quente.',
                'icon': Icons.wash,
              },
              {
                'title': 'Hidratação Capilar',
                'description': 'Faça máscaras de hidratação semanalmente para manter os fios saudáveis e brilhantes.',
                'icon': Icons.spa,
              },
              {
                'title': 'Proteção Térmica',
                'description': 'Sempre use protetor térmico antes de utilizar secador, chapinha ou babyliss.',
                'icon': Icons.heat_pump,
              },
            ],
          ),
          const SizedBox(height: 24),
          _buildCategorySection(
            'Bem-estar e Saúde',
            [
              {
                'title': 'Alimentação Saudável',
                'description': 'Mantenha uma dieta rica em frutas, verduras e água para uma pele mais bonita.',
                'icon': Icons.restaurant,
              },
              {
                'title': 'Exercícios',
                'description': 'Pratique exercícios regularmente para melhorar a circulação e o aspecto da pele.',
                'icon': Icons.fitness_center,
              },
              {
                'title': 'Sono Reparador',
                'description': 'Durma de 7-8 horas por noite para permitir a regeneração natural da pele.',
                'icon': Icons.bedtime,
              },
            ],
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
                Row(
                  children: [
                    Icon(Icons.lightbulb, color: orangeColor),
                    SizedBox(width: 8),
                    Text(
                      'Dica Profissional:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Para melhores resultados, mantenha uma rotina constante de cuidados e consulte regularmente um profissional de estética para avaliação personalizada.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title, List<Map<String, dynamic>> tips) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xfff35f14),
          ),
        ),
        const SizedBox(height: 16),
        ...tips.map((tip) => _buildTipCard(
              tip['title'] as String,
              tip['description'] as String,
              tip['icon'] as IconData,
            )),
      ],
    );
  }

  Widget _buildTipCard(String title, String description, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xfff35f14), size: 24),
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
