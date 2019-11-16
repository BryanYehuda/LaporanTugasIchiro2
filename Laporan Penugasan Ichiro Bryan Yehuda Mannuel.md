Nama : Bryan Yehuda Mannuel       
NRP : 05311940000021
Departemen : Teknologi Informasi (IT)       
Divisi : Programming

## Persiapan Sebelum Penugasan

 1. _OS Linux Ubuntu_ sudah terinstall                           
 2. Tutorial _ROS Melodic Morenia_ sudah terselesaikan
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
