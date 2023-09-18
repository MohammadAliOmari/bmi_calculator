import 'package:bmi/model/calc_model.dart';
import 'package:bmi/modules/bmi_results.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  // const BmiScreen({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    double heightres = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111328),
        elevation: 0.0,
        title: const Center(
          child: Text(
            'Bmi Calculator',
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFF111328),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: heightres > 875 ? 0 : 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color:
                                isMale ? Colors.blue : const Color(0xFF1D1E33),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/male2.png'),
                                height: 70.0,
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: heightres > 875 ? 0 : 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color:
                                !isMale ? Colors.pink : const Color(0xFF1D1E33),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/female1.png'),
                                height: 70.0,
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: heightres > 875 ? 0 : 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  width: 820,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: const Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HIEGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 10.0,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 20.0,
                          ),
                        ),
                        child: Slider(
                          activeColor: const Color(0xFFEB1555),
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: heightres > 875 ? 0 : 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: heightres > 875 ? 0 : 1,
                      child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: const Color(0xFF1D1E33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: const Color(0xFF111328),
                                  mini: true,
                                  heroTag: 'w--',
                                  onPressed: () {
                                    setState(
                                      () {
                                        weight--;
                                      },
                                    );
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: const Color(0xFF111328),
                                  mini: true,
                                  heroTag: 'w++',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: heightres > 875 ? 0 : 1,
                      child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: const Color(0xFF1D1E33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: const Color(0xFF111328),
                                  mini: true,
                                  heroTag: 'age--',
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  backgroundColor: const Color(0xFF111328),
                                  mini: true,
                                  heroTag: 'age++',
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: const Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: heightres > 875 ? 820 : double.infinity,
              color: const Color(0xFFEB1555),
              child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  CalcBmi calc = CalcBmi(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        result: calc.resultBmi(),
                        status: calc.getStatus(),
                        interpret: calc.getInterpret(),
                      ),
                    ),
                  );
                },
                height: 50.0,
                child: const Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
