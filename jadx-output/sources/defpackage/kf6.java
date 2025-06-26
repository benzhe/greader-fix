package defpackage;

import defpackage.ze6;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
public final class kf6 extends eg6 {
    public static final Object y;
    public Object[] u;
    public int v;
    public String[] w;
    public int[] x;

    public class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    }

    static {
        new a();
        y = new Object();
    }

    private String q() {
        StringBuilder sbZ = jo.z(" at path ");
        sbZ.append(k());
        return sbZ.toString();
    }

    @Override // defpackage.eg6
    public String C() throws IOException {
        j0(fg6.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) k0()).next();
        String str = (String) entry.getKey();
        this.w[this.v - 1] = str;
        p0(entry.getValue());
        return str;
    }

    @Override // defpackage.eg6
    public void E() throws IOException {
        j0(fg6.NULL);
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.eg6
    public String I() throws IOException {
        fg6 fg6VarQ = Q();
        fg6 fg6Var = fg6.STRING;
        if (fg6VarQ == fg6Var || fg6VarQ == fg6.NUMBER) {
            String strL = ((yd6) m0()).l();
            int i = this.v;
            if (i > 0) {
                int[] iArr = this.x;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return strL;
        }
        throw new IllegalStateException("Expected " + fg6Var + " but was " + fg6VarQ + q());
    }

    @Override // defpackage.eg6
    public fg6 Q() throws IOException {
        if (this.v == 0) {
            return fg6.END_DOCUMENT;
        }
        Object objK0 = k0();
        if (objK0 instanceof Iterator) {
            boolean z = this.u[this.v - 2] instanceof wd6;
            Iterator it = (Iterator) objK0;
            if (!it.hasNext()) {
                return z ? fg6.END_OBJECT : fg6.END_ARRAY;
            }
            if (z) {
                return fg6.NAME;
            }
            p0(it.next());
            return Q();
        }
        if (objK0 instanceof wd6) {
            return fg6.BEGIN_OBJECT;
        }
        if (objK0 instanceof qd6) {
            return fg6.BEGIN_ARRAY;
        }
        if (!(objK0 instanceof yd6)) {
            if (objK0 instanceof vd6) {
                return fg6.NULL;
            }
            if (objK0 == y) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        Object obj = ((yd6) objK0).a;
        if (obj instanceof String) {
            return fg6.STRING;
        }
        if (obj instanceof Boolean) {
            return fg6.BOOLEAN;
        }
        if (obj instanceof Number) {
            return fg6.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // defpackage.eg6
    public void a() throws IOException {
        j0(fg6.BEGIN_ARRAY);
        p0(((qd6) k0()).iterator());
        this.x[this.v - 1] = 0;
    }

    @Override // defpackage.eg6
    public void b() throws IOException {
        j0(fg6.BEGIN_OBJECT);
        p0(new ze6.b.a((ze6.b) ((wd6) k0()).a.entrySet()));
    }

    @Override // defpackage.eg6, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.u = new Object[]{y};
        this.v = 1;
    }

    @Override // defpackage.eg6
    public void f() throws IOException {
        j0(fg6.END_ARRAY);
        m0();
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.eg6
    public void g() throws IOException {
        j0(fg6.END_OBJECT);
        m0();
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // defpackage.eg6
    public void g0() throws IOException {
        if (Q() == fg6.NAME) {
            C();
            this.w[this.v - 2] = "null";
        } else {
            m0();
            int i = this.v;
            if (i > 0) {
                this.w[i - 1] = "null";
            }
        }
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public final void j0(fg6 fg6Var) throws IOException {
        if (Q() == fg6Var) {
            return;
        }
        throw new IllegalStateException("Expected " + fg6Var + " but was " + Q() + q());
    }

    @Override // defpackage.eg6
    public String k() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (i < this.v) {
            Object[] objArr = this.u;
            if (objArr[i] instanceof qd6) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.x[i]);
                    sb.append(']');
                }
            } else if (objArr[i] instanceof wd6) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                    String[] strArr = this.w;
                    if (strArr[i] != null) {
                        sb.append(strArr[i]);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    public final Object k0() {
        return this.u[this.v - 1];
    }

    @Override // defpackage.eg6
    public boolean m() throws IOException {
        fg6 fg6VarQ = Q();
        return (fg6VarQ == fg6.END_OBJECT || fg6VarQ == fg6.END_ARRAY) ? false : true;
    }

    public final Object m0() {
        Object[] objArr = this.u;
        int i = this.v - 1;
        this.v = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    public final void p0(Object obj) {
        int i = this.v;
        Object[] objArr = this.u;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.u = Arrays.copyOf(objArr, i2);
            this.x = Arrays.copyOf(this.x, i2);
            this.w = (String[]) Arrays.copyOf(this.w, i2);
        }
        Object[] objArr2 = this.u;
        int i3 = this.v;
        this.v = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // defpackage.eg6
    public boolean t() throws IOException {
        j0(fg6.BOOLEAN);
        boolean zH = ((yd6) m0()).h();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zH;
    }

    @Override // defpackage.eg6
    public String toString() {
        return kf6.class.getSimpleName();
    }

    @Override // defpackage.eg6
    public double w() throws IOException {
        fg6 fg6VarQ = Q();
        fg6 fg6Var = fg6.NUMBER;
        if (fg6VarQ != fg6Var && fg6VarQ != fg6.STRING) {
            throw new IllegalStateException("Expected " + fg6Var + " but was " + fg6VarQ + q());
        }
        yd6 yd6Var = (yd6) k0();
        double dDoubleValue = yd6Var.a instanceof Number ? yd6Var.j().doubleValue() : Double.parseDouble(yd6Var.l());
        if (!this.f && (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dDoubleValue);
        }
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dDoubleValue;
    }

    @Override // defpackage.eg6
    public int x() throws IOException {
        fg6 fg6VarQ = Q();
        fg6 fg6Var = fg6.NUMBER;
        if (fg6VarQ != fg6Var && fg6VarQ != fg6.STRING) {
            throw new IllegalStateException("Expected " + fg6Var + " but was " + fg6VarQ + q());
        }
        yd6 yd6Var = (yd6) k0();
        int iIntValue = yd6Var.a instanceof Number ? yd6Var.j().intValue() : Integer.parseInt(yd6Var.l());
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iIntValue;
    }

    @Override // defpackage.eg6
    public long y() throws IOException {
        fg6 fg6VarQ = Q();
        fg6 fg6Var = fg6.NUMBER;
        if (fg6VarQ != fg6Var && fg6VarQ != fg6.STRING) {
            throw new IllegalStateException("Expected " + fg6Var + " but was " + fg6VarQ + q());
        }
        yd6 yd6Var = (yd6) k0();
        long jLongValue = yd6Var.a instanceof Number ? yd6Var.j().longValue() : Long.parseLong(yd6Var.l());
        m0();
        int i = this.v;
        if (i > 0) {
            int[] iArr = this.x;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jLongValue;
    }
}
