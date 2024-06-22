import 'package:artmoney/components/main_page/main_nav_bar.dart';
import 'package:artmoney/components/main_page/stories_tile.dart';
import 'package:artmoney/services/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:artmoney/settings.dart';
import 'package:flutter/material.dart';
import 'package:artmoney/components/main_page/article_tile.dart';
import 'package:artmoney/components/main_page/articlePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final firestoreService = MainFirestoreService();
  final searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/main_page_background.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Stack(children: [
              Column(
                children: [
                  // profile pic + share button

                  // search bar
                  SearchBar(
                    constraints:
                        const BoxConstraints(minHeight: 35, maxWidth: 350),
                    shadowColor: const WidgetStatePropertyAll(Colors.white),
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.white.withOpacity(0.5)),
                    hintText: "Поиск по статьям",
                    controller: searchTextController,
                    leading: const Icon(Icons.search, color: Purple),
                  ),
                  // scrollable stories

                  StreamBuilder(
                      stream: firestoreService.getStoriesStream(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List storiesList = snapshot.data!.docs;
                          return SizedBox(
                            height: 105,
                            child: ListView.builder(
                                itemCount: storiesList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot document =
                                      storiesList[index];
                                  String docID = document.id;

                                  Map<String, dynamic> data =
                                      document.data() as Map<String, dynamic>;

                                  String articleText = data['title'];
                                  String imageURL = data['imageURL'];

                                  return StoriesTile(
                                      title: articleText,
                                      imageUrl: imageURL,
                                      page: const ArticleDetailPage());
                                }),
                          );
                        } else {
                          return const Text('No articles');
                        }
                      }),

                  StreamBuilder(
                      stream: firestoreService.getArticlesStream(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List articlesList = snapshot.data!.docs;
                          return SizedBox(
                            height: 220,
                            child: ListView.builder(
                                itemCount: articlesList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot document =
                                      articlesList[index];
                                  String docID = document.id;

                                  Map<String, dynamic> data =
                                      document.data() as Map<String, dynamic>;

                                  String articleText = data['title'];
                                  String imageURL = data['imageURL'];

                                  return ArticleTile(
                                      title: articleText,
                                      imageUrl: imageURL,
                                      page: const ArticleDetailPage());
                                }),
                          );
                        } else {
                          return const Text('No articles');
                        }
                      }),

                  // SizedBox(
                  //   height: 220,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: const [
                  //       ArticleTile(
                  //           title:
                  //               "Очень длинный текст очень длинный очень очень",
                  //           imageUrl:
                  //               'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                  //           page: ArticleDetailPage()),
                  //       ArticleTile(
                  //           title: "Как начать делать big bucks",
                  //           imageUrl:
                  //               'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                  //           page: ArticleDetailPage()),
                  //       ArticleTile(
                  //           title: "Как начать делать big bucks",
                  //           imageUrl:
                  //               'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                  //           page: ArticleDetailPage()),
                  //       ArticleTile(
                  //           title: "Как начать делать big bucks",
                  //           imageUrl:
                  //               'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                  //           page: ArticleDetailPage())
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Container(
                  alignment: const Alignment(0, 1),
                  child: const NavBar(selected_page: '123'))
            ]),
          ),
        ),
      ),
    );
  }
}
