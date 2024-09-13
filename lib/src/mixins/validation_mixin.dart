mixin ValidatorMixin{
  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter the password';
    } else if (password.length < 4) {
      return 'Please enter a valid password';
    }
    return null;
   }
  String? validateEmail(String? email) {
    if(email == null || email.isEmpty){
      return 'Please enter an email';
    }
    else if(!email.contains('@') || !email.contains('.com')){
      return 'Please enter a valid email';
    }
    return null;
  }
}