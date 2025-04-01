import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid
      ),
      borderRadius: BorderRadius.circular(5)
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
        style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text(
              '0',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black
                ),
                decoration:  InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                  color: Colors.black
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor:  Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder:  border,
                  enabledBorder: border
                  ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: (){
                  if(kDebugMode){
                    debugPrint("Button Clicked!");
                  }
              }, 
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}