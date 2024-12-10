import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final goRouter = GoRouter(
      routes: [
        GoRoute(
          path: '/blue/:id',
          builder: (context, state) {
            final id = state.pathParameters['id'];
            return Blue(id: id!);
          },
        ),
        GoRoute(
          path: '/red',
          builder: (context, state) => const Red(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const Home(),
          routes: <RouteBase>[
            GoRoute(
              path: '/:path',
              builder: (context, state) => const Green(),
            ),
          ],
        ),
      ],
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome  2 to Flutter DeepLinking tutorial!'),
            MaterialButton(
              onPressed: () {
                context.push('/blue/1');
              },
              child: const Text('Blue Screen'),
            ),
            MaterialButton(
              onPressed: () {
                context.push('/red');
              },
              child: const Text('Red Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class Blue extends StatelessWidget {
  const Blue({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ID: $id',
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class Red extends StatelessWidget {
  const Red({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Red Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ID: Red Screen',
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
}

class Green extends StatefulWidget {
  const Green({super.key});

  @override
  State<Green> createState() => _GreenState();
}

class _GreenState extends State<Green> {

  @override
  initState(){
    super.initState();
    
    Future.delayed(const Duration(seconds: 2)).then((val) {
     context.push('/blue/1');
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Loading',
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}
