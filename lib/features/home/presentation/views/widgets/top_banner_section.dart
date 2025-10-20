import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TopBannerSection extends StatelessWidget {
  const TopBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Stack(
          alignment: AlignmentDirectional.bottomStart,
          
          children: <Widget>[
            Image.network(MyAssets.tempeClothsImage1,
            width: double.infinity,
            height: size.height*.25,
            fit: BoxFit.cover,
            ),
    
            Container(
              width: double.infinity,
              height: size.height*.25,
              color: Colors.black26,
            ),  
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24.0),
              child: Text('Cloths Street',style: Styles.textStyle38.copyWith(color: Colors.white),),
            )
          ],
        );
  }
}