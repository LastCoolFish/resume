import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Icon(Symbols.info, color: Theme.of(context).colorScheme.outlineVariant,);
  }
  
}