import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  @required
  final String texto;
  final Color color1;
  final Color color2;
  @required
  final Function onPress;

  const BotonGordo({
    this.icon = FontAwesomeIcons.circle,
    this.texto,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: <Widget>[
          _BotonGordoBackground(
            color1: this.color1,
            color2: this.color2,
            onPress: this.onPress,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
                width: 40,
              ),
              FaIcon(
                this.icon,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(this.texto,
                    style: TextStyle(color: Colors.white, fontSize: 13)),
              ),
              FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
              SizedBox(
                width: 35,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Function onPress;

  const _BotonGordoBackground({this.color1, this.color2, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(
                FontAwesomeIcons.carCrash,
                size: 120,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(4, 6),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: <Color>[this.color1, this.color2])),
    );
  }
}
