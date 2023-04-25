import 'dart:io';

int get_input_int() {
  var my_input = stdin.readLineSync();
  if (my_input != null)
    return int.parse(my_input);
  else
    return 0;
}

String get_input_string() {
  var my_input = stdin.readLineSync();
  if (my_input != null)
    return my_input;
  else
    return '';
}

void main() {
  var testCases = get_input_int();
  for (var i = 0; i < testCases; i++) {
    get_solution(i);
  }
}

void get_solution(int i) {
  String cadena = get_input_string();
  String answer = "";
  for (var i = 0; i < cadena.length; i++) {
    answer += cadena[i];
    for (var j = i; j < cadena.length; j++) {
      if (cadena[j].compareTo(cadena[i]) == 1 && i != cadena.length - 1) {
        answer += cadena[i];
        break;
      }
      if (cadena[j].compareTo(cadena[i]) == -1) {
        break;
      }
    }
  }
  stdout.write("Case #${i + 1}: ${answer}\n");
}
