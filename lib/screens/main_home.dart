import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreen();
}

class _MainHomeScreen extends State<MainHomeScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _textController.text = "Initial Log Data.......\nchecking......\n";
    _textController.addListener(_scrollToBottom);
  }

  void onToggleChanged(bool value) {
    setState(() {
      // _textController.text += '$value\n';
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: const Text(
            'grujak',
            style: TextStyle(fontSize: 30),
          ),
          toolbarHeight: 50,
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 30.0,
              onPressed: () {
                // 메뉴 버튼이 눌렸을 때의 동작
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                // 설정 버튼이 눌렸을 때의 동작
              },
            ),
          ],
        ),
        body: Row(
          children: [
            Expanded(
              child: LeftPage(
                textController: _textController,
                scrollController: _scrollController,
              ), // 왼쪽 페이지 추가
            ),
            Expanded(
              child: RightPage(
                onToggleChanged: onToggleChanged,
                textController: _textController,
                scrollController: _scrollController,
              ), // 오른쪽 페이지 추가
            ),
          ],
        ),
      ),
    );
  }
}

class LeftPage extends StatefulWidget {
  final TextEditingController textController;
  final ScrollController scrollController;

  const LeftPage(
      {Key? key, required this.textController, required this.scrollController})
      : super(key: key);
  @override
  _LeftPage createState() => _LeftPage();
}

class RightPage extends StatefulWidget {
  final Function(bool) onToggleChanged;
  final TextEditingController textController;
  final ScrollController scrollController;

  const RightPage(
      {Key? key,
      required this.onToggleChanged,
      required this.textController,
      required this.scrollController})
      : super(key: key);
  @override
  _RightPageState createState() => _RightPageState();
}

class _LeftPage extends State<LeftPage> {
  final List<double> sensorvalue = [
    22.4,
    25.3,
    28.3,
    23.5,
    50.0,
    60.8,
    55.5,
    60.0
  ];
  final List<String> sensortype = ['T', 'T', 'T', 'T', 'H', 'H', 'H', 'H'];
  final List<String> placename = [
    'Outside',
    'Site 1',
    'Site 2',
    'Site 3',
    'Outside',
    'Site 1',
    'Site 2',
    'Site 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Sensor', // 왼쪽 페이지 제목
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1 / 1,
            ),
            itemCount: sensorvalue.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getIcon(sensortype[index]),
                    getText(sensorvalue[index].toStringAsFixed(1),
                        sensortype[index]),
                    const SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Text Logs', // 텍스트 로그 제목
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          height: 100.0,
          color: Colors.grey[200],
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            controller: widget.scrollController,
            child: TextField(
              controller: widget.textController,
              maxLines: null,
              readOnly: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Icon getIcon(String value) {
  return Icon(
    value == 'T' ? Icons.thermostat_outlined : Icons.water_drop_outlined,
    size: 30.0,
    color: Colors.black,
  );
}

Text getText(String value, String type) {
  return Text(type == 'T' ? '$value °C' : '$value %',
      style: const TextStyle(fontSize: 30));
}

class _RightPageState extends State<RightPage> {
  List<bool> isSelected = List.generate(8, (_) => false);
  List<String> buttonNames = [
    'Outside',
    'Site 1',
    'Site 2',
    'Site 3',
    'Outside',
    'Site 1',
    'Site 2',
    'Site 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Control', // 오른쪽 페이지 제목
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: isSelected.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    buttonNames[index],
                    style: const TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 40),
                  Transform.scale(
                    scale: 2,
                    child: Switch(
                      value: isSelected[index],
                      onChanged: (value) {
                        setState(() {
                          isSelected[index] = value;
                          widget.onToggleChanged(value);
                          widget.textController.text +=
                              'Toggle ${buttonNames[index]}: $value\n';
                        });
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
