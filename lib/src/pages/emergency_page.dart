import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:header_style/src/widgets/boton_gorde.dart';
import 'package:header_style/src/widgets/headers.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: BotonGordo(),
    ));
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      subtitulo: "Haz Solicitado",
      titulo: "Asistencia Médica",
      color1: Color(0xff526bf6),
      color2: Color(0xff67ACF2),
    );
  }
}
