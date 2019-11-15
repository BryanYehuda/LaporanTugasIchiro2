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
9.  Double-click pada `RectangleArena`dan Modify beberapa Fields yang ada di dalamnya seperti :
    * Ubah `floorTileSize` dari `0.5 0.5` ke `0.25 0.25`
    * Ubah  `wallHeight` dari `0.1` ke `0.05`
 (**Selesai pada 12 November 2019, jam 21.10**)      
 
10. Double-click pada `RectangleArena` untuk mengclose dan menselect nya lagi, tambahkan _node_ baru dengan mengklik Plus (+) Button pada bagian atas dari _Scene Tree_ dan pilih :
```
PROTO nodes (Webots Projects) / objects / factory / containers / WoodenBox (Solid)
```
Sebuah Box besar akan muncul di tengah-tengah scene
(**Selesai pada 12 November 2019, jam 21.12**)     
         
11. Modify beberapa Fields yang ada pada Box tersebut 
    * Ubah `size` dari `0.6 0.6 0.6` ke `0.1 0.1 0.1`
    * Ubah  `translation` dari `0 0.5 0` ke `0 0.3 0`
    * Shift-Click box tersebut dan pindah ke tengah-tengah scene
    * Copy-Paste box tersebut hingga berjumlah 3 biji
    * Pindah-pindahkan posisi Box sehingga tidak ada yang berada di tengah-tengah arena
    * Save _World_ ketika sudah dirasa cukup penempatannya
 (**Selesai pada 12 November 2019, jam 21.16**)     
12.  Lakukan Reset pada _World_ dengan mengklik Reset (Rewind) Button
(**Selesai pada 12 November 2019, jam 21.16**)     
13. Double-click pada `WoodenBox` untuk mengclose dan menselect nya lagi, tambahkan _node_ baru dengan mengklik Plus (+) Button pada bagian atas dari _Scene Tree_ dan pilih :
```
PROTO nodes (Webots Projects) / robots / gctronic / e-puck / E-puck (Robot)
```
Sebuah Robot _E-puck_ akan muncul di tengah-tengah scene
(**Selesai pada 12 November 2019, jam 21.16**)     

14. Pindah-pindah Robot _E-puck_ ini agar posisinya pas dan Save _World_
(**Selesai pada 12 November 2019, jam 21.18**)     
15. Apply Force ke Robot dengan `Ctrl  + Alt + left-click + drag`, kita tidak bisa memberi force pada Box karena pada saat ini Box dianggap tidak memiliki masa dan menempel ke lantai. Kita nantinya akan bisa memberi Force apabila kita memberi massa ke Box tersebut      
(**Selesai pada 12 November 2019, jam 21.20**)    
16. Pause simulasi dan kembalikan ke posisi awal, buka _node_ `Worldinfo` dan Modify Fields `basicTimeStep` menjadi `16` dan Save _World_     
(**Selesai pada 12 November 2019, jam 21.22**)    
17. _Controller_ adalah program yang mengatur perilaku dari sebuah Robot. Controller bisa ditulis dalam bahasa _C, C++, Java, Python, MATLAB, ROS_. Setiap _Controller_ bisa digunakan oleh lebih dari satu Robot, tetapi satu Robot hanya bisa mempunyai satu _Controller_.
18. Buat C++ Controller baru dengan nama `EPuckGoForward` dengan Buka Tab `Wizard` dan klik `New Robot Controller...`, lalu ikuti petunjuk Wizard       
(**Selesai pada 12 November 2019, jam 21.24**)    
19. Copy Code berikut ini pada file tersebut dengan cara Copy-Paste ke Editor _Webots_ yang ada di sebelah kanan :
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

20. Double-click pada `E-puck`dan Modify beberapa Fields `controller` yang ada di dalamnya dengan klik `select...` dan pilih _Controller_ `EPuckGoForward`, lalu klik `File / Save Text File` dan compile `Build / Build`. Lalu klik Reset dan jalankan simulasi. Robot akan berjalan dan berhenti ketika roda sudah berputar 10 radian     
(**Selesai pada 12 November 2019, jam 21.30**)   
21. Lakukan editing pada Code agar Robot berjalan terus tanpa henti dengan kecepatan tertentu (memiliki Speed Control) dan bukan hanya harus menempuh seberapa jauh jaraknya dengan Copy-Paste :
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

22. Dari Tutorial Part pertama ini, kita belajar :
    * Sebuah _World_ tersusun dari berbagai macam _node_ yang tersusun di dalam Scene Tree
    * _World_ disimpan dalam sebuah file berekstensi `.wbt` dalam sistem _Webots_
    * Project ini juga mengandung Controller yang mengatur perilaku dari robot kita
    * Controller bisa ditulis dalam bahasa _C, C++, Java, Python, MATLAB, ROS_.
    * Controller dalam bahasa _C, C++, dan Java_ harus dicompile terlebih dahulu
    * Controller diasosiasikan melalui Field `controller` yang ada pada _node_ robot

  ### 2. Modifikasi Environment
