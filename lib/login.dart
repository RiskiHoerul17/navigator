
import 'package:navigator/profil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Image.asset('assets/vokasi_logo-fill.png'),
              const SizedBox(
                height: 20,
              ),

              Text(
              'Sekolah Vokasi',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 156, 150, 150),  
              ),
              ),
              Text(
              'Unggul, Mandiri, & Berkarakter',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 156, 150, 150),  
              ),
              ),

              const SizedBox(
                height: 200,
              ),

              ElevatedButton(onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => ProfileD());
                  Navigator.push(context, route);
              },
               style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 221, 170, 29), 
               minimumSize: const Size(220, 40), shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),
               ),),
               child: const Text(' Login ')
               ),
              
              ElevatedButton(onPressed: () {},
               style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 255, 255, 255), 
               onPrimary: const Color.fromARGB(255, 221, 170, 29), minimumSize: const Size(220, 40), shape: RoundedRectangleBorder(
               side: const BorderSide(color: Color.fromARGB(255, 206, 159, 30), width: 1),
               borderRadius: BorderRadius.circular(30.0),
               ),),
               child: const Text(' Register '))
  
            ],
          ),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
