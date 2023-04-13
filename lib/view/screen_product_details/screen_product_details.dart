import 'package:ecommerce_test/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenProductDetails extends StatelessWidget {
  const ScreenProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Images(),
                kHeight20,
                Text(
                  'Pine Kids Full Sleeves Checked Shirt With Chest Print Inner T-shirt - Maroon',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                kHeight10,
                Text('Product ID: 13111184'),
                Divider(color: Colors.black),
                PriceSection(),
                Text(
                    "MRP incl. all taxes, Add'l charges may apply on discounted price"),
                kHeight20,
                ClubPriceCard(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                Text(
                  'Sizes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                kHeight10,
                Sizes(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                BestOffer(),
                kHeight10,
                Offers(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                Text(
                  'FIRSTCRY CLUB BENEFITS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                kHeight10,
                ClubBenefits(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                DeliveryAndCart(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                TopTextSize(),
                kHeight10,
                Fit(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                Text(
                  'PRODUCT DESCRIPTION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                kHeight10,
                Text(
                  'Specifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                kHeight10,
                Specifications(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                BrandInformation(),
                kHeight10,
                Divider(color: Colors.black),
                kHeight10,
                Text(
                  'YOU MAY ALSO LIKE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                kHeight10,
                RecommendecProducts(),
                kHeight10,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecommendecProducts extends StatelessWidget {
  const RecommendecProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/shirt_${index + 1}.png',
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        const Text('Pine Kids Biowashed ..'),
                        kHeight5,
                        Row(
                          children: [
                            const Text('\u{20B9} 235'),
                            kWidth10,
                            Text(
                              '(41% off)',
                              style: TextStyle(color: Colors.orange[700]),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: 4),
    );
  }
}

class BrandInformation extends StatelessWidget {
  const BrandInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BRAND INFORMATION',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        kHeight10,
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            image: const DecorationImage(
              image: AssetImage(
                'assets/brand_image.png',
              ),
            ),
          ),
        ),
        kHeight20,
        const Text(
          "Making buying decisions as a parent can be tough! You've got to think of functionality, durability, safety, value for money, and most of all, you've got to find products that match the fancies of your little human! But, what if you found a brand that knows all of your needs, all too well? Look no further! With the perfect blend of quality, trendiness, comfort, functionality and safety Pine",
        ),
        kHeight10,
        TextButton(
          onPressed: () {},
          child: const Text('Read More'),
        )
      ],
    );
  }
}

class Specifications extends StatelessWidget {
  const Specifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Brand - Pine Kids\nType - Tee\nFabric - Cotton/Knit\nSleeves - Half Sleeves\nNeck - Round Neck\nHighlight - Biowash\nClosure - Rib at Neck\nStyle - Pullover\nPrint -  Break Dance\nOccasion - Casual Wear\nFit - Regular Fit',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.grey[600],
        height: 1.5,
      ),
    );
  }
}

class Fit extends StatelessWidget {
  const Fit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Age',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
            Text(
              '6 - 7 Y',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ],
        ),
        kHeight5,
        const Divider(color: Colors.black),
        kHeight5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shoulder',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
            Text(
              '27 cm',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ],
        ),
        kHeight5,
        const Divider(color: Colors.black),
        kHeight5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Length for Top',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
            Text(
              '45 cm',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ],
        ),
        kHeight5,
        const Divider(color: Colors.black),
        kHeight5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sleeve',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
            Text(
              '14cm',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ],
        ),
        kHeight5,
        const Divider(color: Colors.black),
        kHeight5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Chest',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
            Text(
              '34 cm',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class TopTextSize extends StatelessWidget {
  const TopTextSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'SIZE & FIT INFORMATION',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        kWidth10,
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
          ),
          child: const Center(
            child: Text(
              'Inches',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        kWidth10,
        Container(
          width: 50,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: const Center(
            child: Text(
              'CM',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DeliveryAndCart extends StatelessWidget {
  const DeliveryAndCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CheckDelivery(), kHeight10, CartAndShortList()],
    );
  }
}

class CartAndShortList extends StatelessWidget {
  const CartAndShortList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width - 42) / 2,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[700],
              ),
              onPressed: () {},
              child: const Text(
                'ADD TO CART',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
        ),
        kWidth10,
        SizedBox(
          width: (MediaQuery.of(context).size.width - 42) / 2,
          height: 50,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, side: const BorderSide()),
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              ),
              label: const Text(
                'SHORTLIST',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )),
        ),
      ],
    );
  }
}

class CheckDelivery extends StatelessWidget {
  const CheckDelivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kWidth10,
            Icon(
              Icons.local_shipping,
              color: Colors.grey[500],
            ),
            kWidth10,
            const Text(
              'CHECK DELIVERY DETAILS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        kHeight10,
        Stack(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: "Enter Pincode",
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Text(
                'CHECK',
                style: TextStyle(
                  color: Colors.orange[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class ClubBenefits extends StatelessWidget {
  const ClubBenefits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/club_benefits_1.jpg',
      'assets/club_benefits_2.jpg',
      'assets/club_benefits_3.jpg',
      'assets/club_benefits_4.jpg',
      'assets/club_benefits_5.jpg',
    ];
    List<String> titles = [
      'Club Cash Benefits Upto \u{20B9}2 ',
      'Exclusive Offers & Discounts',
      'Lower Prices on products',
      'Lower Shipping Barrier',
      'Free baby gear assembly',
    ];
    return LimitedBox(
      maxHeight: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Image(
              image: AssetImage(images[index]),
            ),
            Center(
                child: SizedBox(
                    width: 100,
                    child: Text(
                      titles[index],
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: 5,
      ),
    );
  }
}

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width - 32,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 241, 217, 0),
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(16),
              color: Colors.yellow.withOpacity(0.4)),
          child: Row(
            children: const [
              SideText(),
              Expanded(
                child: OfferDetails(),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 2,
      ),
    );
  }
}

class OfferDetails extends StatelessWidget {
  const OfferDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 160,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: const Center(
            child: Text(
              'Use Code: SMR299',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/club_logo.jpg'),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'Flat 65% OFF* on Select Fashion Range',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Divider(),
        const Text(
          'Flat 65% OFF* on Select Fashion Range',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class SideText extends StatelessWidget {
  const SideText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 230, 0),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        ),
        child: const RotatedBox(
          quarterTurns: 3,
          child: Center(
            child: Text(
              'OFFERS',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }
}

class BestOffer extends StatelessWidget {
  const BestOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.sell_outlined,
          color: Colors.orange,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "BEST OFFERS",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Sizes extends StatelessWidget {
  const Sizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> sizes = [
      '4 - 5 Y',
      '5 - 6 Y',
      '6 - 7 Y',
      '7 - 8 Y',
      '8 - 9 Y',
      '9 - 10 Y',
      '10 - 11 Y',
      '11 - 12 Y',
      '12 - 14 Y',
    ];
    return LimitedBox(
      maxHeight: 45,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                    child: Text(
                  sizes[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: 9),
    );
  }
}

class PriceSection extends StatelessWidget {
  const PriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          ' 923.00',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 13,
        ),
        Text(
          ' \u{20B9}1199.00 -',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        SizedBox(
          width: 13,
        ),
        Text(
          '(23% OFF)',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ],
    );
  }
}

class ClubPriceCard extends StatelessWidget {
  const ClubPriceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 10,
              ),
              const Image(
                image: AssetImage(
                  'assets/club_logo.jpg',
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '    Save \u{20B9}23.98 with Club',
                    style: TextStyle(
                        color: Color.fromARGB(255, 105, 105, 105),
                        fontSize: 18),
                  ),
                  Text(
                    'Club Price : \u{20B9}899.25',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "Join Now",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.orange,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.yellow.withOpacity(0.7),
            border: Border.all(),
          ),
          child: const Center(
              child: Text('Buy & Earn Club Cash upto \u{20B9} 20')),
        ),
      ],
    );
  }
}

class Images extends StatefulWidget {
  const Images({
    super.key,
  });

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int image = 0;
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/shirt_1.png',
      'assets/shirt_2.png',
      'assets/shirt_3.png',
      'assets/shirt_4.png',
    ];
    return Column(
      children: [
        kHeight10,
        Stack(
          children: [
            Container(
              width: 365,
              height: 430,
              decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage(images[image]))),
            ),
            Positioned(
                top: 215,
                right: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.chevron_right,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      if (image != 3) {
                        image++;
                      } else {
                        image = 0;
                      }
                    });
                  },
                )),
            Positioned(
                top: 215,
                child: IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      if (image != 0) {
                        image--;
                      } else {
                        image = 3;
                      }
                    });
                  },
                ))
          ],
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  image = 0;
                });
              },
              child: Container(
                width: 80,
                height: 86,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage(images[0]))),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  image = 1;
                });
              },
              child: Container(
                width: 80,
                height: 86,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage(images[1]))),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  image = 2;
                });
              },
              child: Container(
                width: 80,
                height: 86,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage(images[2]))),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  image = 3;
                });
              },
              child: Container(
                width: 80,
                height: 86,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(image: AssetImage(images[3]))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
