import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../Models/launch_url.dart';
import '../../Models/my_strings.dart';
import '../../Models/responsive_size.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    ScrollController _scrollController = ScrollController();
    return _width >= ResponsiveSize.tabWidth
        ? VsScrollbar(
            controller: _scrollController,
            showTrackOnHover: true,
            isAlwaysShown: true,
            scrollbarFadeDuration: Duration(milliseconds: 500),
            scrollbarTimeToFade: Duration(milliseconds: 800),
            style: VsScrollbarStyle(
              hoverThickness: 10.0,
              radius: Radius.circular(10),
              thickness: 10.0,
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 1200,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.deepPurple[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 60),
                        Container(
                          width: 500,
                          height: 510,
                          child: Column(children: [
                            SizedBox(height: 15),
                            Lottie.network(
                              'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
                              width: 180,
                              height: 180,
                            ),
                            Text(
                              'Mock Shop',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Text(
                                maxLines: 5,
                                'Aplicativo que simula um aplicativo de vendas online, consumindo a API open source DummyJSON (https://dummyjson.com/). O aplicativo permite explorar a lista de produtos que vem da API, ver os detalhes dos produtos listados e simular um carrinho de compras.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(200, 50),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(
                                        MyStrings.mockShopLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(width: 35),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 410),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(width: 50),
                        Image.asset(
                          'assets/icons/mock_shop.png',
                          width: 450,
                          height: 460,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  //
                  //
                  //
                  Container(
                    width: 1200,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.deepPurple[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 60),
                        Container(
                          width: 500,
                          height: 500,
                          child: Column(children: [
                            SizedBox(height: 5),
                            Lottie.network(
                              'https://assets7.lottiefiles.com/private_files/lf30_nIklgb.json',
                              width: 300,
                              height: 150,
                              fit: BoxFit.none,
                            ),
                            SizedBox(height: 40),
                            Text(
                              'Right',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                maxLines: 5,
                                'Right é um aplicativo de auxílio ao estudo, que utiliza cartões de memória (flashcards) para aprender o conteúdo. Com ele, você pode criar seus próprios cartões, favoritar os que mais lhe interessam, receber lembretes e interagir com a comunidade de usuários.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(200, 50),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(MyStrings.rightLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(width: 35),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 410),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(width: 50),
                        Image.asset(
                          'assets/icons/right_showup.png',
                          width: 450,
                          height: 460,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  //
                  //
                  //
                  Container(
                    width: 1200,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.deepPurple[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 60),
                        Container(
                          width: 500,
                          height: 500,
                          child: Column(children: [
                            SizedBox(height: 15),
                            Lottie.network(
                              'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                              width: 300,
                              height: 150,
                              fit: BoxFit.none,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Weather Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Text(
                                maxLines: 5,
                                'Um aplicativo de previsão do tempo. O aplicativo nos mostra a temperatura atual (em graus Celsius) do local escolhido e também nos informa sobre as próximas previsões do tempo. O aplicativo consome a API de código aberto WeatherApi (https://www.weatherapi.com/).',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 25),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(200, 50),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(
                                        MyStrings.weatherNowLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(width: 35),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 410),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(width: 50),
                        Image.asset(
                          'assets/icons/weather_now.png',
                          width: 450,
                          height: 460,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  //
                  //
                  //
                  Container(
                    width: 1200,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.deepPurple[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 60),
                        Container(
                          width: 500,
                          height: 500,
                          child: Column(children: [
                            SizedBox(height: 15),
                            Lottie.network(
                              'https://assets9.lottiefiles.com/packages/lf20_XMTduDVODZ.json',
                              width: 200,
                              height: 180,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Portfolio WebApp',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Text(
                                maxLines: 5,
                                'Um portfólio online que mostra um pouco sobre mim, e os projetos que venho construindo. Este é meu primeiro projeto usando Flutter Web, para aplicar todo meu conhecimento de flutter ao aspecto web, trazendo responsividade e reatividade.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(200, 50),
                                  backgroundColor: Colors.white),
                              onPressed: () async {
                                await MyUrl.launchURL(MyStrings.portfolioLink);
                              },
                              child: Image.asset(
                                'assets/icons/github_icon.png',
                                height: 400,
                                width: 400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 410),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 72,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Lottie.network(
                                        'https://assets8.lottiefiles.com/packages/lf20_REyGrcDsYY.json',
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(width: 50),
                        Image.asset(
                          'assets/icons/portfolio.png',
                          width: 450,
                          height: 460,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        :
/*             RESPONSIVO MOBILE */

        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.deepPurple[500],
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Column(children: [
                          Lottie.network(
                            'https://assets2.lottiefiles.com/packages/lf20_trr3kzyu.json',
                            width: 300,
                            height: 150,
                            fit: BoxFit.none,
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Weather Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                maxLines: 5,
                                'A Forecast Weather App. The app shows us the current temperature (in Celsius) of the chosen location, and also informs us of the next weather forecasts.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(250, 60),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(
                                        MyStrings.weatherNowLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(12),
                                      fixedSize: Size(250, 56),
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/icons/apk_icon.png',
                                    height: 300,
                                    width: 400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.deepPurple[500],
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Column(children: [
                          SizedBox(height: 10),
                          Lottie.network(
                            'https://assets7.lottiefiles.com/packages/lf20_TMRZ23.json',
                            width: 300,
                            height: 150,
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Mock Shop',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                maxLines: 5,
                                'Aplicativo que simula um aplicativo de vendas online, consumindo a API open source DummyJSON (https://dummyjson.com/). O aplicativo permite explorar a lista de produtos que vem da API, ver os detalhes dos produtos listados e simular um carrinho de compras.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(250, 60),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(
                                        MyStrings.mockShopLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(12),
                                      fixedSize: Size(250, 56),
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Image.asset(
                                    'assets/icons/apk_icon.png',
                                    height: 300,
                                    width: 400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.deepPurple[500],
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Column(children: [
                          Lottie.network(
                            'https://assets9.lottiefiles.com/packages/lf20_XMTduDVODZ.json',
                            width: 200,
                            height: 150,
                          ),
                          SizedBox(height: 40),
                          Text(
                            'Portfolio WebApp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                maxLines: 5,
                                'An online portfolio that shows a little about me, and the projects I have been building. This is my first project using Flutter Web, to apply all my flutter knowledge to the web aspect, bringing responsiveness and reactivity.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(250, 60),
                                      backgroundColor: Colors.white),
                                  onPressed: () async {
                                    await MyUrl.launchURL(
                                        MyStrings.portfolioLink);
                                  },
                                  child: Image.asset(
                                    'assets/icons/github_icon.png',
                                    height: 400,
                                    width: 400,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
