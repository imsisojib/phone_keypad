import 'package:flutter/material.dart';

class PhoneKeypad extends StatefulWidget {
  const PhoneKeypad({super.key});

  @override
  State<PhoneKeypad> createState() => _PhoneKeypadState();
}

class _PhoneKeypadState extends State<PhoneKeypad> {
  Widget _buildNumberKey({
    required String value,
    required String textValue,
    String? subText,
  }) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        //color: Colors.red,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            textValue,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(width: 6,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                subText ?? "",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 6,),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconKey({
    required Icon icon,
    Function? onPressed,
  }) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        //color: Colors.red,
      ),
      child: IconButton(
        onPressed: (){
          onPressed?.call();
        },
        icon: icon,
      ),
    );
  }

  Widget spaceHorizontal(){
    return SizedBox(width: 32,);
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNumberKey(
                value: "1",
                textValue: "1",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "2",
                textValue: "2",
                subText: "ABC",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "3",
                textValue: "3",
                subText: "DEF",
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNumberKey(
                value: "4",
                textValue: "4",
                subText: "GHI",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "5",
                textValue: "5",
                subText: "JKL",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "6",
                textValue: "6",
                subText: "MNO",
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNumberKey(
                value: "7",
                textValue: "7",
                subText: "PQRS",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "8",
                textValue: "8",
                subText: "TUV",
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "9",
                textValue: "9",
                subText: "WXYZ",
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIconKey(
                icon: Icon(Icons.backspace),
                onPressed: (){

                }
              ),
              spaceHorizontal(),
              _buildNumberKey(
                value: "0",
                textValue: "0",
              ),
              spaceHorizontal(),
              _buildIconKey(
                  icon: const Icon(Icons.check_circle,color: Color(0xff009CDE),size: 32,),
                  onPressed: (){

                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
