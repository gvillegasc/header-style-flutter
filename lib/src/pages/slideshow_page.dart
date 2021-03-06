import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:header_style/src/widgets/slideshow.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(child: MiSlideshow()),
        Expanded(child: MiSlideshow())
      ],
    ));
  }
}

class MiSlideshow extends StatelessWidget {
  const MiSlideshow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      bulletPrimario: 15,
      bulletSecundario: 12,
      colorPrimario: Color(0xffFF5A7E),
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg')
      ],
    );
  }
}
