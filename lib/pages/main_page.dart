import 'package:artmoney/components/main_page/main_nav_bar.dart';
import 'package:artmoney/components/main_page/stories_tile.dart';
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

                  SizedBox(
                    height: 105,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                        StoriesTile(
                            title: 'Ваш новый титул',
                            imageUrl:
                                'https://s3-alpha-sig.figma.com/img/d7c8/ddbe/3adad4307c8a2f6765a3dad0c4540530?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nzGIkHkp~aQ1B0L7OtzwPXCYMxnVWgm1Ngl2joI2gqmEyfYXMMNQ864scP8j1OhnJAl3PyaPc60pOd5YyE4A6-ynSi5mvMXOaFjkdqaU8SSeeHhK3R0MGnDpu-38IzZsMAn5R-zaHZGD9yDOEVzvLh973pNnJObkCUm8x-KcRItoIO9yaK-rZCytjdyk78m6kfRv3zeoAGdMxCnJXnw~x~FJ7XRJl9gdMDcg6YGGo8UA~R0mg6viplov~n1ecDLB3V~-0SOtXCMuUn1HPKwRoO8vwggF-0JBBBZckUDOoolpvoedKtaKMC5~E8xF1HJZ-ubmTzVAa66ZIbDVTch4Fw__',
                            page: const ArticleDetailPage()),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ArticleTile(
                            title:
                                "Очень длинный текст очень длинный очень очень",
                            imageUrl:
                                'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                            page: const ArticleDetailPage()),
                        ArticleTile(
                            title: "Как начать делать big bucks",
                            imageUrl:
                                'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                            page: const ArticleDetailPage()),
                        ArticleTile(
                            title: "Как начать делать big bucks",
                            imageUrl:
                                'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                            page: const ArticleDetailPage()),
                        ArticleTile(
                            title: "Как начать делать big bucks",
                            imageUrl:
                                'https://avatars.dzeninfra.ru/get-zen_doc/1572663/pub_62776f4efabf455791fe31e2_62777994d4ec0d15422891c3/scale_1200',
                            page: const ArticleDetailPage())
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  alignment: Alignment(0, 1),
                  child: NavBar(selected_page: '123'))
            ]),
          ),
        ),
      ),
    );
  }
}
