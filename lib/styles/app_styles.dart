import 'package:flutter/material.dart';

class AppStyles {
  static const Color verdePrincipal = Color(0xFF2E7D32);
  static const Color verdeClaro = Color(0xFFE8F5E9);
  static const Color verdeEscuro = Color(0xFF1B5E20);
  static const Color branco = Colors.white;
  static const Color cinzaTexto = Color(0xFF555555);

  static const TextStyle titulo = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: verdeEscuro,
  );

  static const TextStyle subtitulo = TextStyle(
    fontSize: 16,
    color: cinzaTexto,
  );

  static const TextStyle tituloServicos = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: verdeEscuro,
  );

  static const TextStyle servico = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: verdeEscuro,
  );
}