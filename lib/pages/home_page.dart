import 'package:flutter/material.dart';
import 'package:main/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: secondColor1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Irvan Sindy',
                        style: fourthTextStyle2.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Welcome back !',
                        style: whiteTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/fia.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                right: 5,
                left: 5,
              ),
              child: TextFormField(
                style: secondTextStyle1.copyWith(
                  fontSize: 14,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(
                      20.0,
                      10.0,
                      20.0,
                      10.0,
                    ),
                    filled: true,
                    fillColor: whiteColor,
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        color: secondColor1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search...'),
              ),
            )
          ],
        ),
      );
    }

    Widget inventoryMaintenance() {
      return Container(
        width: MediaQuery.of(context).size.width / 1.4,
        margin: const EdgeInsets.only(
          top: 15,
          right: 20,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        decoration: BoxDecoration(
          color: secondColor1,
          // border: Border.all(color: fourthColor1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/car.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Servis berkala',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'Sabtu, 29 Oktober 2022',
                    style: fourthTextStyle2.copyWith(
                      // fontSize: 12,
                      fontWeight: light,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Status: Proses',
                    style: fourthTextStyle1.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget inventoryTile() {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 10,
                // right: 5,
                // left: 5,
              ),
              padding: const EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                color: secondColor1,
                // border: Border.all(color: fourthColor1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(
                    //   5,
                    // ),
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/car.png'),
                      ),
                    ),
                    // child: Icon(
                    //   Icons.directions_car,
                    //   size: 60,
                    //   color: fourthColor2,
                    // ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kendaraan',
                          // style: fourthTextStyle1.copyWith(
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          'total asset : 12',
                          style: fourthTextStyle2.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: fourthColor1,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor1,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  header(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Data Maintenance',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Lihat semua',
                            style: fourthTextStyle2.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: fourthColor2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        inventoryMaintenance(),
                        inventoryMaintenance(),
                        inventoryMaintenance(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Data Inventory',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Lihat semua',
                            style: fourthTextStyle2.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: fourthColor2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  inventoryTile(),
                  inventoryTile(),
                  inventoryTile(),
                  inventoryTile(),
                  inventoryTile(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        label: Text(
          'Inventory',
          style: fourthTextStyle2.copyWith(
            fontWeight: semiBold,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: fourthColor2,
        ),
        backgroundColor: secondColor1,
      ),
    );
  }
}
