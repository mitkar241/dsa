import java.util.*;

class Array {

  public static void printArray(Object[] arr){
    Arrays.asList(arr).forEach(System.out::print);
    System.out.println("");
  }

	public void booleanArray (boolean[] arr) {
    for(int i = 0; i< arr.length; i++) {
		  System.out.print(arr[i]+", ");
    }
    System.out.println("");
	}

  public void charArray (char[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}

  public void byteArray (byte[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}

  public void shortArray (short[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}
  
  public void intArray (Array array, int[] arr) {
    Integer[] obj = Arrays.stream(arr).boxed().toArray( Integer[]::new );
    array.printArray(obj);
	}

  public void longArray (long[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}

  public void floatArray (float[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}

  public void doubleArray (double[] array) {
	  for(int i = 0; i< array.length; i++) {
		  System.out.print(array[i]+", ");
    }
    System.out.println("");
	}

  public void stringArray (Array array, String[] arr) {
    Object[] obj = arr;
    array.printArray(obj);
	}
}

class DataStruct {

  public static void main (String[] args) {
    Array array = new Array();

    // boolean data type
    boolean[] booleanArray = new boolean[]{ true, false, false, true, true };
	  array.booleanArray(booleanArray);

    // character data type
    char[] charArray = new char[]{ 'e', 'b', 'a', 'd', 'c' };
    array.charArray(charArray);

    // integer data types
    //byte byteArray[] = str.getBytes();
    byte[] byteArray = new byte[]{ 3, 4, 0, 1, 2 };
    array.byteArray(byteArray);

    short[] shortArr = new short[]{ 3, 4, 0, 1, 2 };
	  array.shortArray(shortArr);
    
    int[] intArr = new int[]{ 3, 4, 0, 1, 2 };
	  array.intArray(array, intArr);

    long[] longArray = new long[]{ 300000L, 400000L, 000000L, 100000L, 200000L };
	  array.longArray(longArray);

    // floating-point data types
    float[] floatArray = new float[]{ 3.1f, 4.2f, 0.4f, 1.3f, 2.0f };
	  array.floatArray(floatArray);

    double[] doubleArray = new double[]{ 300000d, 400000d, 000000d, 100000d, 200000d };
	  array.doubleArray(doubleArray);

    // non-primitive data types
    String[] stringArr = new String[]{ "this", "is", "java", "test", "string" };
	  array.stringArray(array, stringArr);

    // placeholder : arrayArray
    // placeholder : classArray
    // placeholder : interfaceArray
	}
}
