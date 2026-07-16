// // This starting Point
// void main() {
//   /* This is my frist comment and code */
//   /*  var y = 50;
//   print (y) ;
//   int x = 20;
//   print (x);
//   double z =5.6;
//   print(z);
//   String name = "Ahmed";
//   print (name);
//   bool isAdmin =true;
//   print(isAdmin);*/
//   /* String frist = "Khaled";
//   String last = "Fahmy";
//   String full = "Hello $frist ${last.length}";
//   print(full);*/
//   // var age = 25;
//   /* if (age > 23) {
//     print("You are Accepted");
//   } else {
//     print("You are Rejected");
//   }*/
//   //Conditional Experssions
//   /*  var volume1 = 100;
//   var volume2 = 80;
//   volume1 > volume2
//       ? print("$volume1 is Biggest")
//       : print("$volume2 is Biggest");*/
//   /*var rule = "admin";

//   switch (rule) {
//     case "admin":
//       print("You have access to anything");
//       break;
//     case "user":
//       print("You have access to your account");
//       break;
//     case "editor":
//       print("You have access to your dashbord");
//       break;
//     default:
//       print("No rule Found | Wrong Rule");
//   }
//   for (int i = 0; i < 100; i++) {
//     if (i % 2 == 0) {
//       print(i);
//     }
//   }
//   var i = 0;
//   while (i < 100) {
//     if (i % 2 == 1) {
//       print(i);
//     }
//     i++;
//   }
//   var i = 0;
//   do {
//     print("$i - Zia");
//     i++;
//   } while (i < 10);
//   outerloop:
//   for (var i = 0; i < 5; i++) {
//     for (var j = 0; j < 5; j++) {
//       print("$i - $j");
//       if (i == 2 && j == 1) {
//         break outerloop;
//       }
//     }
//   }
//   print("zia");
//   //My Functions 1
//   void printMyName(String name) => print("Hello $name");

//   int findVolume(int x, int y, int z) {
//     int volume = x * y * z;              //لوهعمل نفس حركه المعادله اللي فوق هحذف كلمه return
//     return volume;
//   }

//   printMyName("Zaid");
//   int volume5 = findVolume(13, 12, 10);
//   int volume3 = findVolume(24, 22, 5);
//   print(volume3);
//   print(volume5);
//   printName("ziad", "ahmed", "abdelsalam");
// }

// void printName(String name1, String name2, String name3) {
//   print("Hello $name1");
//   print("Hello $name2");
//   print("Hello $name3");
// }*/

//   //في حاله وجود خطا هيكمل الكود ويقولك علي الخطا

//   /*try {
//     int x = 20 ~/ 0;
//     print("The result is $x");
//   } catch (e, s) {
//     print("The error is $e");
//     print("The Stack is $s");
//   }finally{
//     print("This code will always run");
//   }
//   print(" ");
//   print("Assem");

//   Function multiplyTwoNumbers = (a, b) => print(a * b);
//   anyName(15, multiplyTwoNumbers);
//   var mathCalc = mathCalculations();
//   mathCalc(5, 7, 8);
// }

// // Take Function as a parametar
// void anyName(int x, Function myFun) {
//   print("the number is $x");
//   myFun(7, 9);
// }

// //Return Function
// Function mathCalculations() {
//   Function multiplyThreeNumbers = (a, b, c) => print(a * b * c);
//   return multiplyThreeNumbers;
// }*/

// }

abstract class Person {
  String name;

  Person(this.name);

  void work();
}

mixin Drive {
  void drive() {
    print("Driving...");
  }
}

class Doctor extends Person with Drive {
  Doctor(String name) : super(name);

  @override
  void work() {
    print("$name is treating patients");
  }
}

class Teacher extends Person {
  Teacher(String name) : super(name);

  @override
  void work() {
    print("$name is teaching students");
  }
}

void main() {
  Person doctor = Doctor("Ahmed");
  Person teacher = Teacher("Sara");

  doctor.work();
  teacher.work();

  (doctor as Doctor).drive();
}
