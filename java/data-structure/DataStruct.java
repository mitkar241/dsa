import java.util.*;

// If they're in the same package you don't need to import.
//import DataType;

class DataStruct {

  public static void main (String[] args) {
    DataStruct ds = new DataStruct();

    ds.testDataType();
	}

  public void testDataType() {
    DataType dataType = new DataType();

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
}
