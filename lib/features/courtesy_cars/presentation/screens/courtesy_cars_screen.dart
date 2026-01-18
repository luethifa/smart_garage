import 'package:flutter/material.dart';
import 'package:smart_garage/shared/widgets/dropdown/dropdown_menu.dart';
import 'package:smart_garage/shared/widgets/layout/two_column_layout.dart';
import 'package:smart_garage/shared/widgets/section_card.dart';
import 'package:table_calendar/table_calendar.dart';

class CourtesyCarsScreen extends StatelessWidget {
  const CourtesyCarsScreen({super.key});
  final int paneProportion = 50;
  @override
  Widget build(BuildContext context) {
    return TwoColumnLayout(
      leftContent: SectionCard(
        title: "Auto in garage",
        child: Text('List'),

        // ExpansionPanelList(
        //   expansionCallback: (int index, bool isExpanded) {},
        //   children: <ExpansionPanel>[
        //     ExpansionPanel(
        //       headerBuilder: (BuildContext context, bool isExpanded) {
        //         return ListTile(title: Text('Test'));
        //       },
        //       body: ListTile(
        //         title: Text("Test"),
        //         subtitle: const Text(
        //           'To delete this panel, tap the trash can icon',
        //         ),
        //         trailing: const Icon(Icons.delete),
        //         onTap: () {},
        //       ),
        //       isExpanded: true,
        //     ),
        //   ],
        // ),
      ),

      //   ListView.separated(
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(15),
      //           side: BorderSide(color: Colors.black),
      //         ),

      //         title: Text("Ford Fiesta"),
      //         trailing: Icon(Icons.outbond),
      //       );
      //     },
      //     separatorBuilder: (context, index) => SizedBox(height: 10),
      //     itemCount: 5,
      //   ),
      // ),

      // Card(
      //   elevation: 0,
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: DataTable(
      //       columns: const <DataColumn>[
      //         DataColumn(
      //           label: Expanded(
      //             child: Text(
      //               'Marca',
      //               style: TextStyle(fontWeight: FontWeight.w600),
      //             ),
      //           ),
      //         ),
      //         DataColumn(
      //           label: Expanded(
      //             child: Text(
      //               'Modello',
      //               style: TextStyle(fontWeight: FontWeight.w600),
      //             ),
      //           ),
      //         ),
      //       ],
      //       rows: <DataRow>[
      //         DataRow(
      //           color: MaterialStateProperty.resolveWith<Color?>((states) {
      //             if (states.contains(MaterialState.hovered)) {
      //               return Colors.grey;
      //             }
      //             return null;
      //           }),
      //           cells: const [DataCell(Text('Ford')), DataCell(Text('Fiesta'))],
      //         ),
      //         DataRow(
      //           color: MaterialStateProperty.resolveWith<Color?>((
      //             Set<MaterialState> states,
      //           ) {
      //             if (states.contains(MaterialState.hovered)) {
      //               return Colors.grey.shade400;
      //             }
      //             return null;
      //           }),
      //           cells: <DataCell>[
      //             DataCell(Text('Ford')),
      //             DataCell(Text('Fiesta')),
      //           ],
      //         ),
      //         DataRow(
      //           cells: <DataCell>[
      //             DataCell(Text('Kia')),
      //             DataCell(Text('Ceed')),
      //           ],
      //         ),
      //         DataRow(
      //           cells: <DataCell>[
      //             DataCell(Text('Opel')),
      //             DataCell(Text('Corsa')),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      rightContent: Card(
        elevation: 0,
        borderOnForeground: true,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gennaio 2026",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  OutlinedDropdownMenu(),
                ],
              ),
            ),
            Expanded(
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
