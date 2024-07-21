import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dynamic item = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                item['dname'] ?? 'Unknown Item',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                          offset: const Offset(8, 8),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.network(
                        'https://cdn.cloudflare.steamstatic.com/${item['img']}',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item['cost']?.toString() ?? '0',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(2, 2),
                            blurRadius: 2,
                          ),
                        ],
                        color: Colors.yellow,
                      ),
                    ),
                    Image.asset('assets/img/icons/Gold_symbol.png'),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, right: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(225, 27, 38, 44),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                            offset: const Offset(10, 10),
                            blurRadius: 10,
                            spreadRadius: 10,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(225, 15, 76, 117),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Stats', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: item['attrib'] == null || item['attrib'].isEmpty
                                ? const Text(
                                    'No stats available', 
                                    style: TextStyle(fontSize: 12)
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: item['attrib'].length,
                                    itemBuilder: (context, index) => Text(
                                      '${item['attrib'][index]['key']} : ${item['attrib'][index]['value']}' + '\n',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, left: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(225, 27, 38, 44),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                            offset: const Offset(10, 10),
                            blurRadius: 10,
                            spreadRadius: 10,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(225, 15, 76, 117),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Ability', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'Description:\n${item['notes'] ?? 'No description available'}\n',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: item['abilities'] == null || item['abilities'].isEmpty
                              ? const Text(
                                  'No abilities available', 
                                  style: TextStyle(fontSize: 12)
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: item['abilities'].length,
                                  itemBuilder: (context, index) => Text(
                                    item['abilities'][index]['description'] + '\n',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}