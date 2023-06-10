import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop_flutter/cart.dart';
import 'package:fruit_shop_flutter/home.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Colors.green,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 25,right: 20,bottom: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                  }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                                  IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                                  }, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mango',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.white),),
                                SizedBox(height: 8,),
                                Text('From',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
                                SizedBox(height: 8,),
                                Text('\$10',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                                SizedBox(height: 8,),
                                Text('Sizes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
                                SizedBox(height: 8,),
                                Text('Medium',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                                SizedBox(height: 50,),
                                CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.white,
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,color: Colors.black,),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -120,
                      right: -30,
                        child: Image(image: NetworkImage('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=HNmkZ1G5lOwAX_GEH6m&_nc_ht=scontent.fdac135-1.fna&oh=03_AdTDnq75U_VMPtS_Zl6Vd9lGuFfWWxAG453oq1i_2WxWLg&oe=64AC1C9D',),
                      height: 300,width: 300,)
                    ),
                  ],
                )
              ),
              
              SizedBox(
                height: 200,
              ),
              
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Description',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 8,),
                      Text('Behold the splendor of the premium mango, a fruit that transcends all expectations—the Exquisite Golden Gem Mango. Like a radiant treasure gleaming under the sun, this exceptional specimen of natures finest craftsmanship is sure to captivate your senses and transport you to a world of pure delight',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15,),
                      Text('Detailss',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text('Weight : 1 kg',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
