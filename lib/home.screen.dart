// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:training_18_jul/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return InkWell(
            child: const Icon(Icons.menu),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageContainer(
                  assetImagePath: 'assets/images/profile_pic_men.webp',
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Material(
          color: Colors.indigo.shade300,
          child: ListTileTheme(
            textColor: Colors.indigo.shade800,
            child: SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Menu 1'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Menu 2'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hi Ghulam',
              style: TextStyle(
                fontSize: 32,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              '6 Tasks are pending',
              style: TextStyle(fontSize: 16, color: textColor3),
            ),
            const SizedBox(height: 30),
            const Container1(),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Monthly Review',
                    style: TextStyle(
                        color: textColor2,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.cyan.shade300,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withAlpha(50),
                            offset: const Offset(6, 6))
                      ]),
                  child: const Icon(
                    Icons.calendar_month_outlined,
                    size: 16,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: Container2(label: 'Done', number: '22'),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          flex: 2,
                          child: Container2(label: 'Ongoing', number: '10'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Expanded(
                            flex: 2,
                            child:
                                Container2(label: 'In progress', number: '7')),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container2(
                              label: 'Waiting for review', number: '12'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home_outlined,
                color: Colors.white70,
                size: 32,
              ),
              Icon(
                Icons.description_outlined,
                color: Colors.blue.shade300.withOpacity(0.7),
                size: 32,
              ),
              const Icon(
                Icons.person_outline,
                color: Colors.white70,
                size: 32,
              ),
              const Icon(
                Icons.notifications_outlined,
                color: Colors.white70,
                size: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                color: Colors.black.withAlpha(20),
                offset: const Offset(0, 5))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Mobile App Design',
            style: TextStyle(
              fontSize: 17,
              color: textColor2,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Mike and Anita',
            style: TextStyle(color: textColor3),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              //Left component
              Expanded(
                child: Stack(
                  children: const [
                    ImageContainer(
                        assetImagePath: 'assets/images/profilePic2.jpeg'),
                    Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: ImageContainer(
                          assetImagePath: 'assets/images/profilePic3.jpeg'),
                    )
                  ],
                ),
              ),
              // Right component
              Text(
                'Now',
                style: TextStyle(color: textColor3, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String assetImagePath;

  const ImageContainer({
    required this.assetImagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: CircleAvatar(backgroundImage: AssetImage(assetImagePath)),
    );
  }
}

class Container2 extends StatelessWidget {
  final String label;
  final String number;

  const Container2({
    Key? key,
    required this.label,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: Colors.indigo,
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  number,
                  style: TextStyle(
                      fontSize: 30,
                      color: textColor2,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Center(
                child: Text(
                  label,
                  style: TextStyle(fontSize: 14, color: textColor3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
