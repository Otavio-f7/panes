import 'package:flutter/material.dart';
import 'package:panes/ui/_core/app_colors.dart';
import 'package:panes/ui/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 32.0,
                children: [
                  Image.asset('assets/logo.png', width: 192,),
                  Column(
                    children: [
                      Text(
                        'Seu pedido na padaria',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                      Text(
                        'da melhor forma!',
                        style: TextStyle(color: AppColors.mainColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>HomeScreen()));
                      }, 
                      child: Text('Fazer pedido!'),
                    )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}