class RegExpHelper {
  static RegExpHelper? _instance;
  RegExpHelper._internal();
  factory RegExpHelper._() => _instance ??= RegExpHelper._internal();

  //? Reg Exp
  static final RegExp onlyDigit = RegExp(r'[\d.]');
  static final RegExp onlyLetters = RegExp(r'\w');
  static final RegExp withoutDashes = RegExp(r'');
  static final RegExp withoutWhitespace = RegExp(r'[ ]');
  //* attributes
  static final RegExp phoneNumberRegExp = RegExp(_patternPhoneNumber);
  static final RegExp phoneNumberRegExp2 = RegExp(_patternPhoneNumber2);
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$');

  //? Pattern
  static const String _pattern = r'';
  static const String _patternName =
      r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$";
  static const String _patternPhoneNumber = r'^[0-9]{9}$';
  static const String _patternAge = r'';
  static const String _patternHeight = r'';
  static const String _patternWeight = r'';
  static const String _patternAddress = r'';
  static const String _patternPhoneNumber2 =
      r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$';

  //
  /// \w : words set
  /// \d : digit set
  /// \s : white space
  /// [\s] : white space
  /// [^ABC] : Negated Set OR all the words set is exist without A,B,C
  /// [^\w] OR [\W] : all symoboles is exist without words set
  /// [\w] = [^\w]
  /// . : all the words set and symbols
  /// ^[rR] : the word start by r letter
  /// e$  : it end by e letter
  /// ^\d$ : one number
  /// ^\d\d$ : two number
  /// \AO : begin letter
  /// e$ = e\Z
  /// \Z = $
  /// \bor : \b mean any word start by or
  /// or\b : \b mean any word end by or
  /// \bor\b : find "or" word only
  /// \Bor : \B mean find all the word has "or" and there is before this any thing like letters
  ///
  /// /[0-9]/ : 	matches all digits
  /// /^/     :   matches beginning of a line
  /// /$/     :   matches end of a line
}

// class _testExample {
//   //! Example to use Reg Exp
//   RegExp regExp = RegExpHelper.emailRegExp;
//   checkHasMatch(String email) {
//     print(regExp.hasMatch(email));
//   }
// }
extension PhoneNumberValidation on String {
  bool isMobileNumberValid() {
    String regexPattern = r'^[0-9]{9}$';
    var regExp = new RegExp(regexPattern);

    if (this.length == 0) {
      return false;
    } else if (regExp.hasMatch(this)) {
      return true;
    }
    return false;
  }
}
