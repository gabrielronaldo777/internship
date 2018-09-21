# README
Question:
1.Disebutkan seorang client membutuhkan layanan aplikasi antar makanan. Dan Anda diminta untuk membuat desain sistem dengan kriteria pelanggan hanya dilayani dengan mobile apps.
  Desainlah stack backend dan micro service layanan tersebut beserta tools dan alasan mengapa memilih design dan tools    tersebut.

2.Bagaimana menangani keamanan dalam pengiriman data (backend dan mobile apps) pada sistem diatas.
  Jelaskan solusi tersebut beserta alasannya.

3.Buatlah sebuah service RESTFul API berdasarkan dokumentasi apiary berikut. Soal nomor 3 tidak ada hubungannya dengan soal nomor 1.https://testbinar.docs.apiary.io/. Boleh menggunakan bahasa apapun.
Sertakan panduan cara instalasi tools, pengaturan database, penggunaan kode dan cara ujicoba kode dalam file Readme.md
Sertakan tangkapan layar proses ujicoba API menggunakan postman.
Kode yang baik adalah kode yang bisa dibaca dan dipakai oleh orang lain.

4.Dari dokumen https://testbinar.docs.apiary.io/, menurut anda, apakah ada desian API yang kurang maupun keliru? Jika ada, tuliskan kekurangan-kekurangan desain tersebut dan bagaimana seharusnya dokumentasi itu ditulis.


Answer:

1.saya membuat aplikasi antar makanan menggunakan beberapa tools seperti ruby on rails,postman,vscode,postgresql dan gem

2.

3.

4. Dari dokumen https://testbinar.docs.apiary.io/, terdapat beberapa bug :
  - Create User : saat saya testing di postman,production dan mock servernya output jsonnya berbeda,ketika saya create user di                   production output jsonnya sudah benar,ketika saya create user di mock server output jsonnya terdapat                           bug,contohnya ketika saya create user abc@gmail.com tapi output jsonnya bot@gmail.com, 
                  seharusnya output jsonnya abc@gmail.com.
  - Show Data By Id : sama halnya seperti create user,di show data by id juga terdapat bug di production dan mock server,ketika                   saya mecoba menampilkan data by id nya,seharusnya keluar data id yang saya cari outputnya json,tapi outputnya                   jadi html,seharusnya outputnya json data id yang cari.
    
