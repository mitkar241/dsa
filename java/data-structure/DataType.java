import java.util.*;

public class DataType {

  private boolean varboolean;
  private char varchar;
  private byte varbyte;
  private short varshort;
  private int varint;
  private long varlong;
  private float varfloat;
  private double vardouble;
  private String varString;

  /*
  ##############################
  # BOOLEAN DATA TYPE
  ##############################
  */

  /*
  ###############
  # boolean
  ###############
  */
	public boolean getboolean() {
    return varboolean;
	}

  public void setboolean(boolean var) {
    this.varboolean = var;
	}

  /*
  ##############################
  # CHARACTER DATA TYPE
  ##############################
  */

  /*
  ###############
  # char
  ###############
  */
  public char getchar() {
    return varchar;
	}

  public void setchar(char var) {
    this.varchar = var;
	}

  /*
  ##############################
  # INTEGER DATA TYPE
  ##############################
  */

  /*
  ###############
  # byte
  ###############
  */
  public byte getbyte() {
    return varbyte;
	}

  public void setbyte(byte var) {
    this.varbyte = var;
	}

  /*
  ###############
  # short
  ###############
  */
  public short getshort() {
    return varshort;
	}

  public void setshort(short var) {
    this.varshort = var;
	}

  /*
  ###############
  # int
  ###############
  */
  public int getint() {
    return varint;
	}

  public void setint(int var) {
    this.varint = var;
	}

  /*
  ###############
  # long
  ###############
  */
  public long getlong() {
    return varlong;
	}

  public void setlong(long var) {
    this.varlong = var;
	}

  /*
  ##############################
  # FLOATING-POINT DATA TYPE
  ##############################
  */
  
  /*
  ###############
  # float
  ###############
  */
  public float getfloat() {
    return varfloat;
	}

  public void setfloat(float var) {
    this.varfloat = var;
	}

  /*
  ###############
  # double
  ###############
  */
  public double getdouble() {
    return vardouble;
	}

  public void setdouble(double var) {
    this.vardouble = var;
	}

  /*
  ##############################
  # NON-PRIMITIVE DATA TYPE
  ##############################
  */

  /*
  ###############
  # String
  ###############
  */
  public String getString() {
    return varString;
	}

  public void setString(String var) {
    this.varString = var;
	}

}
