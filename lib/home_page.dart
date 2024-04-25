import 'package:flutter/material.dart';
import 'package:meraz/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PlayStation",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 48,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.blueAccent.shade100),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabItem(title: "Inicio", count: 0),
                      TabItem(title: "Mensajes", count: 2),
                      TabItem(title: "Juegos", count: 23),
                    ],
                  ),
                ),
              )),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Pagina de inicio")),
            Center(child: Text("Pagina de Mensajes")),
            Center(child: Text("Pagina de juegos")),
          ],
        ),
      ),
    );
  }
}
