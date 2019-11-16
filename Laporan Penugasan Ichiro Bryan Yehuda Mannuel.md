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

 3. Webots harus diautentikasi dengan Signature [Cyberbotics.asc]

(https://www.cyberbotics.com/Cyberbotics.asc) menggunakan command:
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

### 1. Simulasi Pertama di _Webots_

1. Buka dan Jalankan _Webots_ dengan mengklik Ikon _Webots_  
(**Selesai pada 12 November 2019, jam 21.00**)  
2. Pilih Theme yang diinginkan  
(**Selesai pada 12 November 2019, jam 21.01**)  
3.  _World_ adalah sebuah file tempat dimana semua informasi tentang _Objects_ disimpan (seperti warna langit, gesekan, gaya gravitasi, dll). _World_ menggambarkan posisi awal sebuah simulasi.
4. Object-object ini disebut sebagai _Nodes_ dan diorganisasi secara hierarki di dalam _Scene Tree_, oleh karena itu _Nodes_ bisa mempunyai _Sub-Nodes_ 
5.  _World_ memiliki ekstensi _.wbt_ dan harus disimpan dalam direktori dengan nama _worlds_
6. Buat _World_ baru dengan Close contoh simulasi yang diberikan oleh _Webots_ dan Pause simulasi yang sedang berjalan. Buka Tab `Wizard` dan klik `New Project Directory...`, lalu ikuti petunjuk Wizard
(**Selesai pada 12 November 2019, jam 21.04**)      
7. Beri nama direktori `my_first_simulation`dan namakan _world_ dengan nama `my_first_simulation.wbt`, dan centang semua Tickbox
(**Selesai pada 12 November 2019, jam 21.06**)     
8. _Webots_ akan menampilkan List semua direktori yang akan dibuatnya, klik Finish, dan tunggu _World_ dibuatkan
(**Selesai pada 12 November 2019, jam 21.08**)     
9. _Nodes_ dari _Webots_ ini disusun secara hierarki dan teratur pada Scene Tree yang ada di sebelah kiri. Scene Tree pada saat ini seharusnya berisi :
      * WorldInfo : mengandung parameter global dari simulasi
      * Viewpoint : mendefinisikan viewpoin utama dari parameter camera
      * TexturedBackground : Mendefinisikan background dari scene
      * TexturedBackgroundLight : Mendefinisikan cahaya pada scene
      * Rectangle Arena : mendefinisikan satu-satunya object yang ada pada Scene saat ini
10. Double-click pada `RectangleArena`dan Modify beberapa Fields yang ada di dalamnya seperti :
    * Ubah `floorTileSize` dari `0.5 0.5` ke `0.25 0.25`
    * Ubah  `wallHeight` dari `0.1` ke `0.05`
 (**Selesai pada 12 November 2019, jam 21.10**)      
 
11. Double-click pada `RectangleArena` untuk mengclose dan menselect nya lagi, tambahkan _node_ baru dengan mengklik Plus (+) Button pada bagian atas dari _Scene Tree_ dan pilih :
```
PROTO nodes (Webots Projects) / objects / factory / containers / WoodenBox (Solid)
```
Sebuah Box besar akan muncul di tengah-tengah scene
(**Selesai pada 12 November 2019, jam 21.12**)     
         
12. Modify beberapa Fields yang ada pada Box tersebut 
    * Ubah `size` dari `0.6 0.6 0.6` ke `0.1 0.1 0.1`
    * Ubah  `translation` dari `0 0.05 0` ke `0 0.3 0`
    * Shift-Click box tersebut dan pindah ke tengah-tengah scene
    * Copy-Paste box tersebut hingga berjumlah 3 biji
    * Pindah-pindahkan posisi Box sehingga tidak ada yang berada di tengah-tengah arena
    * Save _World_ ketika sudah dirasa cukup penempatannya
 (**Selesai pada 12 November 2019, jam 21.16**)     
13.  Lakukan Reset pada _World_ dengan mengklik Reset (Rewind) Button. Pastikan untuk selalu mereset Simulasi sebelum melakukan save atau berlanjut ke step berikutnya. Hal ini bertujuan agar simulasi kita tidak mengalami Error
(**Selesai pada 12 November 2019, jam 21.16**)     
14. Double-click pada `WoodenBox` untuk mengclose dan menselect nya lagi, tambahkan _node_ baru dengan mengklik Plus (+) Button pada bagian atas dari _Scene Tree_ dan pilih :
```
PROTO nodes (Webots Projects) / robots / gctronic / e-puck / E-puck (Robot)
```
Sebuah Robot _E-puck_ akan muncul di tengah-tengah scene
(**Selesai pada 12 November 2019, jam 21.16**)     

15. Pindah-pindah Robot _E-puck_ ini agar posisinya pas dan Save _World_
(**Selesai pada 12 November 2019, jam 21.18**)     
16. Apply Force ke Robot dengan `Ctrl  + Alt + left-click + drag`, kita tidak bisa memberi force pada Box karena pada saat ini Box dianggap tidak memiliki masa dan menempel ke lantai. Kita nantinya akan bisa memberi Force apabila kita memberi massa ke Box tersebut      
(**Selesai pada 12 November 2019, jam 21.20**)    
17. Pause simulasi dan kembalikan ke posisi awal, buka _node_ `Worldinfo` dan Modify Fields `basicTimeStep` menjadi `16` dan Save _World_     
(**Selesai pada 12 November 2019, jam 21.22**)    
18. _Controller_ adalah program yang mengatur perilaku dari sebuah Robot. Controller bisa ditulis dalam bahasa _C, C++, Java, Python, MATLAB, ROS_. Setiap _Controller_ bisa digunakan oleh lebih dari satu Robot, tetapi satu Robot hanya bisa mempunyai satu _Controller_.
19. Buat C++ Controller baru dengan nama `EPuckGoForward` dengan Buka Tab `Wizard` dan klik `New Robot Controller...`, lalu ikuti petunjuk Wizard       
(**Selesai pada 12 November 2019, jam 21.24**)    
20. Copy Code berikut ini pada file tersebut dengan cara Copy-Paste ke Editor _Webots_ yang ada di sebelah kanan :
```cpp
#include <webots/Robot.hpp>

// Added a new include file
#include <webots/Motor.hpp>

#define TIME_STEP 64

// All the webots classes are defined in the "webots" namespace
using namespace webots;

int main(int argc, char **argv) {
 Robot *robot = new Robot();

 // get the motor devices
 Motor *leftMotor = robot->getMotor("left wheel motor");
 Motor *rightMotor = robot->getMotor("right wheel motor");
 // set the target position of the motors
 leftMotor->setPosition(10.0);
 rightMotor->setPosition(10.0);

 while (robot->step(TIME_STEP) != -1);

 delete robot;

 return 0;
}
```
(**Selesai pada 12 November 2019, jam 21.27**)       

21. Double-click pada `E-puck`dan Modify Fields `controller` yang ada di dalamnya dengan klik `select...` dan pilih _Controller_ `EPuckGoForward`, lalu klik `File / Save Text File` dan compile `Build / Build`. Lalu klik Reset dan jalankan simulasi. Robot akan berjalan dan berhenti ketika roda sudah berputar 10 radian     
(**Selesai pada 12 November 2019, jam 21.30**)   
22. Lakukan editing pada Code agar Robot berjalan terus tanpa henti dengan kecepatan tertentu (memiliki Speed Control) dan bukan hanya harus menempuh seberapa jauh jaraknya dengan Copy-Paste :
```cpp
#include <webots/Robot.hpp>

// Added a new include file
#include <webots/Motor.hpp>

#define TIME_STEP 64

#define MAX_SPEED 6.28

// All the webots classes are defined in the "webots" namespace
using namespace webots;

int main(int argc, char **argv) {
 Robot *robot = new Robot();

 // get a handler to the motors and set target position to infinity (speed control)
 Motor *leftMotor = robot->getMotor("left wheel motor");
 Motor *rightMotor = robot->getMotor("right wheel motor");
 leftMotor->setPosition(INFINITY);
 rightMotor->setPosition(INFINITY);

 // set up the motor speeds at 10% of the MAX_SPEED.
 leftMotor->setVelocity(0.1 * MAX_SPEED);
 rightMotor->setVelocity(0.1 * MAX_SPEED);

 while (robot->step(TIME_STEP) != -1);

 delete robot;

 return 0;
}
``` 
(**Selesai pada 12 November 2019, jam 21.35**)

23. Dari Tutorial Part pertama ini, kita belajar :
    * Sebuah _World_ tersusun dari berbagai macam _node_ yang tersusun di dalam Scene Tree
    * _World_ disimpan dalam sebuah file berekstensi `.wbt` dalam sistem _Webots_
    * Project ini juga mengandung Controller yang mengatur perilaku dari robot kita
    * Controller bisa ditulis dalam bahasa _C, C++, Java, Python, MATLAB, ROS_.
    * Controller dalam bahasa _C, C++, dan Java_ harus dicompile terlebih dahulu
    * Controller diasosiasikan melalui Field `controller` yang ada pada _node_ robot

### 2. Modifikasi Environment

1. Buka `my_first_simulation.wbt`dan kemudian Reset Simulasi dan kemudian Save As dengan cara `File / Save World As...`sebagai `obstacles.wbt`       
(**Selesai pada 12 November 2019, jam 21.40**)              
2.  Hapus `RectangleArena` dengan menekan tombol `Delete` dan tambahkan _node_ baru dengan mengklik Plus (+) Button pada bagian atas dari _Scene Tree_ dan pilih :
```
PROTO nodes (Webots Projects) / objects / floors / Floor (Solid)
```
Sebuah _Floor_ baru akan muncul di tengah-tengah scene
(**Selesai pada 12 November 2019, jam 21.42**)         

3. Double-click pada `Floor`dan Modify beberapa Fields `size`dari `10m x 10m` menjadi `1m x 1m`
(**Selesai pada 12 November 2019, jam 21.44**)   
4. Sebuah _Node Solid_ menggambarkan benda tegar, yaitu sebuah benda yang tidak akan bisa terdeformasi dan jarak antar 2 titik di dalam benda itu tidak akan pernah berubah dalam waktu, kecuali ada Force yang sangat besar sehingga merusak ketegaran tersebut.
5. Untuk mendefinisikan Benda tegar kita harus membuat _Node Solid_ yang di dalamnya ada beberapa _Sub-Node_ seperti :
    * `children` : berisi bentuk dari benda tegar tersebut
    * `boundingObjects` : berisi area kolisi benda tegar tersebut
    * `physics` : berisi pengaturan apakah benda tegar tersebut termasuk dalam lingkungan yang statis atau dinamis
6. Di dalam Scene Tree. pilih _node_ `solid` dan klik tombol `Add`, Kemudian pilih `Bases nodes` dan pilih _Solid Node_. 
(**Selesai pada 12 November 2019, jam 21.44**)   
7. Di dalam Scene Tree, perbesar _Solid Node_ dan kemudian pilih Field `children`, tambahkan _node shape_ dengan mengklik tombol `Add`, kemudian pilih FIeld `appearance`dan tambahkan _node_ `PBRAppearance`
(**Selesai pada 12 November 2019, jam 21.46**)
8. Kemudian tambahkan _Node Sphere_ di dalam Field `geometry` dan Modify beberapa Field di dalamnya seperti:
    *  Perbesar _node- `PBRAppearance` dan ubah FIeld `metalness` ke `0` dan ubah Field `roughness` ke `1`
    * Tambahkan _Node Sphere_ ke Field `boundingObject`
    * Tambahkan _Node Physics_ ke Field  `solid`
    * Modify Field `translation` agar posisi bola menjadi berada di depan robot
    * Save simulasi
    * Kita bisa menggerakkan bola dengan memberi Force `Ctrl + Alt + left-click + drag`
(**Selesai pada 12 November 2019, jam 21.50**)
9. Untuk setiap _Node Sphere_ yang mendefinisikan bola, kita atur FIeld `radius` ke `0.05` dan Field `subdivision` ke `2` untuk meningkatkan kualitas Graphical dari bola tersebut
(**Selesai pada 12 November 2019, jam 21.50**)
10. Mekanisme _DEF-USE_ digunakan untuk mendefinisikan sebuah _node_ di satu tempat kemudian menggunakan definisi tersebut kembali pada tempat yang lainnya di dalam Scene Tree. Kemudian, hal ini juga mempermudah pengguna untuk mengubah beberapa object sekaligus
11. Cara kerjanya adalah pertama kita melabel _node_ utama dengan label _DEF, kemudian kita mengcopy _node_ ini dan melabelinya dengan label _USE_. Kita hanya bisa mengedit _node_ berlabel _DEF_ saja karena _node_ berlabel _USE_ akan mewarisi semua sifat-sifatnya
12. Pilih _Node Sphere_ di dalam Scene Tree dan modifiy beberapa Fields :
    * Masukkan `BALL_GEOMETRY` di dalam Field Editor dimana kita bisa memasukkan _DEF String_
    * pilih _node_ `boundingObjects` dan kosongkan dengan klik-kanan dan memilih `Delete`
    * Kemudian, pilih _node_ `boundingObjects` dan klik button `Add` dan pilih `USE / BALL_GEOMETRY`di dalam dialog box
(**Selesai pada 12 November 2019, jam 21.55**)      
13. Buat bola kedua dengan parameter yang sama menggunakan _Shape Node_ menggunakan _DEF-USE_
(**Selesai pada 12 November 2019, jam 22.00**)      
14. Sekarang kita akan membuat 4 dinding dengan Physics Dinamic. Apa bedanya Static dengan Dinamic? Apabila di dalam Field `physics` kita tidak memberi nilai, maka physics dari benda tersebut adalah statis dan hanya akan berhenti di udara. Namun apabila Field `physics` kita beri nilai, maka physics dari benda tersebut adalah dinamis, yang berarti apabila kita melepas di udara, benda tersebut akan jatuh
(**Selesai pada 12 November 2019, jam 22.10**)
15. Simulasi dari benda tegar sangat mahal dan sulit untuk dilakukan. Oleh karena itu kita perlu mencari sebuah titik keseimbangan antara realisme dan kecepatan simulasi.
16. Save simulasi      
(**Selesai pada 12 November 2019, jam 22.12**)
17. Dari Tutorial Part kedua ini, kita belajar :
     * Membuat lingkungan sederhana yang didasarkan pada benda tegar
     * Bisa menambahkan _node_ dari Scene Tree dan memodifikasi _Field_ mereka
     * Semakin mengenal _node_ `Solid, Physics, Shape, Sphere, Box`
     * Bisa menggunakan mekanisme _DEF-USE_

### 3. Modifikasi Penampilan
