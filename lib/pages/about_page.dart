import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xfff35f14);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sobre Nós',
          style: TextStyle(color: orangeColor),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Nossa História',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: orangeColor,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Fundada em 2020, nossa clínica estética nasceu com o propósito de oferecer tratamentos de excelência, combinando tecnologia avançada com profissionais altamente qualificados. Ao longo dos anos, nos tornamos referência em cuidados estéticos na região.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              _buildSection(
                'Nossa Missão',
                'Proporcionar aos nossos clientes serviços de estética de alta qualidade, contribuindo para seu bem-estar e autoestima, através de tratamentos personalizados e atendimento diferenciado.',
                Icons.stars,
              ),
              _buildSection(
                'Nossos Valores',
                '• Excelência no atendimento\n• Compromisso com resultados\n• Inovação constante\n• Ética profissional\n• Valorização do bem-estar',
                Icons.diamond,
              ),
              _buildSection(
                'Diferenciais',
                '• Equipamentos de última geração\n• Profissionais especializados\n• Ambiente acolhedor\n• Protocolos personalizados\n• Localização privilegiada',
                Icons.workspace_premium,
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: orangeColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horário de Funcionamento',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildInfo(Icons.access_time, 'Segunda a Sexta: 9h às 19h'),
                    _buildInfo(Icons.access_time, 'Sábado: 9h às 16h'),
                    const SizedBox(height: 16),
                    const Text(
                      'Contato',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildInfo(Icons.phone, '(11) 99999-9999'),
                    _buildInfo(Icons.email, 'contato@clinicaestetica.com.br'),
                    _buildInfo(Icons.location_on, 'Rua da Beleza, 123 - Centro'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xfff35f14)),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff35f14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xfff35f14), size: 20),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
