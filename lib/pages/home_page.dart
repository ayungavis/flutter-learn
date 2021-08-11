import 'package:flutter/material.dart';
import 'package:learn_from_bwa/models/city.dart';
import 'package:learn_from_bwa/models/space.dart';
import 'package:learn_from_bwa/models/tips.dart';
import 'package:learn_from_bwa/theme.dart';
import 'package:learn_from_bwa/widgets/bottom_navbar_item.dart';
import 'package:learn_from_bwa/widgets/city_card.dart';
import 'package:learn_from_bwa/widgets/space_card.dart';
import 'package:learn_from_bwa/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge,),
            // NOTE: TITLE HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now', 
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
            ),
            // NOTE: POPULAR CITIES
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city_1.png',
                    )
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city_2.png',
                      isFavorite: true
                    )
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city_3.png',
                    )
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            // NOTE: RECOMMENDED SPACE
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space_1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4
                    )
                  ),
                  SizedBox(height: 30,),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/space_2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Bogor',
                      rating: 5
                    )
                  ),
                  SizedBox(height: 30,),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Darrling How',
                      imageUrl: 'assets/images/space_3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 3
                    )
                  ),
                ],
              ),
            ),
            // NOTE: TIPS & GUIDANCE
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
            ),
            SizedBox(
              height: 16
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      name: 'City Guidelines',
                      imageUrl: 'assets/images/icon_1.png',
                      updatedAt: '20 Apr'
                    )
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    Tips(
                      id: 2,
                      name: 'Jakarta Fairship',
                      imageUrl: 'assets/images/icon_2.png',
                      updatedAt: '11 Dec'
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 50 + (2 * edge),),
          ],
        )
      ),

      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_love_solid.png',
              isActive: false,
            )
          ],
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
