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
