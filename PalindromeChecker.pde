  
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = new String();
   for(int i = 0; i < word.length(); i++){
        if(!word.substring(i,i+1).equals(" ")){
         word2 = word2 + word.substring(i, i+1);
        }
      }
  String word3 = new String();
    for(int i = 0; i < word2.length(); i++){
      if(Character.isLetter(word2.charAt(i))){
        word3 = word3 + word2.substring(i,i+1);
      }
    }
  if(word3.toLowerCase().equals(reverse(word)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
      for(int i = str.length()-1; i >= 0; i--){
        sNew = sNew + str.substring(i, i+1);
      }
     String sNew2 = new String();
      for(int i = 0; i < sNew.length(); i++){
        if(!sNew.substring(i,i+1).equals(" ")){
         sNew2 = sNew2 + sNew.substring(i, i+1);
        }
      }
     String sNew3 = new String();
       for(int i = 0; i < sNew2.length(); i++){
        if(Character.isLetter(sNew2.charAt(i))){
          sNew3 = sNew3 + sNew2.substring(i,i+1);
        }
       }
  
      return sNew3.toLowerCase();
}
