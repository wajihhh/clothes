// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
//
// class CustomTheme {
//
//   static LinearGradient getLinearGradient(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.light
//         ? lightGradient
//         : darkGradient;
//   }
//   //7456DA  47459F   2C4386
//
//   static const LinearGradient lightGradient = LinearGradient(
//     begin: Alignment.topRight,
//     end: Alignment.bottomLeft,
//     // stops: [0.2,0.6,0.8],
//     colors: [
//       Colors.black87,
//       Colors.black,
//       Colors.black87,
//       // Colors.white60,
//       // Colors.white70,
//       // Colors.white,
//       // Colors.white12,
//       // Colors.white12,
//       // Colors.white54,
//
//
//
//
//
//       // Color(0xff7456DA),
//       //
//       // Color(0xff47459F ),
//       // Color(0xff2C4386),
//
//     ],
//   );
//   // static const lightThemeFont = "ComicNeue", darkThemeFont = "Poppins";
//   static const LinearGradient darkGradient = LinearGradient(
//     begin: Alignment.topRight,
//     end: Alignment.bottomLeft,
//     colors: [
//       Color(0xFF1F1743),
//       Color(0xFF110D28),
//       Color(0xFF1F1743),
//     ],
//   );
//
//   static ThemeData buildTheme(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.light
//         ? lightTheme
//         : darkTheme;
//   }
//
//   // light theme
//   static final lightTheme = ThemeData(
//
//
//     bottomAppBarTheme: const BottomAppBarTheme(
//       shadowColor: Colors.black,
//       color:Color(0xff301A8C),
//     ),
//
//     // unselectedWidgetColor: Colors.black,
//     listTileTheme: ListTileThemeData(
//         subtitleTextStyle: const TextStyle(
//             color: Color(0xffDBDBDB)
//         ),
//         titleTextStyle: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontWeight: FontWeight.w500
//         ),
//         tileColor: const Color(0xff4023AB),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12)
//         )
//
//     ),
//     // primaryColorDark: Colors.purple,
//     primaryColorLight: Colors.purple,
//     primaryColorDark: Colors.white,
//
//
//     primaryColor: const Color(0xff271B56),
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: Colors.white,
//     useMaterial3: true,
//     // fontFamily: lightThemeFont,
//     switchTheme: SwitchThemeData(
//       thumbColor:
//       WidgetStateProperty.resolveWith<Color>((states) => lightThemeColor),
//     ),
//     appBarTheme: AppBarTheme(
//       centerTitle: true,
//       backgroundColor: Colors.white,
//       scrolledUnderElevation: 0,
//       titleTextStyle: TextStyle(
//
//         color: white,
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//       ),
//       iconTheme: IconThemeData(color: lightThemeColor),
//       elevation: 0,
//       actionsIconTheme: IconThemeData(color: lightThemeColor),
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: white,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     ),
//
//     textTheme: const TextTheme(
//       bodyMedium: TextStyle(color: Color(0xffCDD2DE),fontFamily: "Nunito",),
//       bodySmall: TextStyle(color: Color(0xffC0C8DC),fontFamily: "Nunito",),
//       displayMedium: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//       // titleSmall: TextStyle(fontSize: 20,color: Colors.white,),
//       displayLarge: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//       titleLarge: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//       // bodyMedium: TextStyle(color: Colors.black,fontFamily: "Nunito",),
//       // titleSmall: TextStyle(fontFamily: "Nunito", color: Colors.black),
//       // displayMedium: TextStyle(color: Color(0xff697CAC),fontFamily: "Nunito",),
//       // displayLarge: TextStyle(color: Colors.black,fontFamily: "Nunito",),
//       // titleLarge: TextStyle(color: Colors.black, fontFamily: "Nunito",),
//       // bodySmall: TextStyle(fontFamily: "Nunito", color: Color(0xff697CAC)),
//
//
//     ),
//     colorScheme: const ColorScheme.light(
//         primary: Colors.white,
//         secondary: Colors.white,
//         onPrimary: Colors.white,
//         onSecondary: Colors.white
//     ),
//     // checkboxTheme: CheckboxThemeData(
//     //     side: BorderSide(
//     //         color: Color(0xffA188FF)
//     //     )
//     // ),
//     textSelectionTheme: const TextSelectionThemeData(
//         cursorColor: Colors.black,
//         selectionHandleColor: Colors.transparent
//     ),
//     tabBarTheme: const TabBarTheme(
//         indicatorColor: Colors.white,
//         labelColor: Colors.white,
//         unselectedLabelColor: Colors.white
//     ),
//
//
//
//     timePickerTheme: const TimePickerThemeData(
//
//       hourMinuteColor: Colors.black12,
//       dialBackgroundColor: Colors.black12,
//       // hourMinuteColor: Colors.pink,
//       hourMinuteTextColor: Colors.black,
//       // dialTextColor: Colors.yellow,
//       dialHandColor: Colors.grey,
//       dayPeriodColor: Colors.black12,
//
//       confirmButtonStyle: ButtonStyle(
//           foregroundColor: WidgetStatePropertyAll(Colors.black),
//           backgroundColor: WidgetStatePropertyAll(Colors.black12),
//           textStyle: WidgetStatePropertyAll(TextStyle(
//               color: Colors.black
//           ))
//
//       ),
//       cancelButtonStyle: ButtonStyle(
//           foregroundColor: WidgetStatePropertyAll(Colors.black),
//           backgroundColor: WidgetStatePropertyAll(Colors.black12),
//           textStyle: WidgetStatePropertyAll(TextStyle(
//               color: Colors.black
//           ),)
//
//       ),
//
//
//
//
//     ),
//     dropdownMenuTheme: const DropdownMenuThemeData(
//         inputDecorationTheme:InputDecorationTheme(
//           fillColor: Colors.yellow,
//
//         )
//     ),
//   );
//
//   // dark theme
//   static final darkTheme = ThemeData(
//
//     dropdownMenuTheme: const DropdownMenuThemeData(
//         inputDecorationTheme:InputDecorationTheme(
//             fillColor: Colors.yellow
//         )
//     ),
//     timePickerTheme:  const TimePickerThemeData(
//
//       // dayPeriodColor: Colors.white12,
//       // dayPeriodColor: Color(0xff6B46F6),
//       //   dayPeriodColor: Color(0xff0A0230),
//
//       dayPeriodTextColor: Colors.white,
//
//       backgroundColor: Color(0xFF271194),
//       //Color
//       //Color(0xff0A0230),
//       // dayPeriodTextColor: Colors.grey,
// //
//       hourMinuteColor: Color(0xff0A0230),
//       dialBackgroundColor: Color(0xff0A0230),
//       dialHandColor: Colors.white,
//
//
//
//       // hourMinuteColor: Colors.green,
//       hourMinuteTextColor: Colors.white,
//
//
//       // dayPeriodTextColor: Colors.pink,
//       helpTextStyle: TextStyle(
//           color: Colors.white
//       ),
//       confirmButtonStyle: ButtonStyle(
//         foregroundColor: WidgetStatePropertyAll(Colors.white),
//         backgroundColor: WidgetStatePropertyAll(Color(0xff0A0230),),
//
//       ),
//       cancelButtonStyle: ButtonStyle(
//         foregroundColor: WidgetStatePropertyAll(Colors.white),
//         backgroundColor: WidgetStatePropertyAll(Color(0xff0A0230),),
//       ),
//
//
//
//     ),
//     tabBarTheme: TabBarTheme(
//       unselectedLabelColor: Colors.white.withOpacity(0.4),
//       labelColor: Colors.white,
//       indicatorColor: Colors.white,
//     ),
//     // bottomAppBarColor: Color(0xff271B56),
//     bottomAppBarTheme: const BottomAppBarTheme(
//         shadowColor: Colors.transparent,
//         color:Color(0xff271B56)
//     ),
//
//     // unselectedWidgetColor: Colors.transparent,
//     //   checkboxTheme: CheckboxThemeData(
//     //
//     //       side: BorderSide(
//     //         color: Color(0xffA188FF)
//     //       )
//     //       ),
//     listTileTheme: ListTileThemeData(
//         subtitleTextStyle: const TextStyle(
//             color: Color(0xffDBDBDB)
//         ),
//         titleTextStyle: const TextStyle(
//             color: Colors.white
//         ),
//         tileColor: const Color(0xff040112),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12)
//         )
//
//     ),
//
//     colorScheme: const ColorScheme.dark(
//         primary:Color(0xff1F1743),
//
//         secondary: Color(0xff110D28),
//         onPrimary:Color(0xff110D28),
//         onSecondary: Color(0xff1F1743)
//     ),
//
//     textSelectionTheme: const TextSelectionThemeData(
//         cursorColor: Colors.white,
//         selectionHandleColor: Colors.transparent
//     ),
//     textTheme:  const TextTheme(
//
//
//
//       bodyMedium: TextStyle(color: Color(0xffCDD2DE),fontFamily: "Nunito",),
//       bodySmall: TextStyle(color: Color(0xffC0C8DC),fontFamily: "Nunito",),
//       displayMedium: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//       // titleSmall: TextStyle(fontSize: 20,color: Colors.white,),
//       displayLarge: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//       titleLarge: TextStyle(color: Colors.white,fontFamily: "Nunito",),
//     ),
//
//     primaryColorDark: Colors.black,
// // primaryColorDark: Colors.yellow,
//     primaryColor: const Color(0xff040112),
//     brightness: Brightness.dark,
//     scaffoldBackgroundColor: Colors.transparent,
//
//
//     useMaterial3: true,
//     // fontFamily: darkThemeFont,
//     switchTheme: SwitchThemeData(
//       trackColor:
//       WidgetStateProperty.resolveWith<Color>((states) => darkThemeColor),
//     ),
//     appBarTheme: AppBarTheme(
//
//
//       centerTitle: true,
//       backgroundColor: Colors.transparent,
//       scrolledUnderElevation: 0,
//       titleTextStyle: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w500,
//         color: white,
//
//       ),
//       iconTheme: IconThemeData(color: darkThemeColor),
//       elevation: 0,
//       actionsIconTheme: IconThemeData(color: darkThemeColor),
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: black,
//         statusBarIconBrightness: Brightness.light,
//       ),
//     ),
//
//
//
//
//
//   );
//
import 'package:flutter/material.dart';

//   // colors
//   static Color lightThemeColor = Colors.red,
//       white = Colors.white,
//       black = Colors.black,
//       darkThemeColor = Colors.yellow;
// }
import 'package:flutter/services.dart';

class CustomTheme {
  static LinearGradient getLinearGradient(BuildContext context) {
    return lightGradient;
  }

  static const LinearGradient lightGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [

      Colors.black12,
      Colors.black12,
      Colors.black,
    ],
  );

  static ThemeData buildTheme(BuildContext context) {
    return lightTheme;
  }

  // Light theme
  static final lightTheme = ThemeData(
    bottomAppBarTheme: const BottomAppBarTheme(
      shadowColor: Colors.white,
      color: Colors.black,
      //wajih        .
// wajih        .
//  wajih        .
//   wajih        .
//    wajih        .
//     wajih        .
//      wajih        .
//       wajih        .
//        wajih        .
//         wajih        .
//          wajih        .
//           wajih        .
//            wajih        .
//             wajih        .
//              wajih        .
//               wajih        .
//                wajih        .
//                 wajih        .
//                  wajih        .
//                   wajih        .
//                    wajih        .
//                     wajih        .
//                      wajih        .
//                       wajih        .
//                        wajih        .
//                         wajih        .
//                          wajih        .
//                           wajih        .
//                            wajih        .
//                             wajih        .
//                              wajih        .
//                               wajih        .
//                                wajih        .
//                                 wajih        .
//                                  wajih        .
//                                   wajih        .
//                                    wajih        .
//                                     wajih        .
//                                      wajih        .
//                                       wajih        .
//                                        wajih        .
//                                         wajih        .
//                                          wajih        .
//                                           wajih        .
//                                            wajih        .
//                                             wajih        .
//                                              wajih        .
//                                               wajih        .
//                                                wajih        .
//                                                 wajih        .
//                                                  wajih        .
//                                                   wajih        .
//                                                    wajih        .
//                                                     wajih        .
//                                                      wajih        .
//                                                       wajih        .
//                                                        wajih        .
//                                                         wajih        .
//                                                         wajih        .
//                                                        wajih        .
//                                                       wajih        .
//                                                      wajih        .
//                                                     wajih        .
//                                                    wajih        .
//                                                   wajih        .
//                                                  wajih        .
//                                                 wajih        .
//                                                wajih        .
//                                               wajih        .
//                                              wajih        .
//                                             wajih        .
//                                            wajih        .
//                                           wajih        .
//                                          wajih        .
//                                         wajih        .
//                                        wajih        .
//                                       wajih        .
//                                      wajih        .
//                                     wajih        .
//                                    wajih        .
//                                   wajih        .
//                                  wajih        .
//                                 wajih        .
//                                wajih        .
//                               wajih        .
//                              wajih        .
//                             wajih        .
//                            wajih        .
//                           wajih        .
//                          wajih        .
//                         wajih        .
//                        wajih        .
//                       wajih        .
//                      wajih        .
//                     wajih        .
//                    wajih        .
//                   wajih        .
//                  wajih        .
//                 wajih        .
//                wajih        .
//               wajih        .
//              wajih        .
//             wajih        .
//            wajih        .
//           wajih        .
//          wajih        .
//         wajih        .
//        wajih        .
//       wajih        .
//      wajih        .
//     wajih        .
//    wajih        .
//   wajih        .
//  wajih        .
// wajih        .
//wajih        .

    ),
    listTileTheme: ListTileThemeData(
      subtitleTextStyle: const TextStyle(
        color: Color(0xffDBDBDB),
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      tileColor: const Color(0xff4023AB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    primaryColorLight: Colors.purple,
    primaryColorDark: Colors.white,
    primaryColor: const Color(0xff271B56),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    switchTheme: SwitchThemeData(
      thumbColor:
          WidgetStateProperty.resolveWith<Color>((states) => lightThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(color: lightThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xffCDD2DE), fontFamily: "Nunito"),
      bodySmall: TextStyle(color: Color(0xffC0C8DC), fontFamily: "Nunito"),
      displayMedium: TextStyle(color: Colors.white, fontFamily: "Nunito"),
      displayLarge: TextStyle(color: Colors.white, fontFamily: "Nunito"),
      titleLarge: TextStyle(color: Colors.white, fontFamily: "Nunito"),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
      selectionHandleColor: Colors.transparent,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
    ),
    timePickerTheme: const TimePickerThemeData(
      hourMinuteColor: Colors.black12,
      dialBackgroundColor: Colors.black12,
      hourMinuteTextColor: Colors.black,
      dialHandColor: Colors.grey,
      dayPeriodColor: Colors.black12,
      confirmButtonStyle: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStatePropertyAll(Colors.black12),
        textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.black)),
      ),
      cancelButtonStyle: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStatePropertyAll(Colors.black12),
        textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.black),),
      ),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.yellow,
      ),
    ),
  );

  // Colors
  static Color lightThemeColor = Colors.red,
      white = Colors.white,
      black = Colors.black;
}
