import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class Product {
  String phoneNames;
  String phoneDescriptions;
  String phoneImages;
  String price;

  Product(
      this.phoneNames, this.phoneDescriptions, this.phoneImages, this.price);
}

List<Product> productList = [
  Product(
      "NEW BMW X6",
      "BMW X6 представляет собой среднеразмерный кроссовер, сочетающий в себе признаки купе (скошенный в задней части верх) и внедорожника (мощный двигатель, полный привод, большой клиренс, крупные колеса). По классификации компании модель относится к категории SAC — спортивное купе, предназначенное для активного отдыха. ",
      'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kg2a4vYlBNa9mGcHr2XEdUC83EG--RVqgxlMo0qUckm_QmEoPStYPDvT6AJb299zmtnaMWxIhSSoCvmJE9nAokVKC7Hs_0DBYZvymXa7VGJX50pQbfTDswvCQfZSTq3L-9Qx9_30EmYqw7TbUIIGbRQdlXymxMKhLUs0jRAUj-6PGwZ_bXMdzmzYN9Y0PJpinK3MHSI5QjkJT8A7G4',
      "5 300 000 ₽"),
  Product(
      "BMW X5 30d, 2023",
      "BMW X5 – среднеразмерный кроссовер, выпускаемый немецким концерном с 1999 года. Впервые машина была показана публике во время проведения автовыставки в Детройте. В ее названии символ «Х» обозначает наличие системы полного привода, а цифра 5 – использование в качестве базовой модели BMW 5-Series.",
      'https://s.auto.drom.ru/i24222/c/photos/generations/500x_bmw_x5_g8395.jpg?816434',
      "14 490 000 ₽"),
  Product(
      "BMW X3 рестайлинг 2021",
      "BMW представила обновленную версию компактного кроссовера X3. Автомобиль получил измененную внешность, доработанный интерьер и небольшие перестановки по части техники. Третье поколение X3 (G01) выпускается с 2017 года. Облик довели до последней итерации корпоративного стиля баварской марки. «Ноздри» решетки радиатора стали еще крупнее и «срослись» окантовками, но по размерам они недотягивают до нашумевших M3/M4.",
      'https://s.auto.drom.ru/i24258/c/photos/generations/500x_bmw_x3_g13528.jpg?1014341',
      "12000000 ₽"),
  Product(
      "BMW E39",
      "Четвертое поколение автомобилей семейства BMW 5, которое выпускалось с 1995 по 2004 год включительно. Предшественником данного поколения были автомобили поколения E34, а ему на смену пришло поколение Е60 (в 2003 году), и BMW F10 (в 2010 году) в совершенно новом стиле BMW. Базовой в семействе была модель 520i. Машина имела двигатель объемом 2.0 л и мощностью 150 л.с., после рестайлинга объем вырос до 2.2 литра, а мощность до 170 л.с. Спортивная версия BMW M5 была выпущена в 1998 году. Она оснащалась восьмицилиндровым двигателем S62 мощностью 400 л.с., который был сделан на базе двигателя предыдущего поколения M62B44. Все автомобили, кроме BMW 535 и BMW M5, были доступны в кузовах седан и универсал. BMW 535 и BMW M5 выпускались только в кузове седан.",
      'https://s.auto.drom.ru/i24198/c/photos/generations/500x_bmw_5-series_g5129.jpg?535586',
      "2045000 ₽"),
  Product(
      "BMW E34",
      "BMW E34 — третье поколение BMW пятой серии, выпускавшееся с 1987 года по 1995-й с кузовом седан и по 1996-й с кузовом универсал. Всего было выпущено 1 333 412 автомобилей, из них 124 656 универсалов. Автомобиль был выдержан в стиле традиционного BMW, но в то же время содержал в себе современные технологии.",
      'https://s.auto.drom.ru/i24198/c/photos/fullsize/bmw/5-series/bmw_5-series_556096.jpg',
      "1300000 ₽"),
  Product(
      "BMW 530d xDrive M Sport Plus",
      "это пятиместный премиальный седан бизнес класса. По заявлению производителя, он сочетает в себе комфорт и статус E класса с динамикой настоящего спортивного автомобиля. После смены поколений, его габаритные размеры составляют: длина 4965 мм, ширина 1903 мм, высота 1473 мм, а колесная база- 2982 мм. ",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65eb96d91f6eee73ddb235f4/1200/0',
      "7 190 000 ₽"),
  Product(
      "BMW X7 xDrive30d M Sport Pro",
      "Прототип новой модели под названием X7 iPerformance компания BMW продемонстрировала в сентябре 2017 года на международном автосалоне во Франкфурте. Серийный BMW X7 представлен осенью 2018 года, производство налажено на заводе BMW в Спартанбурге, США. Дизайн в общих чертах повторяет ранее представленный концепт, но в деталях, конечно, попроще — вместо сенсорных дверных ручек здесь обычные — «под естественный хват», фары выполнены более широкими, а «ноздри» — более узкими. Окна получили обычные рамки, зеркала — одинарные ножки. Можно перечислить еще с десяток других упрощений. Профиль новинки характеризуют крупные стекла, большой дорожный просвет и длинная линия крыши. Прием заказов на российском рынке объявлен в октябре 2018-го. На старте продаж предложены три модификации: одна бензиновая (xDrive40i) и две дизельных (xDrive30d и M50d). Все с 8-ступенчатым «автоматом» и системой полного привода xDrive.",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65eb963d1f6eee73ddb235ae/1200/0',
      "11 290 000₽"),
  Product(
      "BMW 630d xDrive GT M Sport Plus",
      "Купите новый автомобиль, а старый мы зачтём в счёт аванса. От легковых автомобилей, до лёгкого коммерческого и грузового транспорта",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65d62ea108efd5dd0115fd72/1200/0',
      "6 490 000 ₽"),
  Product(
      "BMW X1",
      "BMW X1 - это компактный кроссовер от немецкого автопроизводителя BMW, представленный в 2009 году. Этот автомобиль сочетает в себе элегантность и спортивность, что делает его привлекательным для любителей активного образа жизни.",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65e383ec1f6eee73ddb10d9c/1200/0',
      "3 254 000 ₽"),
  Product(
      "BMW 330i xDrive",
      "BMW 330i xDrive - это роскошный седан бизнес-класса с полным приводом, который был представлен в 2015 году. Он оснащен 3,0-литровым двигателем с турбонаддувом, который выдает 300 лошадиных сил. Этот автомобиль имеет спортивный дизайн, который отличается агрессивными линиями и современными светодиодными фарами. ",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65f4396a1f6eee73ddb32162/1200/0',
      "3 068 000  ₽"),
  Product(
      "BMW 3 серии",
      "BMW 3 серии - это автомобиль бизнес-класса, который выпускается немецким производителем BMW с 1975 года. За время своего существования, модель претерпела множество изменений и модернизаций, и сегодня на рынке представлено уже седьмое поколение BMW 3 серии.",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65d66cf22de6372e41d5d747/1200/0',
      "1 795 000 ₽"),
  Product(
      "BMW 528i xDrive",
      "BMW 528i xDrive – это роскошный седан представительского класса с полным приводом. Автомобиль оснащается 2-литровым бензиновым двигателем, который развивает мощность в 241 лошадиную силу. Полный привод обеспечивает отличное сцепление с дорогой и управляемость, что делает BMW 528i идеальным выбором для езды в любых погодных условиях. ",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65db144b1f6eee73ddb01da2/1200/0',
      "2 390 000 ₽"),
  Product(
      "BMW 118i",
      "BMW 118i - это переднеприводный седан бизнес-класса, оснащенный 1,5-литровым турбированным двигателем, выдающим 141 л.с. Он отличается стильным дизайном, просторным салоном и высоким уровнем комфорта для водителя и пассажиров.",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65d66d352de6372e41d5da02/1200/0',
      "1 992 000 ₽"),
  Product(
      "BMW 5 серии Touring",
      "BMW 5 Series Touring - это универсал бизнес-класса, выпускаемый немецким производителем BMW. Он отличается просторным салоном, вместительным багажником и высоким уровнем комфорта. Под капотом BMW 5 Series Touring могут быть установлены различные двигатели, начиная от экономичных дизельных и заканчивая мощными бензиновыми агрегатами.",
      'https://cdn.kodixauto.ru/media//media/resized_image/webp/65d66cba2de6372e41d5d4fa/1200/0',
      "3 485 000₽"),
  Product(
      "BMW 7-Series, 1999",
      "BMW 7 Series 1999 года - это роскошный автомобиль представительского класса, который выпускался немецким производителем BMW в период с 1994 по 2001 год. Этот автомобиль отличается высокой мощностью, комфортом и безопасностью для водителя и пассажиров.",
      'https://yastatic.net/naydex/autoru/25jb8Dp31/bbad79QX41y/nwXnjHoFNny4bR_qK4f8Ec5MiyIKl9S8N0BPqmdENRAd2kE0kg2bYfalBJa8GDNSu-TEtRVoHsDpLMJrFk1ZoV-Bs53-FiA9KasY__vSqcPJyRwzDVWaNuxIQmCvTDoKkhIFogOaXLAmf18VbJBwknH9myUWKoaWbHzOP08EAzveDemC_dO3uXb_0yGkRDgeUUJHaxNbXnmhgs4nKsl7x5YRyO1PUA296P7TSGOdM1c-vxzrFuHMECEzA77FBo66E0',
      "650 000 ₽"),
];

//Экран регистрации
class RegistrationRoute extends StatelessWidget {
  const RegistrationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 225, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 12, 240),
        title: const Center(
          child: Text('Регистрация'),
        ),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.view_headline),
                  hintText: "Введите логин",
                )),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.visibility),
                  hintText: "Введите пароль",
                )),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.tablet),
                        hintText: "Введите почту",
                        fillColor: Color.fromARGB(255, 5, 225, 233),
                        filled: true)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.tablet_android),
                        hintText: "Введите номер телефона",
                        fillColor: Color.fromARGB(255, 5, 225, 233),
                        filled: true)),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 200,
              height: 10,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 16, 63, 75)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Зарегистрироваться'),
              ),
            ),
          ),
          const SizedBox(height: 35),
        ],
      )),
    );
  }
}

//Экран Авторизации
class AuthorizationRoute extends StatelessWidget {
  const AuthorizationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 225, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 12, 240),
        title: const Center(
          child: Text('Вход или регистрация'),
        ),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.account_circle),
                  hintText: "Введите логин",
                )),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 400,
              height: 10,
              color: const Color.fromARGB(255, 5, 225, 233),
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                        ),
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.vpn_key),
                        hintText: "Введите пароль")),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 200,
              height: 10,
              child: ElevatedButton(
                child: const Text('Нет аккаунта? Зарегистрироваться!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationRoute()),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 200,
              height: 10,
              child: ElevatedButton(
                child: const Text('Войти'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeRoute()),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Приложение',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const AuthorizationRoute(),
    );
  }
}

//Главный экран с товарами
class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 225, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 12, 240),
        centerTitle: true,
        title: const Center(
          child: Text('Выбери свою BMW'),
        ),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(productList[index].phoneImages,
                width: 200, height: 200),
            title: Text(
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                productList[index].phoneNames),
            subtitle: Text(
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                productList[index].price),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneDetailScreen(
                    name: productList[index].phoneNames,
                    description: productList[index].phoneDescriptions,
                    imagePath: productList[index].phoneImages,
                    price: productList[index].price,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

//Детальная информация о товаре
class PhoneDetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final String price;

  const PhoneDetailScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 225, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 12, 240),
        title: Text(name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.network(imagePath, width: 500, height: 400),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                description,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
