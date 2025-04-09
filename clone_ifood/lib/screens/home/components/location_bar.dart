import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_on_outlined, color: Colors.red),
      title: const Text("Av. São João, 100", style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.qr_code_scanner, color: Colors.grey),
    );
  }
}
