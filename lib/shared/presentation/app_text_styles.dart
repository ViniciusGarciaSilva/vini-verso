import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle _base = TextStyle(
    height: 1.5,
    color: Colors.black,
  );

  static _Roboto get roboto => _Roboto(_base);
}

class _Roboto {
  late final TextStyle _roboto;

  _Roboto(TextStyle base)
      : _roboto = GoogleFonts.roboto(
          height: base.height,
          color: base.color,
        );

  _Regular get regular => _Regular(_roboto);
  _Bold get bold => _Bold(_roboto);
}

class _Regular {
  final TextStyle _regular;

  _Regular(
    TextStyle _base,
  ) : _regular = _base.copyWith(fontWeight: FontWeight.w400);

  _Size get size => _Size(_regular);
}

class _Bold {
  final TextStyle _bold;

  _Bold(
    TextStyle _base,
  ) : _bold = _base.copyWith(fontWeight: FontWeight.w700);

  _Size get size => _Size(_bold);
}

class _Size {
  final TextStyle _base;
  _Size(this._base);

  TextStyle get h10 => _base.copyWith(fontSize: 10);
  TextStyle get h12 => _base.copyWith(fontSize: 12);
  TextStyle get h14 => _base.copyWith(fontSize: 14);
  TextStyle get h16 => _base.copyWith(fontSize: 16);
  TextStyle get h18 => _base.copyWith(fontSize: 18);
  TextStyle get h20 => _base.copyWith(fontSize: 20);
  TextStyle get h24 => _base.copyWith(fontSize: 24);
  TextStyle get h32 => _base.copyWith(fontSize: 32);
}
