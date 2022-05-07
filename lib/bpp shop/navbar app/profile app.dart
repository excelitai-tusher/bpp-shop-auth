import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .24,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: MediaQuery.of(context).size.height*.06,
                      //maxRadius: 30,
                      backgroundColor: const Color(0xffe4e8e9),
                      backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkspTGDaYI0SloxfqGWTJMZYniyE8q9oqahw&usqp=CAU")),
                  const SizedBox(height: 10,),
                  const Text('015********',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: const ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: const ListTile(
              minVerticalPadding: 2,
              leading: Icon(
                Icons.home_outlined,
                color:  Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Manage Address',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: const ListTile(
              minVerticalPadding: 10,
              leading: Icon(
                Icons.history_rounded,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Order History',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          InkWell(
            onTap: (){
              showDialog(

                context: context,
                builder: (BuildContext context) {
                  return Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Center(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 140,
                          width: MediaQuery.of(context).size.width*.8,

                          child:
                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Are You Sure want to log out"),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    child: const Text("No",style: TextStyle(color: Colors.red,fontSize: 18),),
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                  ),

                                  TextButton(
                                    child: const Text("Yes",style:  TextStyle(color: Colors.green,fontSize: 18),),
                                    onPressed: () {

                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )


                      ),
                    ),
                  );
                },
              );
            },
            child:  const ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0xffE47D4E),
                size: 30,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .06,
          )
        ],
      ),
    );
  }
}
