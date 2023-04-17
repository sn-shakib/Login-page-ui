import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
               appBar: AppBar(
                 title: const Center(child: Text('Order Processing App')),
                 actions:  [
                   InkWell(
                     onTap: (){},
                     child: const Padding(
                       padding: EdgeInsets.only(right: 15),
                       child: CircleAvatar(
                         radius: 17,
                         child: Icon(Icons.add_business),
                       ),
                     ),
                   ),
                 ],
               ),
      drawer: Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text('SM'),
            ),
              accountName: Text('Shakib',style: TextStyle(fontSize: 20),), 
              accountEmail: Text('snshakib6162@gmail.com')),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Add New Order '),
            leading: Icon(Icons.business),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Info'),
            leading: Icon(Icons.medical_information),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          ListTile(
            title: Text('Help'),
            leading: Icon(Icons.help_center),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
          return  Card(
            child: FadeInUp(
              child: ListTile(
                title: Text('Shakib1'),
                subtitle: Text('Pending...',style: TextStyle(color: Colors.green),),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Text(index.toString()),
                ),
                trailing: InkWell(
                  onTap: (){},
                  child: const CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    child: Icon(Icons.edit),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
