import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.green,size: 30),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            }, icon: Icon(Icons.shopping_cart,color: Colors.green,))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white70),
                  currentAccountPicture: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
                  ),
                accountName: Text('Rohanur rahman',style: TextStyle(color: Colors.black),),
                accountEmail: Text('Rohanurahmanontu@gmail.com',style: TextStyle(color: Colors.black)),
              ),),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                leading: Icon(Icons.category),title: Text('Top category'),),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                leading: Icon(Icons.dashboard_customize),title: Text('Seasonal'),),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                leading: Icon(Icons.category),title: Text('Foregien'),),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                leading: Icon(Icons.category),title: Text('Others'),),

            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            clipBehavior: Clip.none,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Top Items',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Top',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Seasonal',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Foregien',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Dry Fruit',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Fiver',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Nuts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Juice',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                        VerticalDivider(),
                        TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},
                            child: Text(
                              'Frozen',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail()));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.4,
                                    width:
                                    MediaQuery.of(context).size.width / 2.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18))),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 23),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/349448552_655349043273957_2191990270033607482_n.png?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGfpfiUyCntGPBgi8F0fZn_0d6bMw4lgsvR3pszDiWCy_ubzQmP5m7of89Uk2OSifRX0kZdB0uFId6592vvc8l1&_nc_ohc=iQCQDVoHxIsAX9ULd-R&_nc_ht=scontent.fdac135-1.fna&oh=03_AdSDojS9oSqgI64oHSz1PtiGbGZOtXQKS82J8fEGZ_sMoA&oe=64A8605D'),
                                              height: 120,
                                              width: 120,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            'Mango',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -25,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Adjust the radius value as needed
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 30,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(padding: EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Now, it is time to indulge in the gastronomic marvel that is the Exquisite Golden Gem Mango. With a gentle slice, the knife glides effortlessly through its tender flesh, revealing a luscious golden core that beckons your taste buds. Each bite unleashes a burst of sweetness, a harmonious fusion of honeyed nectar, citrusy undertones, and a subtle hint of tropical paradise.The Exquisite Golden Gem Mangos texturea masterpiece itself. Its velvety smoothness melts upon contact your palate, leaving a delectable, lingering richness. Each bite  an orchestra of flavors a delicate balance of sweetness and acidity, culminating a sublime tropical symphony that dances on your taste buds',style: TextStyle(fontSize: 18),),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                )
              ],
            ) ,
          ),
        )


      ),
    );
  }
}
