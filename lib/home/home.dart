import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../widgets/service_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> servicos = [
      'Consulta Nutricional',
      'Plano Alimentar Personalizado',
      'Acompanhamento Semanal',
      'Bioimpedância',
      'Receitas Fit',
    ];

    final List<String> icones = [
      '🥗',
      '🍎',
      '📅',
      '📊',
      '🥑',
    ];

    return Scaffold(
      backgroundColor: AppStyles.branco,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  // LOGO
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppStyles.verdePrincipal,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Text(
                            '🌿',
                            style: TextStyle(fontSize: 36),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'NUTRIFIT',
                          style: AppStyles.titulo,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Saúde que transforma',
                          style: AppStyles.subtitulo,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // FOTO DO PRATO
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            'assets/images/prato_fit.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        left: 15,
                        right: 15,
                        bottom: 15,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Alimente seu corpo, cuide da sua saúde.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppStyles.verdeEscuro,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // TÍTULO DOS SERVIÇOS
                  const Text(
                    'Nossos serviços',
                    style: AppStyles.tituloServicos,
                  ),

                  const SizedBox(height: 12),

                  // LISTA DE SERVIÇOS
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: servicos.length,
                    itemBuilder: (context, index) {
                      return ServiceItem(
                        titulo: servicos[index],
                        icone: icones[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}