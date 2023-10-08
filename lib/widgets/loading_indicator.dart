import 'package:flutter_ccomerence/consts/consts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loadingIndicator(){
  return Center(
    child: SpinKitWaveSpinner(
      size: 50,
      color: Colors.blue,
      waveColor: Colors.blueAccent,
      // itemBuilder: (context, index) {
      //   final colors = [Colors.white,Colors.pink,Colors.yellow,Colors.red];
      //   final color = colors[index % colors.length];
      //   return DecoratedBox(
      //       decoration: BoxDecoration(
      //           color: color,
      //           shape: BoxShape.circle));
      //   },
    ),
  );
}
