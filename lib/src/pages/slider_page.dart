import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 20,
        value: _sliderValue,
        min: 10.0,
        max: 400.0,
        onChanged: (_blockCheck)
            ? null
            : (valor) {
                setState(() {
                  _sliderValue = valor;
                });
              });
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //     value: _blockCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _blockCheck = valor;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor;
          });
        });
  }

  _createSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor;
          });
        });
  }
}
