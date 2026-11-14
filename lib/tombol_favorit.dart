import 'package:flutter/material.dart';

class TombolFavorit extends StatefulWidget {
  const TombolFavorit({super.key, required this.namaMenu});

  final String namaMenu;

  @override
  State<TombolFavorit> createState() => _TombolFavoritState();
}

class _TombolFavoritState extends State<TombolFavorit> {
  bool _favorit = false;

  void _toggle() {
    setState(() => _favorit = !_favorit);

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            _favorit
                ? '${widget.namaMenu} ditambahkan ke favorit'
                : '${widget.namaMenu} dihapus dari favorit',
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return IconButton(
      tooltip: _favorit ? 'Hapus dari favorit' : 'Tambah ke favorit',
      onPressed: _toggle,
      icon: Icon(
        _favorit ? Icons.favorite : Icons.favorite_border,
        color: _favorit ? warna.primary : warna.onSurfaceVariant,
      ),
    );
  }
}