
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/sensor.dart';

List<Sensor> SensorsP(){
  
  final List<Sensor> sensors = [
    Sensor(name: 'GPS', type: 'GPS', value: 30.0),
    Sensor(name: 'Ultrasónico', type: 'Ultrasónico', value: 20.0),
    Sensor(name: 'Capacitivo', type: 'Sensor', value: 10.0),
    Sensor(name: 'flotador', type: 'Sensor', value: 25.0),
  ];

  return sensors;
  
}

// Clase para representar lecturas de sensores
class SensorReading {
  final String sensor;
  final int value;

  SensorReading(this.sensor, this.value);
}




class SensorsList extends StatelessWidget {
  final List<Sensor> sensors=SensorsP();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Sensores'),
      ),
      body: ListView.builder(
          itemCount: sensors.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(sensors[index].name),
                    subtitle: Text('Tipo: ${sensors[index].type} • Valor: ${sensors[index].value}'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200.0,
                      child: charts.BarChart(
                        _createSampleData(),
                        animate: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200.0,
                    child: charts.PieChart(
                      _createSamplePieData(),
                      animate: true,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    
  }

  List<charts.Series<Sensor, String>> _createSampleData() {
    return [
      charts.Series<Sensor, String>(
        id: 'Sensors',
        data: sensors,
        domainFn: (Sensor sensor, _) => sensor.name,
        measureFn: (Sensor sensor, _) => sensor.value,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        labelAccessorFn: (Sensor sensor, _) => '${sensor.value}',
      ),
    ];
  }

  List<charts.Series<Sensor, String>> _createSamplePieData() {
    return [
      charts.Series<Sensor, String>(
        id: 'Sensors',
        data: sensors,
        domainFn: (Sensor sensor, _) => sensor.name,
        measureFn: (Sensor sensor, _) => sensor.value,
        labelAccessorFn: (Sensor sensor, _) => '${sensor.name}: ${sensor.value}',
      )
    ];
  }
}
