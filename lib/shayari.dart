import 'package:flutter/material.dart';
import 'package:shayari/data.dart';
import 'package:shayari/secondpage.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List temp=[];

  @override
  void initState() {
    temp=List.filled(mydata.img.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("THE shayari"),centerTitle: true,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Rate Us")),
              PopupMenuItem(child: Text("Share")),
                  PopupMenuItem(child: Text("More App1")),
                  PopupMenuItem(child: Text("More App2")), ])
        ],
      ),
      body: ListView.builder(itemCount: mydata.img.length, itemBuilder: (context, index) {
        return GestureDetector(
          child: ListTile(
            title: Text("${mydata.title[index]}"),
            leading: CircleAvatar(
              backgroundImage: AssetImage('image/${mydata.img[index]}'),
            ),
          ),
          onTapDown: (details){
            setState(() {
              temp[index]=true;
            });
          },
          onTapUp:(details){
            setState(() {
              temp[index]=false;
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                return secondpage(index);
              },));
            });
          },
          onTapCancel: (){
            setState(() {
              temp[index]=false;
            });
          },
        );
      },),
    );
  }
}
