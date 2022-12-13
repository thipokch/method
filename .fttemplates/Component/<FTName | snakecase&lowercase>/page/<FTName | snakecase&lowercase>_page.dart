import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_style/method_style.dart';


import '../<FTName | snakecase&lowercase>.dart';

class <FTName | pascalcase>Page extends StatelessWidget{
  const <FTName | pascalcase>Page({
    super.key
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
          create: (context) => <FTName | pascalcase>Bloc(),
          child: const MtAppPage(
            name: Text("<FTName | sentencecase>"),
            description: Text(""),
            slivers: [
              <FTName | pascalcase>Sliver(),
            ],
          ),
        );
}