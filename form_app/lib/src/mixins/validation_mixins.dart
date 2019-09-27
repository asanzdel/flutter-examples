class ValidationMixins {

  String validateEmail(String value){
    return !value.contains('@') ? 'Error: Invalid email' : null;
  }

  String validatePassword(String value){
    return (value.length < 6) ? 'Error: Minimun 6 characters' : null;
  }

}