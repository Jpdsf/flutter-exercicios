import 'package:flutter/material.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = [
      {"icon": Icons.filter_list, "label": "Filtros"},
      {"icon": Icons.shopping_bag_outlined, "label": "Para retirar"},
      {"icon": Icons.storefront_outlined, "label": "Tipo de loja"},
      {"icon": Icons.sort, "label": "Ordenar"},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: filters.map((filter) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(filter['icon'] as IconData, color: Colors.red, size: 24),
                const SizedBox(height: 4),
                Text(filter['label'] as String,
                    style: const TextStyle(fontSize: 12)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
