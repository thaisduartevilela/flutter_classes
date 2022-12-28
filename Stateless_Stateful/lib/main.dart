import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
           title: Text('Task Organizer'),
        ),
        body: ListView(
          children: [
            Task('Praticar Flutter', 'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI', '3'),
            Task('Praticar Jiu Jitsu', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3cILQOdgg33d8XaRENFRyQtHjpKbyZL8CHGEqGBFvj0UwGKHFhC0yr9wfZDziNuv5mGA&usqp=CAU', '2'),
            Task('Meditar', 'https://www.saberviver.pt/wp-content/uploads/2022/05/meditacao-guiada-destaque3-480x300.jpg', '1'),
            Task('Ler', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7qb5JFNNDh6YgJZOYmU9Q7gSn9kkCRaxnhA&usqp=CAU','2'),
            Task('Jogar', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBABnxdPNdLskEXV_TpR5cPnNKrU5GafTMaA&usqp=CAU','3'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key}) : super(key: key);
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black26,
                          width: 72,
                          height: 100,
                          child: Image.network(
                            widget.foto,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 24, overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size:15, color: Colors.blue,),
                                Icon(Icons.star, size:15, color: Colors.blue),
                                Icon(Icons.star, size:15, color: Colors.blue),
                                Icon(Icons.star, size:15, color: Colors.blue),
                                Icon(Icons.star, size:15, color: Colors.blue[100]),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          height: 52,
                          width: 52,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  nivel++;
                                });
                                print(nivel);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.arrow_drop_up),
                                  Text('UP', style:TextStyle(fontSize:12,),)
                                ],
                              ),
                          ),
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: LinearProgressIndicator(color: Colors.white, value: nivel/30,),
                          width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Nível:$nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
