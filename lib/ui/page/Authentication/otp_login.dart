import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/images.dart';

class OTPLogin extends StatefulWidget{
  @override
  _OTPLoginState createState() => _OTPLoginState();
}

class _OTPLoginState extends State<OTPLogin> with ImagesData{
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Container(
            height: height / 2,
            child: Image.asset(
              otplogin,
              fit: BoxFit.cover,
            )
          ),
          Divider(
            color: Colors.pink,
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text("India (+91)"),
              ),
              DropdownMenuItem(
                child: Text("USA (+1)"),
              ),
            ],
            onChanged: (v){},
            hint: Text("Choose"),
            
          ),
          TextField(
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Your Phone Number',
            ),
          ),
          SizedBox(height: 10.0,),
          FlatButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(),
            child: Text("Verify Phonenumber"),
            textColor: Colors.white,
            color: Colors.pink
          )
        ],
      ),
    );
  }
}
