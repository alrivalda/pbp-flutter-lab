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
