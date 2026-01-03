public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
double sub;
String subS;
public void setup()  
{     
  size(500, 500);
  for(int i = 2; i < e.length()-10; i++) {
    sub = Double.parseDouble(e.substring(i, i+10));
    subS = e.substring(i, i+10);
    if(isPrime(sub)) {
      break;
    }
  }
  background(0);
  textAlign(CENTER);
  textSize(50);
  text(subS, width/2, height/2);
}  

public boolean isPrime(double dNum)  
{   
  if(dNum <= 1) {return false;}
  for(int i = 2; i < Math.sqrt(dNum); i++) {
    if(dNum%i == 0) {
      return false;
    }
  }
  if(Math.sqrt(dNum)%1 == 0) {
    return false;
  }
    return true;  
} 
