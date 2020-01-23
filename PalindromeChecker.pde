public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String analyze = word;
  analyze = reverse(analyze);
  analyze = noCapitals(analyze);
  analyze = noSpaces(analyze);
  analyze = onlyLetters(analyze);
  String original = word;
  original = noCapitals(original);
  original = noSpaces(original);
  original = onlyLetters(original);
  if(analyze.equals(original))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = 0; i < str.length(); i++){
      sNew = sNew + str.substring(str.length() - i - 1, str.length() - i);
    }
    return sNew;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String empty = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i, i+1).equals(" ") == false)
      empty = empty + sWord.substring(i, i+1);
  }
  return empty;
}

public int numLetters(String sString){
  int counter = 0;
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      counter++;
  }
  return counter;
}

public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}


