import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, top: 10, right: 0, bottom: 0),
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.menu,
                          color: Theme.of(context).cardColor, size: 40),
                    ),
                    Container(
                      //margin: const EdgeInsets.all(10),
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Site #1',
                            style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 40,
                                fontWeight: FontWeight.w100),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  color: Theme.of(context).cardColor, size: 20),
                              Text('57-20, AAA road BBB',
                                  style: TextStyle(
                                      color: Theme.of(context).cardColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Theme.of(context).cardColor,
                          backgroundImage: const AssetImage("clover.png"),
                        ))
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                  decoration: const BoxDecoration(color: Colors.white38),
                  margin: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(color: Colors.white),
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              const Text(
                                'Inside',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.thermostat,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '38.0 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.water_drop,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '45.0 % ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.co2,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '1,500 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.landscape,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '30.0 % ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(color: Colors.white),
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              const Text(
                                'Outside',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(236, 106, 82, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.thermostat,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '- 5.0 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.water_drop,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '40.0 % ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(154, 193, 240, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.wind_power_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '5.0 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(color: Colors.white),
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              const Text(
                                'Local',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(236, 106, 82, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.thermostat,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '- 8.0 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(236, 106, 82, 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.water_drop,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '12.0 % ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  margin: const EdgeInsets.all(10),
                  child: GridView.count(
                    mainAxisSpacing: 2,
                    crossAxisCount: 4,
                    children: const [
                      ActuatorButton(actuatorText: 'Fan 1', onoff: true),
                      ActuatorButton(actuatorText: 'Fan 2', onoff: false),
                      ActuatorButton(actuatorText: 'Shade 1', onoff: false),
                      ActuatorButton(actuatorText: 'Shade 2', onoff: false),
                      ActuatorButton(actuatorText: 'heater 1', onoff: true),
                      ActuatorButton(actuatorText: 'heater 2', onoff: true),
                      ActuatorButton(actuatorText: 'Valve 1', onoff: false),
                      ActuatorButton(actuatorText: 'Valve 2', onoff: true),
                    ],
                  )),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton(
                          value: '  Garden Cam 1',
                          items: const [
                            '  Garden Cam 1',
                            '  Garden Cam 2',
                            '  Outside 1'
                          ]
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(99, 99, 99, 1),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {},
                          dropdownColor: Colors.white,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black)),
                          child: const Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 50,
                          ),
                        )
                      ]),
                ))
          ],
        ));
  }
}

class ActuatorButton extends StatelessWidget {
  final String actuatorText;
  final bool onoff;

  const ActuatorButton({
    super.key,
    required this.actuatorText,
    required this.onoff,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        color: Colors.white,
        child: Column(
          children: [
            Text(
              actuatorText,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w100,
                  color: Color.fromRGBO(99, 99, 99, 1)),
            ),
            Switch(
              value: onoff,
              onChanged: (value) {},
              activeColor: const Color.fromRGBO(196, 225, 246, 1),
            ),
          ],
        ));
  }
}
