import 'package:educacao_portal/screen/home/widgets/informacao_turma.dart';
import 'package:educacao_portal/screen/home/widgets/materias_widget.dart';
import 'package:educacao_portal/screen/widgets/unidade_search.dart';
import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';

class AlunoQuadroDeAulas extends StatefulWidget {
  const AlunoQuadroDeAulas({Key? key}) : super(key: key);

  @override
  _AlunoQuadroDeAulasState createState() => _AlunoQuadroDeAulasState();
}

class _AlunoQuadroDeAulasState extends State<AlunoQuadroDeAulas> {
  MateriasWidget materia = MateriasWidget();

  @override
  Widget build(BuildContext context) {
    List<TimePlannerTask> task = [
      TimePlannerTask(
        minutesDuration: 60,
        dateTime: TimePlannerDateTime(day: 0, hour: 14, minutes: 30),
        color: Colors.indigo,
        daysDuration: 1,
        child: Text(
          materia.materia,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      TimePlannerTask(
        minutesDuration: 60,
        dateTime: TimePlannerDateTime(day: 0, hour: materia.hour, minutes: 30),
        color: Colors.grey,
        daysDuration: 1,
        child: const Text(
          'CIÊNCIAS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      TimePlannerTask(
        minutesDuration: 60,
        dateTime: TimePlannerDateTime(day: 2, hour: 16, minutes: 30),
        color: Colors.orange,
        daysDuration: 1,
        child: const Text(
          'HISTÓRIA',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Portal do aluno',
        ),
      ),
      drawerScrimColor: Colors.white60,
      body: Column(
        children: [
          const Unidade_Search(),
          SizedBox(
              width: MediaQuery.of(context).size.width * 80 / 100,
              child: Informacao_Turma()),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.indigo),
                color: Colors.grey[100]),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 65 / 100,
            child: TimePlanner(
              startHour: 12,
              endHour: 18,
              // ignore: prefer_const_literals_to_create_immutables
              headers: [
                const TimePlannerTitle(
                  title: "Segunda",
                ),
                const TimePlannerTitle(
                  title: "Terça",
                ),
                const TimePlannerTitle(
                  title: "Quarta",
                ),
                const TimePlannerTitle(
                  title: "Quinta",
                ),
                const TimePlannerTitle(
                  title: "Sexta",
                ),
                const TimePlannerTitle(
                  title: "Sábado",
                ),
                const TimePlannerTitle(
                  title: "Domingo",
                ),
              ],
              tasks: task,
            ),
          ),
        ],
      ),
    );
  }
}

       /*
        TimePlannerDateTime(day: 2, hour: 6, minutes: 60)

       TimePlannerDateTime(
            day: Random().nextInt(14),
            hour: Random().nextInt(18) + 6,
            minutes: Random().nextInt(60)),

  onTap: () {
    TimePlannerDateTime(
            day: Random().nextInt(14),
            hour: Random().nextInt(18) + 6,
            minutes: Random().nextInt(60)),

          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You click on time planner object')));
        },





      floatingActionButton: FloatingActionButton(
        onPressed: () => _addObject(context),
        tooltip: 'Add random task',
        child: Icon(Icons.add),
      ),*/
   