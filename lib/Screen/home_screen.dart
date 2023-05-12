import 'package:arity_info/Utils/app_color.dart';
import 'package:flutter/material.dart';

import 'Drawer/group_sale_tree_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primary,
          title: const Text("Home"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    color: AppColor.primary
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/profile.png"
                            ),
                          ),
                     Column(
                       children: const [
                         Text("PANKAJ MISHRA",style: TextStyle(
                           fontSize: 20,
                           color: Colors.white
                         ),),
                         SizedBox(height: 5,),
                         Text("ID NO:P1606",style: TextStyle(
                           color: Colors.white,
                           fontSize: 14
                         ),),
                       ],
                     )
                   ],
                  )),
              ///dashboard
              const ListTile(
                leading: Icon(Icons.home,color: AppColor.primary,),
                title: Text("Dashboard"),
                contentPadding: EdgeInsets.only(left: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
              ),
              const Divider(),
              ///profile
               const ListTile(
                leading: Icon(Icons.person_outline,color: AppColor.primary,),
                title: Text("Profile"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                 trailing: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              const Divider(),
              ///Account Details
              const ListTile(
                leading: Icon(Icons.person_add_alt,color: AppColor.primary,),
                title: Text("Account Detail"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                trailing: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              const Divider(),
              ///status
              const ListTile(
                leading: Icon(Icons.military_tech,color: AppColor.primary,),
                title: Text("Status"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                trailing: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              const Divider(),
              ///reward
              const ListTile(
                leading: Icon(Icons.noise_aware,color: AppColor.primary,),
                title: Text("Reward"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                trailing: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              const Divider(),
              ///group sales tree
               ListTile(
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GroupSaleTreeScreen()));
                },
                leading: const Icon(Icons.local_offer_outlined,color: AppColor.primary,),
                title: const Text("Group Sales Tree"),
                contentPadding: const EdgeInsets.only(left: 8,right: 8),
                visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
              ),
              const Divider(),
              ///download
              const ListTile(
                leading: Icon(Icons.file_download_outlined,color: AppColor.primary,),
                title: Text("Download"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
                trailing: Icon(Icons.keyboard_arrow_down_rounded),
              ),
              const Divider(),
              ///new sale entry
              const ListTile(
                leading: Icon(Icons.description_outlined,color: AppColor.primary,),
                title: Text("New Sale Entry"),
                contentPadding: EdgeInsets.only(left: 8,right: 8),
                visualDensity: VisualDensity(vertical: -4,horizontal: -4),
              ),
              const Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
