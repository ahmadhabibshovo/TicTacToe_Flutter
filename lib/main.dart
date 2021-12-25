import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

int a = 2, b = 2, cc = 2, d = 2, e = 2, f = 2, g = 2, h = 2, i = 2;
int c = 0;
var check1 = List.filled(9, false);
var check2 = List.filled(9, false);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Center(child: Text('TicTacToe')),
          ),
          body: const TicTacToe()),
    );
  }
}

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 400.0,
            height: 400.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/t.png'), fit: BoxFit.cover)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (a == 2) {
                              if (c % 2 == 0) {
                                a = 0;
                                c += 1;
                                check1[0] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                a = 1;
                                c += 1;
                                check2[0] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$a.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (b == 2) {
                              if (c % 2 == 0) {
                                b = 0;
                                c += 1;
                                check1[1] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                b = 1;
                                c += 1;
                                check2[1] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$b.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (cc == 2) {
                              if (c % 2 == 0) {
                                cc = 0;
                                c += 1;
                                check1[2] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                cc = 1;
                                c += 1;
                                check2[2] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$cc.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (d == 2) {
                              if (c % 2 == 0) {
                                d = 0;
                                c += 1;
                                check1[3] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                d = 1;
                                c += 1;
                                check2[3] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$d.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (e == 2) {
                              if (c % 2 == 0) {
                                e = 0;
                                c += 1;
                                check1[4] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                e = 1;
                                c += 1;
                                check2[4] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$e.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (f == 2) {
                              if (c % 2 == 0) {
                                f = 0;
                                c += 1;
                                check1[5] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                f = 1;
                                c += 1;
                                check2[5] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$f.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (g == 2) {
                              if (c % 2 == 0) {
                                g = 0;
                                c += 1;
                                check1[6] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                g = 1;
                                c += 1;
                                check2[6] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$g.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (h == 2) {
                              if (c % 2 == 0) {
                                h = 0;
                                c += 1;
                                check1[7] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                h = 1;
                                c += 1;
                                check2[7] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$h.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (i == 2) {
                              if (c % 2 == 0) {
                                i = 0;
                                c += 1;
                                check1[8] = true;
                                if ((check1[0] &&
                                            check1[1] &&
                                            check1[2]) ==
                                        true ||
                                    (check1[3] &&
                                            check1[4] &&
                                            check1[5]) ==
                                        true ||
                                    (check1[6] &&
                                            check1[7] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] &&
                                            check1[3] &&
                                            check1[6]) ==
                                        true ||
                                    (check1[1] &&
                                            check1[4] &&
                                            check1[7]) ==
                                        true ||
                                    (check1[2] &&
                                            check1[5] &&
                                            check1[8]) ==
                                        true ||
                                    (check1[0] && check1[4] && check1[8]) ==
                                        true ||
                                    (check1[2] && check1[4] && check1[6]) ==
                                        true) {
                                  a = 10;
                                  b = 10;
                                  cc = 10;
                                  d = 10;
                                  e = 10;
                                  f = 10;
                                  g = 10;
                                  h = 10;
                                  i = 10;
                                }
                              } else {
                                i = 1;
                                c += 1;
                                check2[8] = true;
                                if ((check2[0] &&
                                            check2[1] &&
                                            check2[2]) ==
                                        true ||
                                    (check2[3] &&
                                            check2[4] &&
                                            check2[5]) ==
                                        true ||
                                    (check2[6] &&
                                            check2[7] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] &&
                                            check2[3] &&
                                            check2[6]) ==
                                        true ||
                                    (check2[1] &&
                                            check2[4] &&
                                            check2[7]) ==
                                        true ||
                                    (check2[2] &&
                                            check2[5] &&
                                            check2[8]) ==
                                        true ||
                                    (check2[0] && check2[4] && check2[8]) ==
                                        true ||
                                    (check2[2] && check2[4] && check2[6]) ==
                                        true) {
                                  a = 20;
                                  b = 20;
                                  cc = 20;
                                  d = 20;
                                  e = 20;
                                  f = 20;
                                  g = 20;
                                  h = 20;
                                  i = 20;
                                }
                              }
                            }
                          });
                        },
                        child: Image.asset('images/$i.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: MaterialButton(
            onPressed: () {
              setState(() {
                a = 2;
                b = 2;
                cc = 2;
                d = 2;
                e = 2;
                f = 2;
                g = 2;
                h = 2;
                i = 2;
                c = 0;
                check1 = List.filled(9, false);
                check2 = List.filled(9, false);
              });
            },
            child: Image.asset('images/reset.png'),
          ),
        )
      ],
    );
  }
}
