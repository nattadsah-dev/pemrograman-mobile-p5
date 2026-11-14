import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:umkm_kuliner/tombol_favorit.dart';

void main() {
  testWidgets('ikon favorit berubah saat tombol ditekan', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: TombolFavorit(namaMenu: 'Nasi Goreng')),
      ),
    );

    // Kondisi awal: belum favorit
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNothing);

    // Tekan tombol
    await tester.tap(find.byType(IconButton));
    await tester.pump();

    // Setelah ditekan: jadi favorit + SnackBar muncul
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.byIcon(Icons.favorite_border), findsNothing);
    expect(find.byType(SnackBar), findsOneWidget);
  });
}