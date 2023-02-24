import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PointsCounters extends StatefulWidget {
  const PointsCounters({Key? key}) : super(key: key);

  @override
  State<PointsCounters> createState() => _PointsCountersState();
}

class _PointsCountersState extends State<PointsCounters> {
  int add1 = 0;
  int add2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Basket Ball Points Counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0 , vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                        // height: 150.h,
                        // width: 150.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(
                              'Team A',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Expanded(
                              child: Text(
                                '$add1',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  add1++;
                                });
                              },
                              child:  Text(
                                'Add 1 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  add1+=2;
                                });
                              },
                              child:  Text(
                                'Add 2 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  add1+=3;
                                });
                              },
                              child:  Text(
                                'Add 3 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                     SizedBox(
                       height: 500.h,
                       child: VerticalDivider(
                        color: Colors.grey[300],  //color of divider
                        width: 50, //width space of divider
                        thickness: 3, //thickness of divider line
                        indent: 30, //Spacing at the top of divider.
                        endIndent: 20, //Spacing at the bottom of divider.
                    ),
                     ), //divider
                    Expanded(
                      child: SizedBox(
                        // height: 150.h,
                        // width: 150.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(
                              'Team B',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Expanded(
                              child: Text(
                                '$add2',
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  add2++;
                                });
                              },
                              child:  Text(
                                'Add 1 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                              setState(() {
                                add2+=2;
                              });
                              },
                              child:  Text(
                                'Add 2 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                padding: const EdgeInsets.all(20.0),
                                // minimumSize: Size(150, 50),
                              ),
                              onPressed: (){
                              setState(() {
                                add2+=3;
                              });
                              },
                              child:  Text(
                                'Add 3 point',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.all(5),
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: (){
                      setState(() {
                        add1 = 0;
                        add2 = 0;
                      });
                    },
                    child:  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Reset',
                        style: Theme.of(context).textTheme.headlineMedium,

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
