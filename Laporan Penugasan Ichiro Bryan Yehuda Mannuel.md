Nama : Bryan Yehuda Mannuel       
NRP : 05311940000021
Departemen : Teknologi Informasi (IT)       
Divisi : Programming

## Persiapan Sebelum Penugasan
1. _OS Linux Ubuntu_ sudah terinstall 
2. Tutorial _ROS Melodic Morenia_ sudah terselesaikan

## Tugas 1 : Install Webots
 
1. Buka Terminal pada _Linux Ubuntu_ agar bisa memasukkan command-command _Linux Ubuntu_ yang diperlukan
(**Selesai pada 12 November 2019, jam 19.30**)       
2. Masuk ke prioritas Root pada Terminal dengan command :
```
sudo su
```
dan masukkan password               
(**Selesai pada 12 November 2019, jam 19.31**)       
3. Webots harus diautentikasi dengan Signature [Cyberbotics.asc](https://www.cyberbotics.com/Cyberbotics.asc) menggunakan command:
```
curl -s -L https://www.cyberbotics.com/Cyberbotics.asc | sudo apt-key add -
```
(**Selesai pada 12 November 2019, jam 19.34**)          
4. Melakukan konfigurasi _APT Package Manager_ dengan menambahkan _Repository Webots_ menggunakan command :
```
apt-add-repository 'deb https://www.cyberbotics.com/debian/ binary-amd64/'
apt-get update
```
(**Selesai pada 12 November 2019, jam 19.36**)        
5. Buka aplikasi _Software and Updates_, buka tab `other software`, dan klik `add..` lalu tambahkan : 
```
deb https://www.cyberbotics.com/debian/ binary-amd64/
```
Yang bertujuan agar aplikasi Webots bisa terupdate secara automatis dari _Repository Webots_               
(**Selesai pada 12 November 2019, jam 19.38**)         
6. Lakukan Update pada sistem _Linux Ubuntu_ menggunakan command :
```
apt-get update
```
(**Selesai pada 12 November 2019, jam 19.43**)        
7. Install _Webots_ menggunakan command :
```
apt-get install webots
```
dan tunggu hingga proses instalasi selesai                    
(**Selesai pada 12 November 2019, jam 22.05**)        
8. Webots sudah selesai terinstall dan siap untuk digunakan
(**Selesai pada 12 November 2019, jam 22.06**)         


## Tugas 2: Selesaikan Tutorial Webots
