import java.util.*;

class Array {

  private int[] arrint;
  private String[] arrString;

  public int[] getArrint() {
    return Arrays.copyOf(arrint, arrint.length);
	}

  public void setArrint(int[] arr) {
    this.arrint = Arrays.copyOf(arr, arr.length);
	}
  
  public String[] getArrString() {
    return Arrays.copyOf(arrString, arrString.length);
	}

  public void setArrString(String[] arr) {
    this.arrString = Arrays.copyOf(arr, arr.length);
	}
  
}
