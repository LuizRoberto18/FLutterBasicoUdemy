import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {
  const HelloListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ListView"),
      ),
      body: _body(),
    );
  }
}

_body() {
  List<Dog> dogs = [
    Dog("jack Russel", "assets/images/dog1.png"),
    Dog("Labrador", "assets/images/dog2.png"),
    Dog("Pug", "assets/images/dog3.png"),
    Dog("Rotweiller", "assets/images/dog4.png"),
    Dog("Pastor", "assets/images/dog5.png"),
  ];
  return ListView.builder(
    itemCount: dogs.length,
    itemExtent: 300,
    itemBuilder: (context, index) {
      Dog dog = dogs[index];
      return Stack(
        fit: StackFit.expand,
        children: [
          _img(dog.foto),
          Container(
            alignment: Alignment.topLeft,
              child: Text(
                  dog.nome,
                  style: TextStyle(fontSize: 26, color: Colors.white),
          ))
        ],
      );
    },
  );
}

_pageView() {
  return PageView(
    children: [
      _img('assets/images/dog1.png'),
      _img('assets/images/dog2.png'),
      _img('assets/images/dog3.png'),
      _img('assets/images/dog4.png'),
      _img('assets/images/dog5.png'),
    ],
  );
}

_img(String img) {
  return Image.asset(
    img,
    fit: BoxFit.cover,
  );
}