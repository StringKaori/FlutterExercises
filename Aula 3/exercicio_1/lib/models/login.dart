class Login {
  String _user;
  String _password;

  Login(this._user, this._password);

  String get user => _user;

  set user(String newUser) {
    _user = newUser;
  }

  bool isAdmin() {
    return _user == "admin" && _password == "1234";
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }
}
