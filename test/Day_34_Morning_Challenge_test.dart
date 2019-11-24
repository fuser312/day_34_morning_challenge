import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("Test case for minRemovals", (){
    expect(minRemovals("abcde", "cab"), 2);
    expect(minRemovals("met", "meet"), 1);
    expect(minRemovals("hello", "cello"), 2);
    expect(minRemovals("mississippi", "pope"), 11);
  });

  test("Test case for anagram", (){
    expect(checkForAnagram("balloon", "balooon"), false);
  });
}




