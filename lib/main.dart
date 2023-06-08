import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acceuil_flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 38, 210, 233),
            foregroundColor: Colors.white,
            title: const Text("Voyage Thailande"),
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              );
            }),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border))
            ],
          ),
          body: Column(
            children: [
              Image(image: AssetImage('assets/paysage.jpg')),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenue aux paradis",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Reservez votre sejour en Thaïlande "),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        "Plongez dans l'exotisme de la Thaïlande lors d'un séjour inoubliable. Dès votre arrivée à Bangkok, vous serez immédiatement fasciné par la beauté vibrante de la capitale thaïlandaise. Explorez les marchés animés, goûtez aux délicieux plats de rue et admirez les temples majestueux qui ornent la ville."),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(children: [
                            Icon(
                              Icons.hotel,
                              color: Colors.cyan,
                            ),
                            Text(
                              "Hôtel",
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Icon(Icons.airplanemode_active, color: Colors.cyan),
                            Text(
                              "Vols",
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Icon(Icons.directions_car, color: Colors.cyan),
                            Text(
                              "Avions",
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          ),
                          width: 130,
                          height: 70,
                          child: Image(
                            image: AssetImage("assets/vue.jfif"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 70,
                          child: Image(
                              image: AssetImage("assets/jolie.jfif"),
                              fit: BoxFit.cover),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 180,
                      child: TextButton(
                        //style: ButtonStyle(backgroundColor: Colors.cyan),
                        onPressed: (){}, child: Text("Voir plus de logements")),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
