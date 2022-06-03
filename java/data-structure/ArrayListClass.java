import java.util.*;

// type ArrayList does not take parameters
// Your code as is can not compile because you shadow
// java.util.ArrayList
// Rename your class, then
class ArrayListClass {

  private ArrayList<Integer> arrListInteger = new ArrayList<Integer>();;
  private ArrayList<String> arrListString = new ArrayList<String>();;

  public ArrayList<Integer> getArrListInteger() {
    return arrListInteger;
	}

  public void setArrListInteger(ArrayList<Integer> arr) {
    this.arrListInteger = arr;
	}
  
  public ArrayList<String> getArrListString() {
    return arrListString;
	}

  public void setArrListString(ArrayList<String> arr) {
    this.arrListString = arr;
	}
  
}
