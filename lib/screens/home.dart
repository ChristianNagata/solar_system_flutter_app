import 'package:flutter/material.dart';
import 'package:solar_system/http/http_service.dart';

import '../models/body.dart';

class Home extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Solar System'),
            toolbarHeight: 80,
            elevation: 0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                FutureBuilder(
                    future: httpService.getBodies(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Body>> snapshot) {
                      if (snapshot.hasData) {
                        List<Body>? bodies = snapshot.data;
                        return Column(
                          children: bodies!
                              .map(
                                (Body body) => ListTile(
                                  title: Text(body.englishName),
                                ),
                              )
                              .toList(),
                        );
                      } else {
                        print('Não tem dados');
                      }
                      return SizedBox(
                        height: 360,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
