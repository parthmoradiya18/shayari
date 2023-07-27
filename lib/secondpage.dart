import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/data.dart';
import 'package:shayari/third.dart';

class secondpage extends StatefulWidget {
  int mychoice;

  secondpage(this.mychoice);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List mythought = [];

  @override
  void initState() {
    switch (widget.mychoice) {
      case 0:
        {
          mythought = mydata.one;
          break;
        }
      case 1:
        {
          mythought = mydata.two;
          break;
        }
      case 2:
        {
          mythought = mydata.three;
          break;
        }
      case 3:
        {
          mythought = mydata.four;
          break;
        }
      case 4:
        {
          mythought = mydata.fiv;
          break;
        }
      case 5:
        {
          mythought = mydata.six;
          break;
        }
      case 6:
        {
          mythought = mydata.seven;
          break;
        }
      case 7:
        {
          mythought = mydata.eight;
          break;
        }
      case 8:
        {
          mythought = mydata.nine;
          break;
        }
      case 9:
        {
          mythought = mydata.ten;
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shayri title"),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Share.share("${mythought}", subject: 'Look what I made!');
                setState(() {});
              },
              child: Icon(Icons.share, size: 30)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("Settings")),
                    PopupMenuItem(child: Text("Rate Us")),
                    PopupMenuItem(child: Text("Share")),
                    PopupMenuItem(child: Text("More App1")),
                    PopupMenuItem(child: Text("More App2")),
                  ])
        ],
      ),
      body: ListView.separated(
          itemCount: mythought.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return thirdpage(mythought, index);
                  }));
                },
                child: ListTile(
                  title:
                      Text("${mythought[index].toString().substring(0, 20)}"),
                ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 5,
              thickness: 10,
            );
          }),
    );
  }
}
