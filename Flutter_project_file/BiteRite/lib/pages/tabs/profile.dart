import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFFBB5C), Colors.white70], //background color
            begin: Alignment.topCenter, //color change from top
            end: Alignment.bottomCenter, //color change end at bottom
          )
        ), 
        child: Column(
          children: [
            topInfo(context),
            commonFunction(),
            moreFunction()

        ],),//背景装饰：颜色渐变
    );
  }
}


Padding topInfo (BuildContext context){
  return Padding(
      padding: const EdgeInsets.fromLTRB(30, 90, 10, 40),
      child: Row(
        children: [
          GestureDetector(
            child: ClipOval(
              child: Image.network('https://img-blog.csdnimg.cn/c6dfd375abf1433fa3a42951cc186a2b.jpeg', width: 50, height: 50, fit: BoxFit.cover),
            ),
            onTap: (){
 
            },
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 150, 0),
              child: Text('昵称', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16))
          ),
          TextButton  (
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(const Size(80, 60)), //按钮宽高设置
              foregroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(100, 30, 144, 255)), //背景色
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), //圆角
            ),
            child: const Text('编辑资料', style: TextStyle(color: Colors.blueAccent)),
            onPressed: () {
 
            },
          ),
        ],
      ),
    );

}

 
  /*常用功能*/
  Container commonFunction(){
    return Container(
        margin: const EdgeInsets.all(5),
        height: 160,
        width: 360,
        decoration: BoxDecoration(
          color: const Color.fromARGB(120, 248, 248, 255),  // 白色
          borderRadius: BorderRadius.circular(30), // 设置圆角
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //垂直方向平分
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10,left: 20),
              alignment: Alignment.topLeft,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('我的订单', style: TextStyle(fontSize: 20)),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.keyboard_arrow_right_rounded),
                    alignment: Alignment.centerRight,
                    )
                ],
              )
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, //主轴方向（横向）间距              
              children: [
                Column(
                  
                  children: [
                    IconButton(
                      icon: const Icon(Icons.run_circle_sharp,size: 50,),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                    const Text('进行中'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.offline_pin,size: 50,),
                      onPressed: () {},
                      color: Colors.redAccent,
                    ),
                    const Text('已完成'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.replay_circle_filled_rounded,size: 50,),
                      onPressed: () {},
                      color: Colors.green,
                    ),
                    const Text('退货中'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,)
          ],
        )
    );
  }
 
 

Container moreFunction(){
  return Container(
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(10),
        height: 200,
        width: 360,
        decoration: BoxDecoration(
          color: const Color.fromARGB(120, 248, 248, 255),  // 白色
          borderRadius: BorderRadius.circular(20), // 设置圆角
        ),
        child: Column(
          children: [
            TextButton(
              onPressed: (){}, 
              child: Container(
                alignment: Alignment.topLeft,
                child: Text("地址管理",style: TextStyle(fontSize: 15),))),
            Divider(),
            TextButton(
              onPressed: (){}, 
              child: Container(
                alignment: Alignment.topLeft,
                child: Text("联系客服",style: TextStyle(fontSize: 15),))),
            Divider(),
            TextButton(
              onPressed: (){}, 
              child: Container(
                alignment: Alignment.topLeft,
                child: Text("语言设置",style: TextStyle(fontSize: 15),))),
            

        ],),
  );

}