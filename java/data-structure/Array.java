import java.util.*;

class Array {

  private String[] arrString;

  public void getArrString() {
    return arrString;
	}

  public void setArrString(String[] arr) {
    this.arrString = arr;
	}

  public static void printArray(Object[] arr){
    Arrays.asList(arr).forEach(System.out::print);
    System.out.println("");
  }

  public void intArray (Array array, int[] arr) {
    Integer[] obj = Arrays.stream(arr).boxed().toArray( Integer[]::new );
    array.printArray(obj);
	}

  public void getArrayString (Array array, String[] arr) {
    Object[] obj = arr;
    array.printArray(obj);
	}
}
