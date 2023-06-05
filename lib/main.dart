import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '陈豪嘉'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0), //设立边距
                children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text('第一个按钮组件')),
              Container(
                margin: EdgeInsets.only(top: 50.0, left: 120.0),
                constraints:
                    BoxConstraints.tightFor(width: 200.0, height: 150.0),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.red, Colors.orange],
                    center: Alignment.topLeft,
                    radius: .98,
                  ),
                  boxShadow: [BoxShadow(color: Colors.black54)],
                ),
                transform: Matrix4.rotationZ(.2),
                alignment: Alignment.center,
                child: const Text(
                  "5.20",
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
              ),
              Container(
                child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0), //设立边距
                    children: [
                      const Text('20211060027'),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const Text('通常可滚动组件的子组件可能会非常多、占用的总高度也会非常大；'),
                      const Text('如果要一次性将子组件全部构建出将会非常昂贵！'),
                      const Text(
                          '为此，Flutter中提出一个Sliver（中文为“薄片”的意思）概念，Sliver 可以包含一个或多个子组件。'),
                      const Text(
                          'Sliver 的主要作用是配合：加载子组件并确定每一个子组件的布局和绘制信息，如果 Sliver 可以包含多个子组件时，通常会实现按需加载模型。'),
                      const Text(
                          'shrinkWrap：该属性表示是否根据子组件的总长度来设置ListView的长度，默认值为false 。默认情况下，ListView会在滚动方向尽可能多的占用空间。当ListView在一个无边界(滚动方向上)的容器中时，shrinkWrap必须为true。'),
                      const Text(
                          '默认构造函数有一个children参数，它接受一个Widget列表（List<Widget>）。这种方式适合只有少量的子组件数量已知且比较少的情况，反之则应该使用ListView.builder 按需动态构建列表项。'),
                      const Text(
                          '可以看到，虽然使用默认构造函数创建的列表也是懒加载的，但我们还是需要提前将 Widget 创建好，等到真正需要加载的时候才会对 Widget 进行布局和绘制。'),
                    ]),
              ),
            ])),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: _incrementCounter,
        ));
  }
}
