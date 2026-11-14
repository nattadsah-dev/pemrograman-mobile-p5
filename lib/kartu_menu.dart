import 'package:flutter/material.dart';
import 'tombol_favorit.dart';

class KartuMenu extends StatelessWidget {
  const KartuMenu({
    super.key,
    required this.nama,
    required this.harga,
    required this.kategori,
  });

  final String nama;
  final int harga;
  final String kategori;

  String _rupiah(int nilai) {
    final s = nilai.toString();
    final buf = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
      buf.write(s[i]);
    }
    return 'Rp $buf';
  }

  @override
  Widget build(BuildContext context) {
    final teks = Theme.of(context).textTheme;
    final warna = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nama, style: teks.titleMedium),
                  const SizedBox(height: 4),
                  Text(
                    _rupiah(harga),
                    style: teks.bodyLarge?.copyWith(color: warna.primary),
                  ),
                  const SizedBox(height: 8),
                  Chip(label: Text(kategori)),
                ],
              ),
            ),
            TombolFavorit(namaMenu: nama),
          ],
        ),
      ),
    );
  }
}