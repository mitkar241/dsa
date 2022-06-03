import java.util.*;
import java.util.stream.Collectors;

// If they're in the same package you don't need to import.
//import DataType;

class DataStruct {

  public static void main (String[] args) {
    DataStruct ds = new DataStruct();

    ds.testDataType();
    ds.testArray();
    ds.testList();
    ds.testArrayList();
	}

  public void testDataType() {
    DataType dataType = new DataType();

    System.out.println("###############");
    System.out.println("# DATA TYPE");
    System.out.println("###############");

    dataType.setboolean(true);
	  System.out.println(dataType.getboolean());

    dataType.setchar('a');
	  System.out.println(dataType.getchar());

    // error: incompatible types: possible lossy conversion from int to byte
    // dataType.setbyte(3);
    //                  ^
    dataType.setbyte((byte)3);
	  System.out.println(dataType.getbyte());

    dataType.setshort((short)30);
	  System.out.println(dataType.getshort());

    dataType.setint(300);
	  System.out.println(dataType.getint());

    // IntegerTypeSuffix
    // The Java spec allows both upper and lower case suffixes,
    // but the upper case version for longs is preferred,
    // as the upper case L is less easy to confuse with a numeral 1 than the lower case l.
    dataType.setlong((long)300000L);
	  System.out.println(dataType.getlong());

    dataType.setfloat(3.0f);
	  System.out.println(dataType.getfloat());

    dataType.setdouble(300000d);
	  System.out.println(dataType.getdouble());

    dataType.setString("testing");
	  System.out.println(dataType.getString());
	}

  public void testArray() {
    Array array = new Array();

    System.out.println("###############");
    System.out.println("# ARRAY");
    System.out.println("###############");

    int[] arrint = {5, 1, 3};
    array.setArrint(arrint);
    for (int elem: array.getArrint()) {
      System.out.printf("%d, ", elem);
    }
    System.out.println("");

    String[] arrString = {"this", "is", "test", "string1"};
    array.setArrString(arrString);
    for (String elem: array.getArrString()) {
      System.out.printf("%s, ", elem);
    }
    System.out.println("");
	}

  public void testList() {
    ListClass arrList = new ListClass();
    
    System.out.println("###############");
    System.out.println("# LIST");
    System.out.println("###############");
    /*
    int[] arrint = {7, 1, 3, 5};
    List<Integer> intToIntegerList = Arrays
                                    .stream( arrint )
                                    .boxed()
                                    .collect(Collectors.toList());
    */
    
    List<Integer> listInteger = Arrays.asList(6, 4, 2, 8);
    arrList.setListInteger(listInteger);
    for (int elem: arrList.getListInteger()) {
      System.out.printf("%d, ", elem);
    }
    System.out.println("");

    List<String> listString = Arrays.asList("this", "is", "test", "string2");
    arrList.setListString(listString);
    for (String elem: arrList.getListString()) {
      System.out.printf("%s, ", elem);
    }
    System.out.println("");
	}

  public void testArrayList() {
    ArrayListClass arrayList = new ArrayListClass();

    System.out.println("###############");
    System.out.println("# ARRAY LIST");
    System.out.println("###############");
    /*
    int[] arrint = {7, 1, 3, 5};
    List<Integer> intToIntegerList = Arrays
                                    .stream( arrint )
                                    .boxed()
                                    .collect(Collectors.toList());
    */
    
    ArrayList<Integer> arrListInteger = new ArrayList<>(Arrays.asList(5, 3, 1, 7));
    arrayList.setArrListInteger(arrListInteger);
    for (int elem: arrayList.getArrListInteger()) {
      System.out.printf("%d, ", elem);
    }
    System.out.println("");

    ArrayList<String> arrListString = new ArrayList<>(Arrays.asList("this", "is", "test", "string3"));
    arrayList.setArrListString(arrListString);
    for (String elem: arrayList.getArrListString()) {
      System.out.printf("%s, ", elem);
    }
    System.out.println("");
	}

}
