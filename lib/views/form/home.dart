import 'package:flutter/material.dart';
import 'package:gestor_combustible/views/form/fuelLevel.dart';
import 'package:gestor_combustible/views/form/sensors.dart';
import 'package:gestor_combustible/views/form/suggestions.dart';


class MainMenu extends StatelessWidget {
  final String userName;

  final String carModel;

  MainMenu({required this.userName, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        backgroundColor: const Color.fromARGB(255, 253, 253, 255),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Text("Estado"),
                Icon(Icons.verified_user),
              ],
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/img/fondo1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        //color: Color.fromARGB(255, 190, 235, 238),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Bienvenido, $userName',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 253, 190, 0),
                        fontFamily: "Poppins-Bold",
                        letterSpacing: .6)),
                
                Text('Carro: $carModel',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 3, 3),
                        fontFamily: "Poppins-Bold",
                        letterSpacing: .6)),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FuelLevelPage()),
                );
              },
              child: Text('Nivel de Combustible'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SensorsList()),
                );
              },
              child: Text('Supervisar Sensores'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuggestionsPage()),
                );
              },
              child: Text('Sugerencias'),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
