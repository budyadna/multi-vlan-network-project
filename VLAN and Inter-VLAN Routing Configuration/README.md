Judul:
"Konfigurasi VLAN dan Inter-VLAN Routing pada Jaringan Multi-Departemen dengan DHCP"

Deskripsi:
Dalam proyek ini, saya merancang dan mengimplementasikan konfigurasi jaringan berbasis VLAN menggunakan perangkat Mikrotik dan switch manageable. Proyek ini bertujuan untuk memisahkan lalu lintas antar departemen, meningkatkan keamanan jaringan, dan memastikan skalabilitas jaringan untuk kebutuhan perusahaan. Selain itu, konfigurasi ini dirancang agar mudah dikelola oleh tim IT perusahaan, dengan dokumentasi yang lengkap untuk memudahkan troubleshooting dan pengembangan di masa depan. Proyek ini juga mengintegrasikan DHCP Server pada router untuk memastikan distribusi IP yang efisien, sehingga setiap perangkat dapat terkoneksi tanpa konfigurasi manual.

Pendekatan ini tidak hanya meningkatkan efisiensi operasional, tetapi juga memberikan fleksibilitas kepada perusahaan untuk menambah departemen baru dengan VLAN yang sesuai tanpa perlu merombak struktur jaringan yang ada. Kombinasi penggunaan router Mikrotik sebagai perangkat utama dan switch manageable memastikan performa jaringan yang optimal, stabilitas komunikasi antar departemen, dan akses internet yang aman untuk seluruh perangkat.

Tujuan Proyek:

1. Segmentasi Jaringan: Memisahkan lalu lintas antar departemen menggunakan VLAN.
2. Pengelolaan IP: Menggunakan DHCP Server pada router untuk mendistribusikan IP secara otomatis ke setiap klien berdasarkan VLAN.
3. Routing antar VLAN (Inter-VLAN): Memungkinkan komunikasi atar VLAN dan akses internet untuk semua perangkat.
4. Pengembangan: Mempermudah user untuk memperluas atau menambah VLAN baru dengan menggunakan perangkat yang sudah ada (Switch) ketika ingin menambahkan departemen baru.

Topologi Jaringan:
Berikut adalah desain topologi jaringan yang digunakan dalam proyek ini:

1. Router Mikrotik sebagai perangkat utama untuk routing antar VLAN dan gateway ke internet karena ada lebih dari 1 VLAN dalam topologi jaringan.
2. Switch Manageable (3 unit):
   1. Switch1: Terhubung langsung ke router, mengelola VLAN 20 (HR Department).
   2. Switch2: Mengelola VLAN 10 (IT Department).
   3. Switch3: Mengelola VLAN 30 (Finance Department).
3. VLAN Configuration:
   1. VLAN 10: IT Department (192.168.10.0/24).
   2. VLAN 20: HR Department (192.168.20.0/24).
   3. VLAN 30: Finance Department (192.168.30.0/24).

Setiap VLAN dikonfigurasi dengan segmentasi IP yang berbeda untuk memastikan isolasi lalu lintas jaringan antar departemen. Router Mikrotik bertindak sebagai gateway utama untuk setiap VLAN, mengelola komunikasi antar VLAN dengan protokol routing yang efisien. Selain itu, pengaturan trunking antara switch dan router memungkinkan pengiriman data VLAN dengan baik tanpa konflik.

Untuk mendukung distribusi IP secara otomatis, DHCP Server pada router dikonfigurasi dengan multiple pools, masing-masing disesuaikan dengan subnet dari setiap VLAN. Pengaturan ini meminimalkan kemungkinan kesalahan konfigurasi IP manual pada klien, sehingga mempermudah proses deployment jaringan.

Konfigurasi ini diuji dengan skenario realistis, seperti pengujian konektivitas antar VLAN, pemisahan akses antar departemen, dan kemampuan akses internet untuk seluruh perangkat. Hasilnya menunjukkan bahwa desain jaringan dapat diandalkan dan siap digunakan untuk mendukung kebutuhan perusahaan, baik untuk saat ini maupun pengembangan di masa mendatang.
