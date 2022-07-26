import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamanda_admin/src/theme/colors.dart';

import 'components/quotes_card.dart';

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        body: Stack(alignment: AlignmentDirectional.topCenter, children: [
      backgraund(),
      optionsQuotes(context),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          height: mediaQueryData.size.height * 0.2,
          width: mediaQueryData.size.width * 0.55,
          child: SvgPicture.asset(
            'assets/images/Logo_COLOR.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]));
  }

  Widget optionsQuotes(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          child: Row(
            children: [
              QuotesCard(
                itemBgColor: ColorsApp.primaryColorBlue,
                itemImg: 'assets/icons/041-grooming.svg',
                itemTextColor: Colors.white,
                itemTitle: 'Estetica',
                onPress: () {
                  Navigator.of(context).pushNamed('esthetic');
                },
              ),
              SizedBox(
                width: 10,
              ),
              QuotesCard(
                itemBgColor: ColorsApp.primaryColorOrange,
                itemImg: 'assets/icons/012-kennel.svg',
                itemTextColor: Colors.white,
                itemTitle: 'Hotel',
                onPress: () {
                  Navigator.of(context).pushNamed('hotel');
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Row(
            children: [
              QuotesCard(
                itemBgColor: ColorsApp.primaryColorTurquoise,
                itemImg: 'assets/icons/015-clinic.svg',
                itemTextColor: Colors.white,
                itemTitle: 'Veterinaria',
                onPress: () {
                  Navigator.of(context).pushNamed('veterinary');
                },
              ),
              SizedBox(
                width: 10,
              ),
              QuotesCard(
                itemBgColor: ColorsApp.primaryColorPink,
                itemImg: 'assets/icons/020-pet bed.svg',
                itemTextColor: Colors.white,
                itemTitle: 'Guardería',
                onPress: () {
                  Navigator.of(context).pushNamed('daycare');
                },
              )
            ],
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget backgraund() {
    return Stack(
      children: [
        Positioned(
          top: 150,
          left: -130,
          child: Container(
              height: 320,
              width: 320,
              child: SvgPicture.asset('assets/icons/circularLightBlue.svg')),
        ),
        Positioned(
          top: 20,
          right: -130,
          child: Container(
              height: 320,
              width: 320,
              child: SvgPicture.asset('assets/icons/circularLightOrange.svg')),
        ),
      ],
    );
  }
}
