import 'package:flutter/material.dart';
import 'package:panes/data/categories_data.dart';
import 'package:panes/ui/home/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/logo.png', width: 167,)),
              Text('Boas Vindas!'),
              TextFormField(),
              Text('Escolha por categoria'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  children: List.generate(
                    CategoriesData.listCategories.length, 
                    (i){
                      return CategoryWidget(category: CategoriesData.listCategories[i]);
                    }
                  ),
                ),
              ),
              Image.asset('assets/banners/banner_promo.png'),
              Text('Bem avaliados'),
            ],
          ),
        ),
      ),
    );
  }
}