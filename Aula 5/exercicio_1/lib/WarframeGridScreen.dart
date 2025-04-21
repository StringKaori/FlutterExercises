import 'package:flutter/material.dart';
import 'WarframeCard.dart';
import 'WarframeModel.dart';

class WarframeGridScreen extends StatelessWidget {
  const WarframeGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de warframes - definida uma única vez, evitando recriação
    final List<WarframeModel> warframes = [
      const WarframeModel(
        imagePath: 'assets/images/excalibur.webp',
        title: 'Excalibur',
        subtitle: 'Balanced Warframe',
      ),
      const WarframeModel(
        imagePath: 'assets/images/volt.webp',
        title: 'Volt',
        subtitle: 'Electric Warframe',
      ),
      const WarframeModel(
        imagePath: 'assets/images/rhino.webp',
        title: 'Rhino',
        subtitle: 'Tank Warframe',
      ),
      const WarframeModel(
        imagePath: 'assets/images/mesa.webp',
        title: 'Mesa',
        subtitle: 'Gunslinger Warframe',
      ),
      const WarframeModel(
        imagePath: 'assets/images/wisp.webp',
        title: 'Wisp',
        subtitle: 'All-in-one Warframe',
      ),
      const WarframeModel(
        imagePath: 'assets/images/saryn.webp',
        title: 'Saryn',
        subtitle: 'Toxic Warframe',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WARFRAME ARSENAL',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // Usando builder para melhor performance
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.9, // Ajuste conforme necessário
          ),
          itemCount: warframes.length,
          itemBuilder: (context, index) {
            final warframe = warframes[index];
            return WarframeCard(
              imagePath: warframe.imagePath,
              title: warframe.title,
              subtitle: warframe.subtitle,
            );
          },
        ),
      ),
    );
  }
}