import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_test/core/constants.dart';
import 'package:ecommerce_test/view/screen_product_details/screen_product_details.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 236, 236),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopBar(),
              Carousel(),
              PremiumBotiques(),
              kHeight20,
              Section1(),
              kHeight20,
              Section2(),
              kHeight20,
              kHeight20,
            ],
          ),
        ),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(5, 5)),
          ],
        ),
        child: Column(
          children: const [
            kHeight10,
            Image(
              image: AssetImage('assets/splash_in_summer.png'),
            ),
            kHeight20,
            Toys(),
            kHeight20,
            BathAndSkinCare(),
            kHeight20,
            Library(),
            kHeight20,
          ],
        ),
      ),
    );
  }
}

class BathAndSkinCare extends StatelessWidget {
  const BathAndSkinCare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            image: const DecorationImage(
              image: AssetImage('assets/bath_skincare.jpg'),
            ),
          ),
        ),
        kHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ScreenProductDetails(),
                      ),
                    );
                  },
                  child: Image(image: AssetImage('assets/BS${index + 1}.jpg'))),
              separatorBuilder: (context, index) => kWidth10,
              itemCount: 6),
        ),
      ],
    );
  }
}

class Library extends StatelessWidget {
  const Library({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Library.jpg'),
            ),
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ScreenProductDetails(),
                      ),
                    );
                  },
                  child: Image(image: AssetImage('assets/L${index + 1}.jpg'))),
              separatorBuilder: (context, index) => kWidth10,
              itemCount: 6),
        ),
      ],
    );
  }
}

class Toys extends StatelessWidget {
  const Toys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Toys.jpg'),
            ),
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ScreenProductDetails(),
                      ),
                    );
                  },
                  child: Image(image: AssetImage('assets/T${index + 1}.jpg'))),
              separatorBuilder: (context, index) => kWidth10,
              itemCount: 6),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(5, 5)),
          ],
        ),
        child: Column(
          children: const [
            BringTheSpring(),
            kHeight20,
            PickYourStyle(),
            kHeight20,
            OcassionStore(),
            kHeight20,
            TrendyAddOns(),
            kHeight20,
          ],
        ),
      ),
    );
  }
}

class TrendyAddOns extends StatelessWidget {
  const TrendyAddOns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        const Center(
          child: Text(
            'Trendy Add Ons',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/TAO1.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/TAO2.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/TAO3.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OcassionStore extends StatelessWidget {
  const OcassionStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        const Center(
          child: Text(
            'Ocassion Store',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 45) / 2,
                child: const Image(
                  image: AssetImage('assets/OS1.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 45) / 2,
                child: const Image(
                  image: AssetImage('assets/OS2.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PickYourStyle extends StatelessWidget {
  const PickYourStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        const Center(
          child: Text(
            'Pick Your Style',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/PYS1.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/PYS2.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 55) / 3,
                child: const Image(
                  image: AssetImage('assets/PYS3.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BringTheSpring extends StatelessWidget {
  const BringTheSpring({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        const Center(
          child: Text(
            'Bring The Spring',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 45) / 2,
                child: const Image(
                  image: AssetImage('assets/BTS1.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: SizedBox(
                width: (MediaQuery.of(context).size.width - 45) / 2,
                child: const Image(
                  image: AssetImage('assets/BTS2.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 5),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            kWidth10,
            kWidth10,
            const Icon(
              Icons.search,
            ),
            const Icon(Icons.shopping_cart_outlined)
          ],
        ));
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) => Row(
        children: [
          kWidth10,
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScreenProductDetails(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(5, 5)),
                  ],
                ),
                child: Image(
                  image: AssetImage(
                    'assets/banner_${index + 1}.png',
                  ),
                ),
              ),
            ),
          ),
          kWidth10,
        ],
      ),
      options: CarouselOptions(
        autoPlay: true,
        animateToClosest: true,
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}

class PremiumBotiques extends StatelessWidget {
  const PremiumBotiques({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Premium Boutiques',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        kHeight20,
        Column(
          children: const [
            PM1(),
            kHeight20,
            PM2(),
          ],
        ),
        kHeight20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: const Center(
              child: Text(
                'View All Boutiques >',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PM2 extends StatelessWidget {
  const PM2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ScreenProductDetails(),
              ),
            );
          },
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width / 2 - 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage('assets/29575.webp'),
                ),
                kHeight10,
                Text(
                  '  Trendy Kids | 4 - 14Y',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                Text(
                  '  Tops,Frocks & Bottoms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScreenProductDetails(),
              ),
            );
          },
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width / 2 - 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage('assets/29576.webp'),
                ),
                kHeight10,
                Text(
                  '  Trendy Kids | 4 - 14Y',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                Text(
                  '  Tops,Frocks & Bottoms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PM1 extends StatelessWidget {
  const PM1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScreenProductDetails(),
              ),
            );
          },
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width / 2 - 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage('assets/29563.webp'),
                ),
                kHeight10,
                Text(
                  '  Trendy Kids | 4 - 14Y',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                Text(
                  '  Tops,Frocks & Bottoms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScreenProductDetails(),
              ),
            );
          },
          child: Container(
            height: 230,
            width: MediaQuery.of(context).size.width / 2 - 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage('assets/29572.webp'),
                ),
                kHeight10,
                Text(
                  '  Trendy Kids | 4 - 14Y',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                Text(
                  '  Tops,Frocks & Bottoms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
