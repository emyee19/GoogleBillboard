public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int beginIndex = 2;
int endIndex = 12;
String digits = e.substring(1,11);
double dNum = Double.parseDouble(digits);
// System.out.println(dNum);

public void setup()  
{      
     noLoop();  
}  
public void draw()  
{   
		while(!isPrime(dNum)){
		beginIndex++;
		endIndex++;
		digits = e.substring(beginIndex,endIndex);
	 	dNum = Double.parseDouble(digits);
	}
	System.out.println("First prime is found: " + digits);

}  
public boolean isPrime(double num)  
{

  if (num == 1) {
  return false;
  }

  else if (num == 2) {
  return true;
  }
  else if (num < 0) {
  return false;
  }
  for (int i = 2; i <= Math.sqrt(num); i++) {
  if (num % i == 0) {
  return false;
  }

  }
  return true;
} 
