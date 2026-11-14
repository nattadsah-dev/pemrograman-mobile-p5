TUGAS RUTIN 5

Nama  : Natasha Patricia Nainggolan
NIM   : 4243550006
Kelas : PSIK 24C

aplikasi kuliner umkm ini dibuat menggunakan flutter dengan satu halaman utama yang menampilkan informasi profil umkm kuliner beserta menu makanan dan minuman yang tersedia.

Diagram Widget Tree:
MaterialApp (theme, darkTheme)
└─ Scaffold
   ├─ AppBar
   └─ ListView
      ├─ HeaderUmkm (gambar dan nama UMKM)
      ├─ KartuKontak (Card > ListTile x3)
      └─ KartuMenu x4 (Stateless)
         └─ TombolFavorit (Stateful)

1. Wdiget Tree: susunan widget yang digunakan untuk membangun tampilan aplikasi. widget bersifat immutable yg artinya tidak bisa diubah langsung setelah dibuat. saat fungsi built dijalankan kembali, flutter dapat membuat widget baru sesuai dengan kondisi terbaru.
2. Element Tree: struktur yang menghubungkan widget tree dengan tampilan aplikasi. elemen dapat dipertahankan walaupun widget mengalami perubahan. flutter dapat membandingkan widget sebelumnya dengan widget baru untuk menentukan bagian mana yang perlu dibaharui.
3. RenderObject Tree: mengatur ukuran, posisi dan proses menggambar setiap komponen pada layar. flutter berusaha untuk menggunakan renderobject yang sudah ada supaya proses rendering lebih efisien.

ketiga struktur ini saling berhubungan. widget digunakan untuk menyusun tampilan, element untuk mengatur hubungan dan pembaruan widget, renderobject untuk menangani proses pengaturan layout dan penggambaran tampilan ke layar.

pada aplikasi ini, saya menggunakan StatelessWidget untuk komponen yang tampilannya tidak mengalami perubahan secara langsung seperti HeaderUmkm, KartuKontak, dan KartuMenu. sementara StatefulWidget digunakan pada TombolFavorit karena mempunyai status yang dapat berubah saat ditekan misalnya dari fafvorit menjadi tidak favorit. perubahan tersebut dikelola menggunakan setState (). oleh karena hal ini, pengelolaan state jadi lebih sederhana karena hanya komponen yang membutuhkan perubahan saja yang menggunakan StatefulWidget.

Cara menjalankan aplikasi:
flutter run -d chrome

PENGGUNAAN AI:
dalam pengerjaan tugas ini, saya menggunakan AI (claude dan chatgpt) sebagai alat bantu untuk memahami penggunaan StatelessWidget dan StatefulWidget dan memahami widget tree, element tree, dan renderobject. Ai juga membantu memberi arahan dalam proses penulisan kode dan menjelaskan beberapa fungsi komponen yang digunakan. namun, proses penyesuaian kode dan pengujian aplikasi tetap saya lakukan sendiri agar dapat memahami aplikasi yang sudah saya buat.
