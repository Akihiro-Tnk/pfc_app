import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pfc_app/constants/text_data.dart';
import 'package:pfc_app/provider/kcal_calculate_provider.dart';

class AnswerPage extends ConsumerWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final riceKal = ref.watch(kcalCalculateProvider([2.5, 0.3, 37.1]));
    final nattoKal = ref.watch(kcalCalculateProvider([16.5, 10.0, 12.1]));
    return Scaffold(
      appBar: AppBar(title: const Text(TextData.title)),
      body: Column(
        children: [
          const Text('${TextData.question}1'),
          const Text('nutrient.dart totalKcal()'),
          const Text('${TextData.question}2'),
          Text(' ${TextData.rice}： $riceKal'),
          Text('${TextData.natto}： $nattoKal')
        ],
      ),
    );
  }
}
