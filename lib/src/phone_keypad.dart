import 'package:flutter/material.dart';

class PhoneKeypad extends StatelessWidget{
  const PhoneKeypad({super.key});

  Widget _buildNumberKey(){
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffECEFF0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberKey(),
              _buildNumberKey(),
              _buildNumberKey(),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberKey(),
              _buildNumberKey(),
              _buildNumberKey(),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNumberKey(),
              _buildNumberKey(),
              _buildNumberKey(),
            ],
          ),
        ],
      ),
    );
  }
}