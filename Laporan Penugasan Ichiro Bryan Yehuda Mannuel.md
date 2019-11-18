Nama : Bryan Yehuda Mannuel       
NRP : 05311940000021
Departemen : Teknologi Informasi (IT)       
Divisi : Programming

## Persiapan Sebelum Penugasan

 1. _OS Linux Ubuntu_ sudah terinstall                           
 2. Tutorial _ROS Melodic Morenia_ sudah terselesaikan. Laporan bisa dilihat di [Laporan Penugasan Pertama](https://github.com/BryanYehuda/LaporanTugasIchiro1/blob/master/Laporan%20Penugasan%20Ichiro%20Bryan%20Yehuda%20Mannuel.md)
 3. Sudah mempelajari dan familier dengan Syntax _Markdown_

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

1. Buka `obstacles.wbt`dan kemudian Reset Simulasi dan kemudian Save As dengan cara `File / Save World As...`sebagai `appearances.wbt`       
(**Selesai pada 12 November 2019, jam 22.14**)
2. Lighting dari sebuah _World_ ditentukan oleh _node_ `Lights` dan ada beberapa tipe seperti :
    * `DirectionalLight` Mensimulasikan cahaya dari sumber yang sangat jauh seperti matahari
    * `PointLight` Mensimulasikan cahaya dari satu sumber, seperti bohlam lampu
    * `SpotLight` Mensimulasikan cahaya dari sumber berbentuk corong seperti senter
3. _Node_ ` Appearance` dan `PBRAppearance` dari _Node Shape_ menentukan penampilan graphical dari sebuah objek dan bertanggung jawab atas warna dan tekstur dari objek tersebut
4. Di dalam _Node Shape_ tambahkan _Node_ `PBRAppearance` ke dalam Field `Appearance`, hal ini karena _Node_ `PBRAppearance`akan lebih bagus apabila dirender. Lakukan Modify terhadap Fields :
     * Ubah `baseColor` menjadi biru
     * Ubah `metalness` menjadi `0`
     * Ubah `roughness` menjadi `0.5`
  (**Selesai pada 12 November 2019, jam 22.16**)
 5. Tambahkan _Node_ `PBRAppearance` ke dalam Field `Appearance`ke dalam bola dan modify beberapa Fields :
     * Ubah `metalness` menjadi `0`
     * Ubah `roughness` menjadi `0.5`
     * Tambahkan _Node_ `ImageTexture` kedalam Field `baseColorMap`
     * Tambahkan item ke  _Node_ `ImageTexture` dengan mengklik Button Plus
     * Masukkan Url : `usr/local/webots/projects/default/worlds/textures/red_brick_wall.jpg`
  (**Selesai pada 12 November 2019, jam 22.20**)
6. _Webots_ memberikan beberapa opsi terkait dengan rendering yang ada di dalam menu `view`
7. Lihat Simulasi di dalam Wireframe Mode menggunakan `View / Wireframe Rendering`dan kembalikan ke Mode Awal dengan `View / Plain Rendering`
(**Selesai pada 12 November 2019, jam 22.22**)
8. Dari Tutorial Part ketiga ini, kita belajar :
     * Cara membuat simulasi kita menjadi lebih cantik melalui _Node_ `PBRAppearance` dan _Node_ `lights`

### 4. Lebih Dalam Tentang Controller
1. Buka `appearances.wbt`dan kemudian Reset Simulasi dan kemudian Save As dengan cara `File / Save World As...`sebagai `collision_avoidance.wbt`   
(**Selesai pada 12 November 2019, jam 22.24**)
2. Buat C++ Controller baru dengan nama `EPuckAvoidCollision` dengan Buka Tab `Wizard` dan klik `New Robot Controller...`, lalu ikuti petunjuk Wizard       
(**Selesai pada 12 November 2019, jam 22.26**)  
3. Untuk membuat Controller bagi Robot _E-puck_ ini, kita perlu memahami informasi tambahan mengenai robot ini. Agar bisa membuat algoritma Collision Avoidance, kita pelru membaca nilai dari ke-8 infra-red Sensors yang ada di sekitar badan Robot ini. Lalu berdasarkan nilai itu, kita gerakkan kedua rodanya
4. Nilai dari Sensor ini dinyatakan dalam angka 4096 sampai 0, dimana angka 4096 berarti jaraknya sangat dekat dan angka 0 berarti jaraknya jauh
5. Kita sekarang akan memprogram Robot _E-puck ini untuk maju terus sampai Sensor depan mendeteksi adanya Obstacle di depan dengan code :
```cpp
#include <webots/Robot.hpp>
#include <webots/DistanceSensor.hpp>
#include <webots/Motor.hpp>

// time in [ms] of a simulation step
#define TIME_STEP 64

#define MAX_SPEED 6.28

// All the webots classes are defined in the "webots" namespace
using namespace webots;

// entry point of the controller
int main(int argc, char **argv) {
  // create the Robot instance.
  Robot *robot = new Robot();

  // initialize devices
  DistanceSensor *ps[8];
  char psNames[8][4] = {
    "ps0", "ps1", "ps2", "ps3",
    "ps4", "ps5", "ps6", "ps7"
  };

  for (int i = 0; i < 8; i++) {
    ps[i] = robot->getDistanceSensor(psNames[i]);
    ps[i]->enable(TIME_STEP);
  }

  Motor *leftMotor = robot->getMotor("left wheel motor");
  Motor *rightMotor = robot->getMotor("right wheel motor");
  leftMotor->setPosition(INFINITY);
  rightMotor->setPosition(INFINITY);
  leftMotor->setVelocity(0.0);
  rightMotor->setVelocity(0.0);

  // feedback loop: step simulation until an exit event is received
  while (robot->step(TIME_STEP) != -1) {
    // read sensors outputs
    double psValues[8];
    for (int i = 0; i < 8 ; i++)
      psValues[i] = ps[i]->getValue();

    // detect obstacles
    bool right_obstacle =
      psValues[0] > 70.0 ||
      psValues[1] > 70.0 ||
      psValues[2] > 70.0;
    bool left_obstacle =
      psValues[5] > 70.0 ||
      psValues[6] > 70.0 ||
      psValues[7] > 70.0;

    // initialize motor speeds at 50% of MAX_SPEED.
    double leftSpeed  = 0.5 * MAX_SPEED;
    double rightSpeed = 0.5 * MAX_SPEED;
    // modify speeds according to obstacles
    if (left_obstacle) {
      // turn right
      leftSpeed  += 0.5 * MAX_SPEED;
      rightSpeed -= 0.5 * MAX_SPEED;
    }
    else if (right_obstacle) {
      // turn left
      leftSpeed  -= 0.5 * MAX_SPEED;
      rightSpeed += 0.5 * MAX_SPEED;
    }
    // write actuators inputs
    leftMotor->setVelocity(leftSpeed);
    rightMotor->setVelocity(rightSpeed);
  }

  delete robot;
  return 0; //EXIT_SUCCESS
}
```
(**Selesai pada 12 November 2019, jam 22.30**)

6.  Bagian :
 ```cpp
// initialize devices
DistanceSensor *ps[8];
char psNames[8][4] = {
  "ps0", "ps1", "ps2", "ps3",
  "ps4", "ps5", "ps6", "ps7"
};

for (int i = 0; i < 8; i++) {
  ps[i] = robot->getDistanceSensor(psNames[i]);
  ps[i]->enable(TIME_STEP);
}
```
Berarti kita harus menginisialisasi, mendapatkan, dan menjalankan Sensor Jarak terlebih dahulu

7. Bagian :
 ```cpp
Motor *leftMotor = robot->getMotor("left wheel motor");
Motor *rightMotor = robot->getMotor("right wheel motor");
leftMotor->setPosition(INFINITY);
rightMotor->setPosition(INFINITY);
leftMotor->setVelocity(0.0);
rightMotor->setVelocity(0.0);
```
Berarti kita harus menginisialisasi, mendapatkan, dan menjalankan kedua motor dari robot

8. Bagian :
```cpp
// read sensors outputs
double psValues[8];
for (int i = 0; i < 8 ; i++)
  psValues[i] = ps[i]->getValue()
 ```
 Berarti kita harus membaca Output dari Sensor Jarak

9. Bagian:
 ```cpp
// detect obstacles
bool right_obstacle =
  psValues[0] > 70.0 ||
  psValues[1] > 70.0 ||
  psValues[2] > 70.0;
bool left_obstacle =
  psValues[5] > 70.0 ||
  psValues[6] > 70.0 ||
  psValues[7] > 70.0;
```
Berarti kita mendeteksi apakah ada sesuatu objek atau halangan yang ada di depan kita

10. Bagian :
```cpp
#define MAX_SPEED 6.28
...
// initialize motor speeds at 50% of MAX_SPEED.
double leftSpeed  = 0.5 * MAX_SPEED;
double rightSpeed = 0.5 * MAX_SPEED;
// modify speeds according to obstacles
if (left_obstacle) {
  // turn right
  leftSpeed  += 0.5 * MAX_SPEED;
  rightSpeed -= 0.5 * MAX_SPEED;
}
else if (right_obstacle) {
  // turn left
  leftSpeed  -= 0.5 * MAX_SPEED;
  rightSpeed += 0.5 * MAX_SPEED;
}
// write actuators inputs
leftMotor->setVelocity(leftSpeed);
rightMotor->setVelocity(rightSpeed);
```
Berarti kita menggunakan informasi dari bagian sebelumnya untuk menjalankan kedua roda dari Robot tersebut

11. Dari bagian keempat ini, kita mempelajari :
    * Controller Entry Point adalah `main function` sama sepoerti Code dalam bahasa C++ pada umumnya
    * Tidak boleh ada Function `Webots API` yang diapnngil sebelum Function `wp_robots_init`
    * Function terakhir yang dipanggil sebelum `main function` berakhir adalah Function `wp_robot_cleanup
    * Sebuah Device direferensikan oleh Field `name` dari _node_ device tersebut. dan bisa diambil menggunakan Function `wp_robot_get_device`
    * Setiap controller dijalankan sebagai proses anak dari _Webots_, sehingga proses ini tidak berbagi memori dengan _Webots_ dan bisa dijalankan oleh CPU yang berbeda-beda
    * Code Controller dihubungkan oleh Library `libController` kepada _Webots_

### 5.Compound Solid dan Physics Attribute
1. Buka `collision_avoidance.wbt`dan kemudian Reset Simulasi dan kemudian Save As dengan cara `File / Save World As...`sebagai `compound_solid.wbt`   
(**Selesai pada 12 November 2019, jam 22.24**)
2. Kita bisa membuat _Nodes Solid_ yang lebih kompleks lagi dengan cara mengubah bentuk _Shape Nodes_ secara imajinatif. Hal ini mungkin dilakukan karena Properties secara Physical maupun Graphical bisa terdiri dari berbagai macam bentuk _Shape Nodes_. Dan kemudian Nodes-nodes ini disatukan dalam satu grup dengan _Group Nodes_
3. Buat bentuk Dumbbell dengan menyatukan 2 Shape Sphere dan 1 Shape Cylinder
(**Selesai pada 12 November 2019, jam 22.35**)     
4. Massa dari suatu benda tegar diberikan oleh Field `mass` atau Field `density`. kita hanya bisa menggunakan salah satu dari Field ini.
5. Atur Field `mass` pada Dumbbell menjadi `2kg`
(**Selesai pada 12 November 2019, jam 22.36**)    
6. Secara default Pusat Massa atau Center of Mass didefinisikan pada pusat benda namun kita juga bisa mengubahnya
7. Ubah Pusat Massa Dumbbell menjadi `0.01m`
(**Selesai pada 12 November 2019, jam 22.37**)     
8. Field `rotation` digunakan untuk menentukan rotasu dari sebuah objek berpacu pada grafik Euler. Grafik Euler ini didefinisikan oleh 4 titiki, dimana 3 titik pertama berisi unit vector yang menentukan sumbu rotasi dan titik ke 4 menentukan derajat rotasi
9. Ubah Deraja Rotasi Dumbbell agar paralel dengan lantai
(**Selesai pada 12 November 2019, jam 22.40**)      
10. Ketika 2 benda padat bertabrakan, Contacts terjadi di titik tabrakan. _Nodes_ `contactProperties` bisa digunakan untuk menentukan perilaku yang diinginkan pada saat terjadi kontak
11. Ubah Field `contactMaterial` pada _Node_ `WorldInfo` dan tambahkan _Node_ ` ContactProperties` antara kategori `default` dan `dumbbell`. Lalu ubah Field `couloumbFriction` menjadi `0` agar Dumbbell bergeser dan tidak menggelinding karena tidak ada gaya gesek
(**Selesai pada 12 November 2019, jam 22.44**)      
12. Field `basicTimeStep` menentukan seberapa cepat sebuah simulasi terjadi. Semakin besar, semakin cepat simulasinya namun semakin tidak Real simulasinya. Oleh karena itu, dibutuhkan sebuah keseimbangan.
13. Dari Dari bagian kelima ini, kita mempelajari :
    * Cara membuat benda padat, termasuk yang terdiri dari gabungan beberapa _Shapes Nodes_
    * Mengetahui semua Physics Parameter yang dibutuhkan untuk membuat simulasi Robot yang Real
    * Kita tahu bahwa _node_ `geometry` bisa digerakkan dan dirotasi
 
### 6. Robot Beroda Empat

1. Buka `compound_solid.wbt`dan kemudian Reset Simulasi dan kemudian Save As dengan cara `File / Save World As...`sebagai `4_wheels_robot.wbt`   
(**Selesai pada 12 November 2019, jam 22.50**)
2. Hapus _Node_ E-Puck, Bola, dan Dumbbell
(**Selesai pada 12 November 2019, jam 22.51**)
3. Set yang mengandung _Node_ Solid dan semua _Node_ turunannya disebut _Solid Nodes_. Definisi yang sama juga berlaku bagi Device, Robot, Joint, dan Motor. Sedangkan Sensor dan Actuator merupakan kombinasi dari Solid dan Device
4. Stuktur utama dari sebuah Robot adalah sebuah pohon dari _Node_ Solid yang dihubungkan secara bersama-sama. Root dari pohon ini haruslah _Node_ Robot. Solid-solid dari pohon ini digabungkan oleh _Joint Nodes_. Sebuah Device haruslah anak dari _Node_ Robot, Solid, atau Joint.
5. _Jooint Node_ digunakan untuk menambahkan 1 atau 2 derajat kebebasan (DOF / Degree of Freedom) antara Orangtua dan Anaknya. Orangtua dan Anak secara langsung yang dihubungkan oleh _Joint Nodes_ kedua-duanya adalah _Nodes_ Solid. Joint adalah semacam sendi pada manusia
6. _Joint Node_ bisa dimonitor atau digerakkan dengan menambahkan sebua Node `PositionSensor` atau _Node_ Motor pada Field `device`
7. Buat Robot yang terdiri dari 4 _Nodes_ Sphere dan 1 _Nodes_ Box, dimana kelima _Nodes_ ini disambungkan oleh _Joint Nodes_ agar memiliki DOF
(**Selesai pada 12 November 2019, jam 23.10**)
8. Kita set _Nodes_ Solid milik Body atau Box menjadi _Robot Nodes_ atau root dari Robot kita
(**Selesai pada 12 November 2019, jam 23.12**)
9. Set Color dari Shape Box ini menjadi Merah
(**Selesai pada 12 November 2019, jam 23.14**)
10. Set Field `boundingObject` menjadi `(0.1, 0.05, 0.2)` dan beri _Nodes_ Physic ke Robot tersebut
(**Selesai pada 12 November 2019, jam 23.20**)
11. Tamabahkan _Nodes_ `HingeJointParameter` ke roda pertama dan ubah value Anchornya menjadi `0.06, 0, 0.05`, value Axisnya menjadi `(1, 0, 0)` dan ubah Solid Translationnya menjadi `0.06, 0, 0.05`
(**Selesai pada 12 November 2019, jam 23.24**)
12. Tambahkan _Nodes_ ini pada roda-roda lainnya dan jangan lupa menambahkan _Nodes_ Physic ke Roda-roda tersebut
(**Selesai pada 12 November 2019, jam 23.40**)
13. Untuk tiap `HingeJoint` kita perlu menambahkan _Node_ :
    * `jointParameter` dan ubah nilai Anchornya menjadi `0.06 0 -0.05)` dan nilai Axisnya menjadi `(1 0 0)`
    * `device` tambahkan `RotationalMotor` agar kita bisa menjalankan roda dan ubah Field `name` mereka menjadi `wheel1` sampai `wheel4`
    * `endPoint` Tambahkan _Nodes_ Solid kemudian _Shape Node_ di dalam Field `children` dan kemudian tambahkan Cylinder di dalam Field `geometry`. Cylinder ini harus mempunyai `radius` sebesar `0.04`dan `height` `0.02`. Ubah warnanya menjadi hijau.
(**Selesai pada 13 November 2019, jam 00.30**)
14. Tambahkan 2 sensor jarak pada robot ini dengan cara menambahkan 2 _Nodes_ `DistanceSensor`sebagai anak dari _Robot Nodes_
(**Selesai pada 13 November 2019, jam 00.32**)
15. Ubah bentuk mereka menjadi kotak dan mempunyai `edge` sebesar `0.01m`. Ubah warna mereka menjadi biru dan ubah nama mereka menurut grafik
(**Selesai pada 13 November 2019, jam 00.35**)
16. Buat C++ Controller baru dengan nama ``4WheelsCollisionAvoidance`` dengan Buka Tab `Wizard` dan klik `New Robot Controller...`, lalu ikuti petunjuk Wizard       
(**Selesai pada 13 November 2019, jam 00.37**)    
17. Copy Code berikut ini pada file tersebut dengan cara Copy-Paste ke Editor _Webots_ yang ada di sebelah kanan :
```cpp
#include <webots/DistanceSensor.hpp>
#include <webots/Motor.hpp>
#include <webots/Robot.hpp>

#define TIME_STEP 64
using namespace webots;

int main(int argc, char **argv) {
  Robot *robot = new Robot();
  DistanceSensor *ds[2];
  char dsNames[2][10] = {"ds_right", "ds_left"};
  for (int i = 0; i < 2; i++) {
    ds[i] = robot->getDistanceSensor(dsNames[i]);
    ds[i]->enable(TIME_STEP);
  }
  Motor *wheels[4];
  char wheels_names[4][8] = {"wheel1", "wheel2", "wheel3", "wheel4"};
  for (int i = 0; i < 4; i++) {
    wheels[i] = robot->getMotor(wheels_names[i]);
    wheels[i]->setPosition(INFINITY);
    wheels[i]->setVelocity(0.0);
  }
  int avoidObstacleCounter = 0;
  while (robot->step(TIME_STEP) != -1) {
    double leftSpeed = 1.0;
    double rightSpeed = 1.0;
    if (avoidObstacleCounter > 0) {
      avoidObstacleCounter--;
      leftSpeed = 1.0;
      rightSpeed = -1.0;
    } else { // read sensors
      for (int i = 0; i < 2; i++) {
        if (ds[i]->getValue() < 950.0)
          avoidObstacleCounter = 100;
      }
    }
    wheels[0]->setVelocity(leftSpeed);
    wheels[1]->setVelocity(rightSpeed);
    wheels[2]->setVelocity(leftSpeed);
    wheels[3]->setVelocity(rightSpeed);
  }
  delete robot;
  return 0;  // EXIT_SUCCESS
}
```
(**Selesai pada 13 November 2019, jam 00.40**)

18. Dimana bagian :
   ```cpp
#include <webots/Motor.hpp>
```
Berguna untuk memasukkan API yang dibutuhkan oleh _Nodes_ `RotationalMotor`

19. Bagian :
 ```cpp
// initialize motors
Motor *wheels[4];
char wheelsNames[4][8] = {"wheel1", "wheel2", "wheel3", "wheel4"};
for (int i = 0; i < 4 ; i++)
  wheels[i] = robot->getMotor(wheelsNames[i]);
```
Berguna untuk menginisialisasi dan mendapatkan referensi dari _Nodes_ `RotationalMotor`

20. Bagian :
```cpp
double speed = -1.5; // [rad/s]
wheels[0]->setPosition(INFINITY);
wheels[0]->setVelocity(speed);
```
Digunakan untuk menjalankan Robot berdasarkan kecepatan yang kita inginkan

21. Bagian :
```cpp
 int avoidObstacleCounter = 0;
  while (robot->step(TIME_STEP) != -1) {
    double leftSpeed = 1.0;
    double rightSpeed = 1.0;
    if (avoidObstacleCounter > 0) {
      avoidObstacleCounter--;
      leftSpeed = 1.0;
      rightSpeed = -1.0;
    } else { // read sensors
      for (int i = 0; i < 2; i++) {
        if (ds[i]->getValue() < 950.0)
          avoidObstacleCounter = 100;
      }
    }
```
Digunakan untuk mendapatkan bacaan dari Sensor dan kemudian mengirimkan datanya ke motor untuk diolah lebih lanjut sehingga Robot tidak menabrak Obstacle

22. Dari Dari bagian keenam ini, kita mempelajari :
    * Cara membuat Robot sederhana dan caranya mengimplementasikan controller

### 7. PROTO

1. Buka `4_wheels_robot.wbt` di dalam text editor dan kemudian Save As dengan cara `File / Save World As...`sebagai `FourWheelsRobot.proto` di dalam direktori `protos` dan buka juga di dalam text editor   
(**Selesai pada 13 November 2019, jam 09.03**)
2. Setiap File `Proto` harus mempunyai structure seperti berikut :
```
PROTO protoName [
  protoFields
]
{
  protoBody
}
```
3. `protoName` harus berisikan nama dari File PROTO, sedangkan `protoFields` mendefinisikan Fields yang bisa dimodifikasi dari _Nodes_ PROTO
4. Copy-Paster struktur awal PROTO File ini dan simpan :
```
 PROTO FourWheelsRobot [

  ]
  {
    Robot {
      ...
    }
  }
```
(**Selesai pada 13 November 2019, jam 09.08**)

5. Buka `4_wheels_robot.wbt` di dalam _Webots_ dan tambahkan _Nodes_ `FourWheelsRobot`yang ada di lokasi 
`PROTO nodes (Current Project) / FourWheelsRobot (Robot)`
(**Selesai pada 13 November 2019, jam 09.10**)
6.  Edit PROTO File  dan tambahkan line berikut :
```
PROTO FourWheelsRobot [
  field SFVec3f    translation  0 0 0
  field SFRotation rotation     0 1 0 0
  field SFFloat    bodyMass     1
]
{
  Robot {
    translation IS translation
    rotation IS rotation
    children [
      ...
    ]
    boundingObject USE BODY
    physics Physics {
      density -1
      mass IS bodyMass
    }
    controller "4_wheels_collision_avoidance"
  }
}

```
Sehingga yang awalnya _Nodes_ ini tidak mempunyai Fields, sekarang memounyai 3 Fields
(**Selesai pada 13 November 2019, jam 09.20**)

7. Save Simulasi
(**Selesai pada 13 November 2019, jam 09.21**)
8.  Dari Dari bagian ketujuh ini, kita mempelajari :
    * Cara membuat _Nodes_ PROTO dari _Nodes_ apapun yang ada di _Webots
    * Cara mengcopy definisi dari _Nodes_ yang ada di PROTO File
    * cara membuka dan menyambungkan PROTO Fields ke dalam _Nodes_ internal
 
### 8. Menyambungkan dengan ROS
1. Install ROS 
(**Selesai pada 8 November 2019, jam 09.30**)    
2. Jalankan Tutorial ROS. Laporan bisa dilihat di [Laporan Penugasan Pertama](https://github.com/BryanYehuda/LaporanTugasIchiro1/blob/master/Laporan%20Penugasan%20Ichiro%20Bryan%20Yehuda%20Mannuel.md)
(**Selesai pada 12 November 2019, jam 20.35**)
3. Install _webots_ros_ Package dengan command :
```
sudo apt-get install ros-melodic-webots-ros
```
Pada terminal Linux
(**Selesai pada 15 November 2019, jam 20.50**)

## Tugas 3 : Membuat Laporan Dalam Bentuk Markdown
    
1. Melakukan pengetikan laporan dalam bentuk _Markdown_ pada Text Editor StackEdit bersumber dari catatan di _Notes_          
2. Melakukan Update setiap kali ada aktivitas penugasan yang dikerjakan

## Tugas Bonus : Mengontrol Robot di Webots dengan ROS Melodic

1. Membuat package baru dengan nama terserah, namun saya namakan dengan nama webots123 dengan command :
```
cd /home
mkdir -p ~/webots123/src
cd ~/webots123
catkin_make
```
(**Selesai pada 18 November 2019, jam 19.31**)

2. Melakukan search di direktori usr untuk mencari list packages Webots yang sudah terinstall sebelumnya
(**Selesai pada 18 November 2019, jam 19.33**)
3. Ternyata saya menemukan packages Webots berada di direktori /usr/local/webots
(**Selesai pada 18 November 2019, jam 19.35**)
4. Melakukan copy pada direktori _webots_ros_ , _srv webots_ros_, dan _msg webots_ros_ yang masing-masing terletak pada direktori :
```
/usr/local/webots/projects/languages/ros/webots_ros
/usr/local/webots/projects/default/controllers/ros/include/srv webots_ros/
/usr/local/webots/projects/default/controllers/ros/include/msg webots_ros/
```
 yang ada di package webots123 yang sudah saya buat sebelumnya, direktori folder src adalah :
 ```
 /home/webots123/src
 ```
 (**Selesai pada 18 November 2019, jam 19.50**)

5. Melakukan _catkin_make_ untuk membuat package dengan command:
```
cd ~/webots123
catkin_make
```
 (**Selesai pada 18 November 2019, jam 19.55**)

6. Membuka file World berekstensi _.wbt_ yang ingin kita kontrol menggunakan _ROS_, pada penugasan ini saya membuka World pioneer3at yang memiliki nama pioneer3at.wbt
 (**Selesai pada 18 November 2019, jam 19.58**)
 7. Jalankan `roscore` dengan command :
 ``` 
 source devel/setup.bash
 roscore
 ```
 (**Selesai pada 18 November 2019, jam 20.00**)

7. Jalankan simulasi pioneer3at, dapat terlihat pada console tulisan :
``` 
The controller is now connected to the ROS master
```
yang menandakan bahwa benar simulasi pioneer3at memang terhubung ke sistem _ROS_
 (**Selesai pada 18 November 2019, jam 20.05**)
 
8. Buka terminal baru dan jalankan Robot kita dengan command :
```
cd ~/webots123
source devel/setup.bash
rosrun webots_ros pioneer3at
```
dapat terlihat pada simulasi bahwa robot kita benar-benar berjalan dan melakukan tugasnya dalam mapping setelah kita menuliskan command tersebut dalam sistem ROS
 (**Selesai pada 18 November 2019, jam 20.11**)

9. Untuk mengetahui lebih jauh, saya menginstall _ROS_ package _gmapping_ untuk mengetahui proses apa saja yang dikirimkan oleh Robot kita pada simulasi tersebut dengan command pada terminal baru :
```
sudo apt-get install ros-melodic-gmapping
rosrun gmapping slam _gmapping scan:=/pioneer3at/lms291/laser_scan/layer0 _xmax:=30 _xmin:=-30 _ymax:=-30 _delta:=0.2
```
 (**Selesai pada 18 November 2019, jam 20.20**)

10. Bisa terlihat pada terminal, proses atau message apa saja yang dikirimkan oleh Robot kita pada saat menjalankan simulasi. Hal ini memastikan bahwa benar Robot kita terkoneksi dengan baik pada sistem _ROS_
 (**Selesai pada 18 November 2019, jam 20.23**)
