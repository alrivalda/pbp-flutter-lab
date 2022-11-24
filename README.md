# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless Widget dapat dikatakan sebagai widget statis yang berarti widget tersebut tidak berubah.

Stateful Widget merupakan widget yang dinamis. Ini berarti widget ini dapat merubah tampilannya sesuai response dari events yang dipicu baik dari interaksi user maupun adanya variabel atau nilai baru yang didapat.

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Container : untuk membungkus atau sebagai tempat dari child – child dari berbagai tipe
Row : untuk mengurutkan children widget yang terdapat di dalamnya dalam bentuk berbaris atau dari atas ke bawah sesuai dengan order atau susunan dari children tersebut
Coloumn : untuk menampilkan tampilan menyamping seperti kategori yang sering digunakan oleh programmer untuk membangun UI
Scaffold : untuk memberikan tema material yang menjadi dasar dari tampilan android pada waktu artikel ini dibuat.
Center: untuk meletakkan child widget di tengah-tengah parent
FloatingActionButton: Widget  menampilkan button lingkaran
Appbar : untuk menampilkan bar di atas
Material app: untuk membuat material
Text : untuk membuat text

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
 Fungsinya memberi tahu framework bahwa ada internal state dari objektif yang ada perubahan.variabel yang terdampak adalah _counter. Yaitu ketika increament di klik maka counter + 1. Jika _decreament di klik maka counter -1

Jelaskan perbedaan antara const dengan final.
Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat projek flutter baru dengan flutter create _counter7
2. Mengubah title pada aplikasi
3. Menbuat debugshownya menjadi false
4.  Membuat fungsi increament
5. Membuat fungsi decreament
6. Mengubah teks pada _counter7 jadi genap dan ganjil
7. Membuat button - dan melakuka konfigurasi

 Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
 Navigator push - > melakukan push terhadap route yang diberikan ke navigator lalu mengembalikan hasil dari route tersebut.
 Navigator replacemenr - > menggantikan route halaman dari navigator dengan cara melakukan push route yang diberikan ke navigator, lalu semua route di atasnya dihapus alias di reset

 Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Padding : memberikan space terhadap antar komponen
Text : untuk menampilkan string
Column : menyusun widget secara vertikal
Container : menampung widget yang lain
ListTile : membuat sebuah listrile yang terurut
Drawer :untuk navigasi aplikasi
dropdown :  untuk dropdown

 Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
onPressed: event ketika button ditekan
onChanged: event ketika input value  terjadi perubahan
onSaved: event ketika input disimpan
onTap: event ketika widget merespon tap pengguna
onLongPress: event ketika widget ditekan dalam jangka waktu lama
onDoubleTap: event ketika widget merespon 2x tap dari pengguna
onSubmit: event ketika input dilakukan submir

 Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
1. Membuat drawer pada lib pada _drawer.dart
2. Mmebuat file tambahbudget.dart dan databudget.dart serta melakukan singkronisasi dengan drawer
3. Mmebuat budgetClass.dart sebagai objek data
4. Melakukan impor pada main




  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
  Bisa, namun kurang efisien. Sebab ketika mencoba mengambil data tanpa model memerlukan waktu yang banyak sehingga tidak efisien serta hal tersebut susah untuk diimplementasikan.

 Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.'
 ListTile : membuat sebuah listrile yang terurut
FutureBuilder: untuk ambil data dari API
ListView: menampilkan list
Scaffold :  memberikan tema material yang menjadi dasar dari tampilan android pada waktu artikel ini dibuat.
Coloumn : menampilkan tampilan menyamping seperti kategori yang sering digunakan oleh programmer untuk membangun UI
RichText: menmapilkan text serta stylenya
Text: menampilkan text
Checkbox: menampilkan checkbox

 Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
 1. menambahkan dependencies http ke flutter
 2. membuat model seperti model asal data
 3. melakukan http request ke web yang kita tuju
 4. melakukan pengolahan data tersebut serta menampilkanya pada GUI

 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 1. membuat mywatchlist.dart, data_mywatchlist.dart
 2. pada data_mywatchlist.dart dilakukan request http pada web yang dituju
 3. menambahkan drawer yaitu bagian mywatchlist
 4. pada my watchlist, membuat tampilan dair model yang akan kita ambil dari web
 5. pada mywatchlistshow, membuat tampilam informasi dari data yang kita ambil