import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/shoes_enum.dart';
import 'package:flutter_application_1/models/shoes.dart';
import 'package:flutter_application_1/screens/product_card_screen.dart';

final List<Shoes> shoes = [
  Shoes(
    shoes:  ShoesType.podkova, 
    costShoes: 10, 
    description: 'Лучший подарок девушкам.', 
    photo: 'https://ir-3.ozone.ru/s3/multimedia-g/wc1000/6871132096.jpg'),
  Shoes(
    shoes:  ShoesType.bottex, 
    costShoes: 75000, 
    description: 'Хорошие кросовки.', 
    photo: 'https://sun9-16.userapi.com/s/v1/ig2/nfXLaxlKP1xFc0ikbyRHryRSgTsFqTZc1feqKo9C1nhA_O3Oae7MTpbdjGBLu9au6s5KhAWJPozUKAS4q6f441YF.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=oSQFjF72Z5-HVoafbBrepqUWxpOmvCoRhLnMqpzs9OQ&cs=640x0'),
  Shoes(
    shoes:  ShoesType.stringi, 
    costShoes: 20000, 
    description: 'Жарко даже зимой!', 
    photo: 'https://sun9-25.userapi.com/s/v1/ig2/l7PQ3DoYKLvq4Ux6f8aYiZ3bR6OT18kUWimRoGZDTLGFvnE8XKd5z230U3pSnw6JvSnGYrKdEuAztTwLRt-PGy2e.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=3LIHlqyc3GtLh76HFx-AJB8Ln4lQl6twvTY_HXbqLok&cs=640x0'),
  Shoes(
    shoes:  ShoesType.wildSkelet, 
    costShoes: 45900, 
    description: 'Очень удобные. Нужно дрессировать чтобы не кусали.', 
    photo: 'https://sun9-12.userapi.com/s/v1/ig2/wNlfzaFnUMpg9cMW_gdWtRlUQdEwlzesFZ13sdic_OUITYx7fCn7CCqk7sZ3X2NFDn2xfPpmtRFVn61yGV0exRVo.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=p5HPKpiQUgOxGJbYAohW8IYon05bBh2ZN61_AROc2w4&cs=640x0'),
  Shoes(
    shoes:  ShoesType.nikeAir, 
    costShoes: 95000, 
    description: 'После покупки можно стать мультом.', 
    photo: 'https://sun9-39.userapi.com/s/v1/ig2/s7C3kMlVgAzHgHS9Zq9nGMBhe1NDrjvoC4UU0nBFUHLdKYvlIT3WBARFnFdW-SKmfGkd5s7u_BgzWx6rMPCiF8om.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=Ezta-jFx9xOetpLG_443tfkZW8OrwMBjHd0mM4gURao&cs=640x0'),
  Shoes(
    shoes:  ShoesType.kusaki, 
    costShoes: 20000, 
    description: 'Сожрут если не кормить', 
    photo: 'https://sun9-50.userapi.com/s/v1/ig2/942PprUR47tJJhqPiCbRBDG75-8aw6fc8nY3mWEPImlMuRtj8Ssu9Sj8RVshU8pXd9bjVlngBl-q9FacgUXeyjMh.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=ZYdawo-RAvaf1ZJTQlvPFnMtJ_XzQhIWwT2s9MUmUpc&cs=640x0'),
  Shoes(
    shoes:  ShoesType.shkura, 
    costShoes: 999999, 
    description: 'Уйдут если не давать деньги', 
    photo: 'https://sun9-63.userapi.com/s/v1/ig2/_ZSPSZPdWBW13P8eiUIaw4tIC3D6WJRMpo_ZqGKAF3irXMMt37IG5Raf9ZbRSzgdXG7xzu1inW3kgJYYqgF-Rn64.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=F0WGphBt0aDNriyobs9VNPiHik289xQc3oPtZFbeCx4&cs=640x0'),
  Shoes(
    shoes:  ShoesType.petyshki, 
    costShoes: 75000, 
    description: 'Защитит если давать спариваться с курицей', 
    photo: 'https://sun9-81.userapi.com/s/v1/ig2/Erjx5PdJD-WdfYxXtTV-TkfcUJewDjr6bxlSDZv3R4S6UKBXGZj86wx4gAWfPOrSgvtJaEEvwbmJDDWanH0KZo8j.jpg?quality=95&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1024x1024&from=bu&u=MClvUNhTNft-BMcWbYkVQbxdh6EkP0rAn2awEPC7suA&cs=640x0'),                
  Shoes(
    shoes:  ShoesType.rickOwens, 
    costShoes: 12000, 
    description: 'Отлично смотрятся на ноге', 
    photo: 'https://ir.ozone.ru/s3/multimedia-1-m/wc1000/7168954126.jpg'),
  Shoes(
    shoes:  ShoesType.kari, 
    costShoes: 50000, 
    description: 'Для спортсменов самое то', 
    photo: 'https://ir.ozone.ru/s3/multimedia-1-a/wc1000/7683420502.jpg'),                
];


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Color.fromARGB(216, 60, 247, 54),
          title: Text('Кроссовки'),
        ),   
        body: ListView.separated(
          itemCount: shoes.length,
          itemBuilder: (context, index) {
            final product = shoes[index];
            return InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProductCard(product: product))),
            child: ListTile(
              leading: Image.network(
                shoes[index].photo,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(shoes[index].shoes.shoesType),
              subtitle: Text(shoes[index].description),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
          },
          separatorBuilder: (context, index) => Divider(),
        ),
      ),
    );
  }
}