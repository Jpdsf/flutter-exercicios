import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itens = [
      {
        "icon": Icons.chat_bubble_outline,
        "title": "Conversas",
        "subtitle": "Meu histórico de conversas",
        "badge": "5"
      },
      {
        "icon": Icons.notifications_none,
        "title": "Notificações",
        "subtitle": "Minha central de notificações"
      },
      {
        "icon": Icons.person_outline,
        "title": "Dados da conta",
        "subtitle": "Minhas informações da conta"
      },
      {
        "icon": Icons.credit_card,
        "title": "Pagamentos",
        "subtitle": "Meus saldos e cartões"
      },
      {
        "icon": Icons.local_offer_outlined,
        "title": "Clube iFood",
        "subtitle": "Meus benefícios exclusivos"
      },
      {
        "icon": Icons.card_giftcard,
        "title": "Cupons",
        "subtitle": "Meus cupons de desconto"
      },
      {
        "icon": Icons.password,
        "title": "Código de entrega",
        "subtitle": "Edite seu código de entrega",
        "tag": "NOVO!"
      },
      {
        "icon": Icons.group_outlined,
        "title": "Comunidade iFood",
        "subtitle": "Junte-se à nós",
        "tag": "NOVO!"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            // Foto e nome
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.person, size: 32, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      "Joao Paulo De Sá Fonseca",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.qr_code_2, color: Colors.red.shade300),
              ],
            ),
            const SizedBox(height: 16),

            // Alerta: Entrega mais segura
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.shopping_bag, color: Colors.red),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Entrega mais segura!",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Agora dá pra alterar o código de entrega. Vem ver!"),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text("NOVO!", style: TextStyle(color: Colors.red)),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Lista de opções
            ...itens.map((item) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(item['icon'] as IconData, color: Colors.black),
                    title: Text(item['title'] as String,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(item['subtitle'] as String),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (item.containsKey("badge"))
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              item["badge"].toString(),
                              style: const TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        if (item.containsKey("tag")) const SizedBox(width: 8),
                        if (item.containsKey("tag"))
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              item["tag"].toString(),
                              style: const TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ),
                        const SizedBox(width: 6),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                    onTap: () {},
                  ),
                  const Divider(height: 0),
                ],
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
