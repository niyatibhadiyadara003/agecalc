import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController datecontroller = TextEditingController();
  TextEditingController monthcontroller = TextEditingController();
  TextEditingController yearcontroller = TextEditingController();
  String DD = "";
  String MM = "";
  String YY = "";

  int date = 0;
  int month = 0;
  int year = 0;

  String finaledate = "00";
  String finalemonth = "00";
  String finaleyear = "00";

  String nextdate = "00";
  String nextmonth = "00";
  String nextyear = "00";

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();

    setState(() {
      date = dateTime.day;
      month = dateTime.month;
      year = dateTime.year;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              alignment: const Alignment(-0.9, 1),
              child: const Text(
                "Today's Date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: 380,
                  child: Text(
                    "$date/$month/ $year",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0Xff1c003e),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 5),
              alignment: const Alignment(-0.9, 1),
              child: const Text(
                "Date of Birth",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  child: TextField(
                    controller: datecontroller,
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "DD",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0Xffe5e5e5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  child: TextField(
                    controller: monthcontroller,
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "MM",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0Xffe5e5e5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  child: TextField(
                    controller: yearcontroller,
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "YYYY",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0Xffe5e5e5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    datecontroller.clear();
                    monthcontroller.clear();
                    yearcontroller.clear();
                    setState(() {
                      DD = "";
                      MM = "";
                      YY = "";

                      finaledate = "00";
                      finalemonth = "00";
                      finaleyear = "00";

                      nextdate = "00";
                      nextmonth = "00";
                      nextyear = "00";
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 184,
                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0Xff000000),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff13547a)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    DD = datecontroller.text;
                    MM = monthcontroller.text;
                    YY = yearcontroller.text;
                    setState(() {
                      finaledate = "${date - int.parse(DD)}";
                      finalemonth = "${month - int.parse(MM)}";
                      finaleyear = "${year - int.parse(YY)}";

                      nextdate = "${date - (date - int.parse(DD))}";
                      nextmonth = "${month - (month - int.parse(MM))}";
                      nextyear = "${year - (year - int.parse(YY))}";

                      if ((date - int.parse(DD)) < 0) {
                        finalemonth = "${month - int.parse(MM) - 1}";
                        if (MM == 1 ||
                            MM == 3 ||
                            MM == 5 ||
                            MM == 7 ||
                            MM == 8 ||
                            MM == 10 ||
                            MM == 12)
                          finaledate = "${30 + date - int.parse(DD)}";
                        else if (MM == 2) if (int.parse(YY) % 4 == 0)
                          finaledate = "${29 + date - int.parse(DD)}";
                        else
                          finaledate = "${28 + date - int.parse(DD)}";
                        else
                          finaledate = "${30 + date - int.parse(DD)}";
                      }
                    });
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      color: const Color(0xff13547a),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 184,
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0Xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              alignment: const Alignment(-0.9, 1),
              child: const Text(
                "Present Age",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "$finaleyear\nYYYY",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "$finalemonth\nMM",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "$finaledate\nDD",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  height: 110,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                          colors: [Color(0xff13547a), Color(0xff203a43)])),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              alignment: const Alignment(-0.9, 1),
              child: const Text(
                "Next Birthday",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "$nextmonth\nMM",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "$nextdate\nDD",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  height: 110,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                          colors: [Color(0xff6bbed9), Color(0xff006acb)])),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
