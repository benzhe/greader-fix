package defpackage;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class c14 {
    public volatile int e = -1;

    public static final void c(c14 c14Var, byte[] bArr, int i) {
        try {
            w04 w04Var = new w04(bArr, 0, i);
            c14Var.b(w04Var);
            if (w04Var.a.remaining() == 0) {
            } else {
                throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(w04Var.a.remaining())));
            }
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public void b(w04 w04Var) throws IOException {
    }

    public final int d() {
        int iE = e();
        this.e = iE;
        return iE;
    }

    public int e() {
        return 0;
    }

    @Override // 
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public c14 clone() throws CloneNotSupportedException {
        return (c14) super.clone();
    }

    public String toString() throws SecurityException, IllegalArgumentException {
        String strValueOf;
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            c50.n2(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            strValueOf = String.valueOf(e.getMessage());
            if (strValueOf.length() == 0) {
                str = new String("Error printing proto: ");
                return str;
            }
            return "Error printing proto: ".concat(strValueOf);
        } catch (InvocationTargetException e2) {
            strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() == 0) {
                str = new String("Error printing proto: ");
                return str;
            }
            return "Error printing proto: ".concat(strValueOf);
        }
    }
}
