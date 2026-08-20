import 'package:flutter/material.dart';
import '../styles/app_styles.dart';

class ServiceItem extends StatelessWidget {
  final String titulo;
  final String icone;

  const ServiceItem({
    super.key,
    required this.titulo,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppStyles.verdeClaro,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppStyles.branco,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              icone,
              style: const TextStyle(fontSize: 22),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            titulo,
            style: AppStyles.servico,
          ),
        ],
      ),
    );
  }
}