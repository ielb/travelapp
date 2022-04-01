import 'package:chaty/src/extensions/extensions.dart';

class BaseProvider extends ChangeNotifier {
  String _message = '';
  String get message => _message;
  setMessage(msg) {
    _message = msg;
    notifyListeners();
  }

  String _error = '';
  String get error => _error;
  setError(msg) {
    _error = msg;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  setIsLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
