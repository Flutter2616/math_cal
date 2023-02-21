import 'package:flutter/material.dart';

class Math extends StatefulWidget {
  const Math({Key? key}) : super(key: key);

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  String value = "";
  num ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.bottomRight,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$value",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade300,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 2),
                  ),
                  child:  Text(
                    "$ans",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: 400,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      value = "";
                                      ans = 0;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 60,
                                      width: 150,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        border: Border.all(
                                            color: Colors.blueGrey, width: 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        "AC",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        value+="%";
                                      });
                                    },
                                    child: Text(
                                      "%",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(child: number("7", "8", "9")),
                          Expanded(child: number("4", "5", "6")),
                          Expanded(child: number("1", "2", "3")),
                          Expanded(child: number("00", "0", ".")),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: 100,
                    color: Colors.blueGrey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              value+="+";
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              value+="-";
                            });
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              value+="*";
                            });
                          },
                          child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              value+="/";
                            });
                          },
                          child: Text(
                            "/",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                             calculation();
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "=",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget number(String n1, String n2, String n3) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                value = value + "$n1";
              });
            },
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Text(
                "$n1",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                value = value + "$n2";
              });
            },
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Text(
                "$n2",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                value = value + "$n3";
              });
            },
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Text(
                "$n3",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void calculation() {
    String first="",last="",sign="";
    int opretor=0;
    for(int i=0;i<value.length;i++)
      {
        if(value[i]!="+"||value[i]!="-"||value[i]!="*"||value[i]!="/"||value[i]!="%")
          {
            first+=value[i];
          }
        else
            {
              opretor=i;
              sign=value[i];
              break;
            }
print(first);
        for(int j=opretor+1;j<value.length;j++)
          {
            last+=value[j];
          }
print(last);
        setState(() {
          switch(sign)
              {
                case "+":
                  ans=double.parse(first)+double.parse(last);
                  break;

                  case "-":
                  ans=double.parse(first)-double.parse(last);
                  break;

            case "*":
              ans=double.parse(first)*double.parse(last);
              break;

            case "/":
              ans=double.parse(first)/double.parse(last);
              break;

            case "%":
              ans=double.parse(first)%double.parse(last);
              break;
              }
        });
      }
  }

}
