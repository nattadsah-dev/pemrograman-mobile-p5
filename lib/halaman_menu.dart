import 'package:flutter/material.dart';
import 'kartu_menu.dart';

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warung Nusantara')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: const [
          HeaderUmkm(),
          KartuKontak(),
          KartuMenu(nama: 'Nasi Goreng Spesial', harga: 25000, kategori: 'Makanan'),
          KartuMenu(nama: 'Mie Aceh', harga: 28000, kategori: 'Makanan'),
          KartuMenu(nama: 'Es Teh Manis', harga: 6000, kategori: 'Minuman'),
          KartuMenu(nama: 'Pisang Goreng', harga: 12000, kategori: 'Camilan'),
        ],
      ),
    );
  }
}

class HeaderUmkm extends StatelessWidget {
  const HeaderUmkm({super.key});

  @override
  Widget build(BuildContext context) {
    final teks = Theme.of(context).textTheme;
    final warna = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=800',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => ColoredBox(
              color: warna.primaryContainer,
              child: Icon(
                Icons.restaurant,
                size: 64,
                color: warna.onPrimaryContainer,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Warung Nusantara', style: teks.headlineSmall),
              const SizedBox(height: 4),
              Text(
                'Masakan rumahan khas Medan, dimasak segar setiap hari.',
                style: teks.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class KartuKontak extends StatelessWidget {
  const KartuKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('0812-3456-7890'),
            subtitle: Text('Telepon / WhatsApp'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('warung@nusantara.id'),
            subtitle: Text('Email'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Jl. Merdeka No. 10, Medan'),
            subtitle: Text('Alamat'),
          ),
        ],
      ),
    );
  }
}