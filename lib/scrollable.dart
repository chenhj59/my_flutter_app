MaterialApp(home: SafeArea(
  child: Scaffold(body: Scrollable(viewportBuilder: (context, position) {
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text('$index'),
            );
          }, childCount: 5),
        );
        SliverToBoxAdapter(
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        );
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text('$index'),
            );
          }, childCount: 12),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );))
    )