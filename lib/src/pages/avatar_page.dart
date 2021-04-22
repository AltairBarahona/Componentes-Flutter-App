import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("AB"),
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  "https://scontent.fuio1-1.fna.fbcdn.net/v/t1.0-9/25660411_1962115577334598_1357919134389895982_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHkK6njCHrHrUB04kX4nnARikMpEN0hDRGKQykQ3SENEc0O5RbyYWeErGm4lpoy0n6kvmVxCaKxiIbG_g28VWDy&_nc_ohc=LtKlHK_90w8AX-MA459&_nc_ht=scontent.fuio1-1.fna&oh=8fe8083cef7b1c530e1783a2c01a3db5&oe=606F8F8C"),
              // backgroundImage: NetworkImage(
              //   "https://scontent.fuio1-1.fna.fbcdn.net/v/t1.0-9/25660411_1962115577334598_1357919134389895982_n.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeHkK6njCHrHrUB04kX4nnARikMpEN0hDRGKQykQ3SENEc0O5RbyYWeErGm4lpoy0n6kvmVxCaKxiIbG_g28VWDy&_nc_ohc=hUl848ciVLwAX8ZpSxc&_nc_ht=scontent.fuio1-1.fna&oh=44cff9ddb8eb64a39081566a58d05ae3&oe=605FBD8C",
              // ),
              radius: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("AB"),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(seconds: 3),
          image: NetworkImage(
              "https://scontent.fuio1-1.fna.fbcdn.net/v/t1.0-9/25660411_1962115577334598_1357919134389895982_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHkK6njCHrHrUB04kX4nnARikMpEN0hDRGKQykQ3SENEc0O5RbyYWeErGm4lpoy0n6kvmVxCaKxiIbG_g28VWDy&_nc_ohc=LtKlHK_90w8AX-MA459&_nc_ht=scontent.fuio1-1.fna&oh=8fe8083cef7b1c530e1783a2c01a3db5&oe=606F8F8C"),
          // image: NetworkImage(
          //     "https://scontent.fuio1-1.fna.fbcdn.net/v/t1.0-9/25660411_1962115577334598_1357919134389895982_n.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeHkK6njCHrHrUB04kX4nnARikMpEN0hDRGKQykQ3SENEc0O5RbyYWeErGm4lpoy0n6kvmVxCaKxiIbG_g28VWDy&_nc_ohc=hUl848ciVLwAX8ZpSxc&_nc_ht=scontent.fuio1-1.fna&oh=44cff9ddb8eb64a39081566a58d05ae3&oe=605FBD8C"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
