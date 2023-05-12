import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphview/GraphView.dart';

import '../../Model/group_tree_model.dart';
import '../../Utils/app_color.dart';
import 'package:http/http.dart' as http;
class GroupSaleTreeScreen extends StatefulWidget {
  const GroupSaleTreeScreen({Key? key}) : super(key: key);

  @override
  State<GroupSaleTreeScreen> createState() => _GroupSaleTreeScreenState();
}

class _GroupSaleTreeScreenState extends State<GroupSaleTreeScreen> {
  var json = {
    'nodes': [
      {'id': 1, 'label': 'circle'},
      {'id': 2, 'label': 'ellipse'},
      {'id': 3, 'label': 'database'},
      {'id': 4, 'label': 'box'},
      {'id': 5, 'label': 'diamond'},
      {'id': 6, 'label': 'dot'},
      {'id': 7, 'label': 'square'},
    ],
    'edges': [
      {'from': 1, 'to': 2},
      {'from': 1, 'to': 3},
      {'from': 2, 'to': 4},
      {'from': 2, 'to': 5},
      {'from': 3, 'to': 6},
      {'from': 3, 'to': 7},
    ]
  };

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
   getTreeData();
    var edges = json['edges']!;
    for (var element in edges) {
      var fromNodeId = element['from'];
      var toNodeId = element['to'];
      graph.addEdge(Node.Id(fromNodeId), Node.Id(toNodeId));
    }

    builder
      ..siblingSeparation = (100)
      ..levelSeparation = (150)
      ..subtreeSeparation = (150)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  final Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();

  Random r = Random();

  Widget rectangleWidget(GroupTreeModel model,int index) {
    String name="";
    String userNumber="";
    if(index==1)
      {
        name=model.parentName!;
        userNumber=model.parentIDNo!;
      }
    else if(index==2)
      {
        name=model.parentFirstChildName!;
        userNumber=model.parentFirstChildIDNo!;
      }
    else if(index==3)
      {
        name=model.parentSecondChildName!;
        userNumber=model.parentSecondChildIDNo!;
      }
    else if(index==4)
      {
        name=model.parentSubChildListForFristChild!.parentFirstChildName!;
        userNumber=model.parentSubChildListForFristChild!.parentFirstChildIDNo!;
      }
    else if(index==5)
      {
        name=model.parentSubChildListForSecondChild!.parentFirstChildName!;
        userNumber=model.parentSubChildListForSecondChild!.parentFirstChildIDNo!;
      }
    else if(index==6)
      {
        name=model.nestedParentSubChildListForFristChild!.parentFirstChildName!;
        userNumber=model.nestedParentSubChildListForFristChild!.parentFirstChildIDNo!;
      }
    else if(index==7)
      {
        name=model.nestedParentSubChildListForThirdChild!.parentFirstChildName!;
        userNumber=model.nestedParentSubChildListForThirdChild!.parentFirstChildIDNo!;
      }
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.withAlpha(50),
          child: const Icon(
            Icons.person_outline_outlined,
            color: Colors.blue,
          ),
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "($userNumber )",
          style: const TextStyle(color: Colors.red),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primary,
          title: const Text("Group Sales Tree"),
        ),
        body: loading==true?const Center(child: CircularProgressIndicator()):Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: InteractiveViewer(
                    constrained: false,
                    boundaryMargin: const EdgeInsets.all(100),
                    minScale: 0.01,
                    maxScale: 5.6,
                    child: GraphView(
                      graph: graph,
                      algorithm: BuchheimWalkerAlgorithm(
                          builder, TreeEdgeRenderer(builder)),
                      paint: Paint()
                        ..color = Colors.lightBlueAccent
                        ..strokeWidth = 1
                        ..style = PaintingStyle.stroke,
                      builder: (Node node) {
                        var a = node.key!.value as int?;
                        return rectangleWidget(data!,a!);
                      },
                    )),
              ),
            ]));
  }


  GroupTreeModel? data;
  bool loading=false;
  Future<GroupTreeModel> getTreeData() async {
    final url = Uri.parse("http://demoby.arityinfoway.com:8991/api/NaswizAPI/GroupSalesTree?p_AppMstRegNo=P1606&p_AppMstId=81874");
    setState(() {
       loading=true;
    });
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization':'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJc3N1ZXIiOiJJc3N1ZXIiLCJOYW1lIjoiTmFzd2l6YWRtaW4ifQ.Ab5sb0iRkeUYMv1kqsFTRoVxyLlegkbwFKrZ4HklgAc'
      },
    );
    setState(() {
      loading=false;
    });
    if (response.statusCode == 200) {
      setState((){
        data=GroupTreeModel.fromJson(jsonDecode(response.body));
      });
      return GroupTreeModel.fromJson(jsonDecode(response.body));

    } else {
      throw Exception('Failed to update post');
    }
  }
}
