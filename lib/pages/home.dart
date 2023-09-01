import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';
import 'package:themedemo66/new.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController TextSearch = TextEditingController();

  List footer = [
    New(
        cover: 'assets/images/newsHead.png',
        head: 'Social Media',
        content:
            'Scoial Media Refers To Websites And Applications That Are Designed To Allow People To Share Content Quickly, Efficiently, And In Real-Time'),
    New(
      cover: 'assets/images/newsTopic.png',
      head: 'Social Media',
      content:
          'Scoial Media Refers To Websites And Applications That Are Designed To Allow People To Share Content Quickly, Efficiently, And In Real-Time',
    ),
    New(
      cover: 'assets/images/unsplash_xTq26wLo5do.png',
      head: 'Social Media',
      content:
          'Scoial Media Refers To Websites And Applications That Are Designed To Allow People To Share Content Quickly, Efficiently, And In Real-Time',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
            ),
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextFormField(
                  controller: TextSearch,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    filled: true,
                    fillColor: whitePure,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lasted News',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'See more',
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.double_arrow,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: footer.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 250,
                                width: 300,
                                margin: EdgeInsets.all(10),
                                child: Container(
                                  width: 180,
                                  child: Image.asset(
                                    footer[index].cover,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Poppular News',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: 'See more',
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.double_arrow,
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       children: [
                              //         SizedBox(
                              //           height: 200,
                              //           child: ListView.builder(
                              //               scrollDirection: Axis.vertical,
                              //               itemCount: footer.length,
                              //               itemBuilder: (context, index) {
                              //                 return ListTile(
                              //                   leading: Image.asset(
                              //                     footer[index].cover,
                              //                     fit: BoxFit.cover,
                              //                   ),
                              //                   title: Text(
                              //                     footer[index].head,
                              //                     style: TextStyle(fontSize: 20),
                              //                   ),
                              //                   subtitle: Text(
                              //                     footer[index].content,
                              //                     style: TextStyle(
                              //                         color: Color.fromARGB(255, 61, 61, 61),
                              //                         fontSize: 12),
                              //                   ),
                              //                 );
                              //               }),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: ListView.builder(
                            itemCount: footer.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ListTile(
                              leading: Container(
                                width: 150,
                                child: Image.asset(
                                  footer[index].cover,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                footer[index].head,
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(
                                footer[index].content,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 61, 61, 61),
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[50],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.feed, color: Colors.purple),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.purple),
            label: 'Cirriculum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: Colors.purple),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
