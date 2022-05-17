import 'package:flutter/material.dart';

void main() => runApp(MainUI());

class MainUI extends StatelessWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Book',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Tix',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/film_logo.png',
                height: 210,
                //width: 50,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 35)),
              Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'Username',
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    cursorColor: Colors.black),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  cursorColor: Colors.black,
                )
              ],
            ),
          ),
          //SizedBox(height: 5,),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, right: 20)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              FloatingActionButton.extended(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return homePage();
                  }));
                },
                label: Text(
                  '                        Login                        ',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t Have an Account? ',
                    style: TextStyle(fontSize: 13),
                  ),
                  // SizedBox(width: -2,),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  indent: 10,
                  endIndent: 10,
                  height: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'V',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'I',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'K',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'I',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'N',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'G',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'S',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/vikings_pic.jpg',
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 130,
                      //padding: EdgeInsets.only(left: 20, top: 6),
                      margin: EdgeInsets.only(
                          right: 20, left: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Booking',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      //padding: EdgeInsets.only(left: 20, top: 6),
                      margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Pre - Order',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  'New Movie',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Image.asset(
                  'assets/fig1.png',
                  height: 310,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/fig2.png',
                  height: 310,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/fig3.png',
                  height: 310,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/fig4.png',
                  height: 310,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/fig5.png',
                  height: 310,
                ),
                //SizedBox(width: 10,),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Popular Anime',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Image.asset(
                  'assets/one.png',
                  height: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/narto.png',
                  height: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/naruto.png',
                  height: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/knys1.png',
                  height: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/knym1.png',
                  height: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/knys2.png',
                  height: 300,
                ),
                //SizedBox(width: 10,),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // SizedBox(height: 10,),
          // Padding(
          //   padding: EdgeInsets.only(left: 15),
          //   child: Row(
          //     children: [
          //       Text('Alhamdulillah bisa')
          //     ],
          //   ),
          // ),
          // SizedBox(height: 20,)
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 28,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.my_library_books_outlined,
                  color: Colors.white,
                  size: 28,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 28,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return profile();
                  }));
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 28,
                ))
          ],
        ),
      ),
    );
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Setting'),
        actions: [
          // IconButton(
          //   onPressed: (){},
          //   icon: Icon(Icons.settings)
          // )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
                title: Text(
                  'Mochamad Arifin',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text('Ter - Geter'),
                leading: Image.asset(
                  'assets/sam4.png',
                  height: 50,
                ),
                trailing: IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context, MaterialPageRoute(
                      //     builder: (context){
                      //       return profile();
                      //     }
                      //   )
                      // );
                    },
                    icon: Icon(
                      Icons.qr_code_rounded,
                      color: Colors.blueAccent,
                    ))),
            Divider(
              color: Colors.black54,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Privasy and security',
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(Icons.vpn_key),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Chat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Theme, wallpaper, chat history',
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(Icons.chat),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Notification',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Messages, groups & call ringtones',
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(Icons.notifications),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Storage and data',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'network usage, auto download',
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(Icons.circle_outlined),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Help',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'help center, contact us, privacy policy',
                style: TextStyle(fontSize: 13),
              ),
              leading: Icon(Icons.help_outline),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Add friends',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              // subtitle: Text(
              //   'help center, contact us, privacy policy',
              //   style: TextStyle(
              //     fontSize: 13
              //   ),
              // ),
              leading: Icon(Icons.supervisor_account),
              onTap: () {},
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  size: 18,
                ),
                Text(
                  'Facebook',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
