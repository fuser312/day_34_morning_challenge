
// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2


// Challenge 2
// Farthest Hamming Anagrams
// The Hamming distance between two strings is the number of positions at which
// they differ. Hamming distances can only be calculated for strings of equal length.

/// String s1 = "eleven"
/// String s2 = "twelve"
/// They only have the third position (index 2) in common, giving them a Hamming
/// distance of 5.
/// As anagrams are of identical length, the Hamming distance between them can be
/// calculated.
// String s1 = "read"
// String s2 = "dear"
// These strings differ at the first and last positions, giving them a Hamming distance of 2.

/// Create a function that takes two strings, and returns:
// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
// - false if they aren't anagrams, or
// - Their Hamming distance if they are anagrams with >=1 letter at the same index.

int minRemovals(String firstWord, String secondWord) {
  if (firstWord.isEmpty && secondWord.isEmpty) {
    return 0;
  }
  else if (firstWord.isEmpty) {
    return secondWord.length;
  }
  else if (secondWord.isEmpty) {
    firstWord.length;
  }
  else {
    List firstString = firstWord.split("").toList();
    List secondString = secondWord.split("").toList();

    int count = 0;
    for (int i = 0; i < firstString.length; i++) {
    if (secondString.contains(firstString[i])) {
      secondString.remove(firstString[i]);
    } else {
      count++;
    }
  }
    return count + secondString.length;
  }
}




dynamic farthestHamming(String firstWord, String secondWord){
  if(checkForAnagram(firstWord, secondWord) && hammingDistance(firstWord, secondWord) == firstWord.length){
    return true;
  }
  else if(!checkForAnagram(firstWord, secondWord)){
    return false;
  }
  else if(checkForAnagram(firstWord, secondWord) && hammingDistance(firstWord, secondWord) >= 1){
    return hammingDistance(firstWord, secondWord);
  }
}


bool checkForAnagram(String wordOne, String wordTwo){

  List <String> firstWord = wordOne.split("").toList();
  List <String> secondWord =  wordTwo.split("").toList();

  if(wordOne.length != wordTwo.length){
    return false;
  }
  else {
    for(int i = 0; i<firstWord.length; i++){
      if(secondWord.contains(firstWord[i])){
        secondWord.remove(firstWord[i]);
      }
    }
    return secondWord.isEmpty;
  }
}

int hammingDistance(String first, String second){
  List firstWord = first.split("").toList();
  List secondWord = second.split("").toList();
  int count = 0;
  for(int i = 0; i< firstWord.length; i++){
    if(firstWord[i]!=secondWord[i]){
      count++;
    }
  }
  return count;
}


main() {
  print(minRemovals("hello", "cello"));
}




