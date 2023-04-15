import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Home")),
    );
  }
}








// import 'package:flutter/material.dart';

// import 'package:ui/model/home_profil.dart';
// import 'package:ui/model/home_status.dart';
// import 'package:ui/service/home_service.dart';

// class HomePage extends StatefulWidget {
//   HomePage({super.key});
//   TextEditingController userInputController = TextEditingController();

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: Column(
//         children: [
//           SizedBox(
//               height: MediaQuery.of(context).size.height * 0.4,
//               child: FutureBuilder(
//                   future: StatusService.getSTatus(),
//                   builder: (context, AsyncSnapshot snapshot) {
//                     if (!snapshot.hasData) {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     } else if (snapshot.hasError) {
//                       return Text(snapshot.error.toString());
//                     } else {
//                       //   HomeStatus homeStatus = snapshot as HomeStatus;
//                       //   return Column(
//                       //     children: [
//                       //       ListTile(
//                       //         leading: Text(
//                       //             "${homeStatus.statis!.result}${homeStatus.statis!.steps}"
//                       //             ),
//                       //       )
//                       //     ],
//                       //   );
//                       // }
//                       HomeStatus homeStatus =snapshot.data as HomeStatus ;

//                       return Text(homeStatus.today!.toString());
//                     }
//                   }))
//         ],
//       ),
//     );
//   }
// }
 