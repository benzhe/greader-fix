package defpackage;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class hp extends ap {
    public static final BigInteger g;
    public static final BigInteger h;
    public static final BigInteger i;
    public static final BigInteger j;
    public static final BigDecimal k;
    public static final BigDecimal l;
    public bp f;

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(-2147483648L);
        g = bigIntegerValueOf;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(2147483647L);
        h = bigIntegerValueOf2;
        BigInteger bigIntegerValueOf3 = BigInteger.valueOf(Long.MIN_VALUE);
        i = bigIntegerValueOf3;
        BigInteger bigIntegerValueOf4 = BigInteger.valueOf(Long.MAX_VALUE);
        j = bigIntegerValueOf4;
        k = new BigDecimal(bigIntegerValueOf3);
        l = new BigDecimal(bigIntegerValueOf4);
        new BigDecimal(bigIntegerValueOf);
        new BigDecimal(bigIntegerValueOf2);
    }

    public hp(int i2) {
        super(i2);
    }

    public static final String k(int i2) {
        char c = (char) i2;
        if (Character.isISOControl(c)) {
            return jo.h("(CTRL-CHAR, code ", i2, ")");
        }
        if (i2 <= 255) {
            return "'" + c + "' (code " + i2 + ")";
        }
        return "'" + c + "' (code " + i2 + " / 0x" + Integer.toHexString(i2) + ")";
    }

    public void C() throws IOException {
        D(e());
        throw null;
    }

    public void D(String str) throws IOException {
        throw new ip(this, String.format("Numeric value (%s) out of range of long (%d - %s)", n(str), Long.MIN_VALUE, Long.MAX_VALUE), this.f, Long.TYPE);
    }

    public void E(int i2, String str) throws zo {
        throw new zo(this, jo.o(String.format("Unexpected character (%s) in numeric value", k(i2)), ": ", str));
    }

    @Override // defpackage.ap
    public ap i() throws IOException {
        bp bpVar = this.f;
        if (bpVar != bp.START_OBJECT && bpVar != bp.START_ARRAY) {
            return this;
        }
        int i2 = 1;
        while (true) {
            bp bpVarG = g();
            if (bpVarG == null) {
                m();
                return this;
            }
            if (bpVarG.i) {
                i2++;
            } else if (bpVarG.j) {
                i2--;
                if (i2 == 0) {
                    return this;
                }
            } else if (bpVarG == bp.NOT_AVAILABLE) {
                throw new zo(this, String.format("Not enough content available for `skipChildren()`: non-blocking parser? (%s)", getClass().getName()));
            }
        }
    }

    public abstract void m() throws zo;

    public String n(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        if (str.startsWith("-")) {
            length--;
        }
        return String.format("[Integer with %d digits]", Integer.valueOf(length));
    }

    public String q(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        if (str.startsWith("-")) {
            length--;
        }
        return String.format("[number with %d characters]", Integer.valueOf(length));
    }

    public void t(String str, bp bpVar) throws zo {
        throw new mp(this, bpVar, jo.n("Unexpected end-of-input", str));
    }

    public void w(bp bpVar) throws zo {
        t(bpVar != bp.VALUE_STRING ? (bpVar == bp.VALUE_NUMBER_INT || bpVar == bp.VALUE_NUMBER_FLOAT) ? " in a Number value" : " in a value" : " in a String value", bpVar);
        throw null;
    }

    public void x(int i2, String str) throws zo {
        if (i2 >= 0) {
            String strO = String.format("Unexpected character (%s)", k(i2));
            if (str != null) {
                strO = jo.o(strO, ": ", str);
            }
            throw new zo(this, strO);
        }
        StringBuilder sbZ = jo.z(" in ");
        sbZ.append(this.f);
        t(sbZ.toString(), this.f);
        throw null;
    }

    public void y(int i2) throws zo {
        StringBuilder sbZ = jo.z("Illegal character (");
        sbZ.append(k((char) i2));
        sbZ.append("): only regular white space (\\r, \\n, \\t) is allowed between tokens");
        throw new zo(this, sbZ.toString());
    }
}
