package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class gg6 implements Closeable, Flushable {
    public static final String[] n = new String[128];
    public static final String[] o;
    public final Writer e;
    public int[] f = new int[32];
    public int g = 0;
    public String h;
    public String i;
    public boolean j;
    public boolean k;
    public String l;
    public boolean m;

    static {
        for (int i = 0; i <= 31; i++) {
            n[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        o = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public gg6(Writer writer) {
        q(6);
        this.i = ":";
        this.m = true;
        Objects.requireNonNull(writer, "out == null");
        this.e = writer;
    }

    public gg6 C(Number number) throws IOException {
        if (number == null) {
            return m();
        }
        F();
        String string = number.toString();
        if (this.j || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            a();
            this.e.append((CharSequence) string);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public gg6 D(String str) throws IOException {
        if (str == null) {
            return m();
        }
        F();
        a();
        w(str);
        return this;
    }

    public gg6 E(boolean z) throws IOException {
        F();
        a();
        this.e.write(z ? "true" : "false");
        return this;
    }

    public final void F() throws IOException {
        if (this.l != null) {
            int iN = n();
            if (iN == 5) {
                this.e.write(44);
            } else if (iN != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            k();
            t(4);
            w(this.l);
            this.l = null;
        }
    }

    public final void a() throws IOException {
        int iN = n();
        if (iN == 1) {
            t(2);
            k();
            return;
        }
        if (iN == 2) {
            this.e.append(',');
            k();
        } else {
            if (iN == 4) {
                this.e.append((CharSequence) this.i);
                t(5);
                return;
            }
            if (iN != 6) {
                if (iN != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.j) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            t(7);
        }
    }

    public gg6 b() throws IOException {
        F();
        a();
        q(1);
        this.e.write(91);
        return this;
    }

    public gg6 c() throws IOException {
        F();
        a();
        q(3);
        this.e.write(123);
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
        int i = this.g;
        if (i > 1 || (i == 1 && this.f[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.g = 0;
    }

    public final gg6 e(int i, int i2, char c) throws IOException {
        int iN = n();
        if (iN != i2 && iN != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.l != null) {
            StringBuilder sbZ = jo.z("Dangling name: ");
            sbZ.append(this.l);
            throw new IllegalStateException(sbZ.toString());
        }
        this.g--;
        if (iN == i2) {
            k();
        }
        this.e.write(c);
        return this;
    }

    public gg6 f() throws IOException {
        e(1, 2, ']');
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.e.flush();
    }

    public gg6 g() throws IOException {
        e(3, 5, '}');
        return this;
    }

    public gg6 i(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.l != null) {
            throw new IllegalStateException();
        }
        if (this.g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.l = str;
        return this;
    }

    public final void k() throws IOException {
        if (this.h == null) {
            return;
        }
        this.e.write(10);
        int i = this.g;
        for (int i2 = 1; i2 < i; i2++) {
            this.e.write(this.h);
        }
    }

    public gg6 m() throws IOException {
        if (this.l != null) {
            if (!this.m) {
                this.l = null;
                return this;
            }
            F();
        }
        a();
        this.e.write("null");
        return this;
    }

    public final int n() {
        int i = this.g;
        if (i != 0) {
            return this.f[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void q(int i) {
        int i2 = this.g;
        int[] iArr = this.f;
        if (i2 == iArr.length) {
            this.f = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        iArr2[i3] = i;
    }

    public final void t(int i) {
        this.f[this.g - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.k
            if (r0 == 0) goto L7
            java.lang.String[] r0 = defpackage.gg6.o
            goto L9
        L7:
            java.lang.String[] r0 = defpackage.gg6.n
        L9:
            java.io.Writer r1 = r8.e
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.e
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.e
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.e
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.e
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gg6.w(java.lang.String):void");
    }

    public gg6 x(long j) throws IOException {
        F();
        a();
        this.e.write(Long.toString(j));
        return this;
    }

    public gg6 y(Boolean bool) throws IOException {
        if (bool == null) {
            return m();
        }
        F();
        a();
        this.e.write(bool.booleanValue() ? "true" : "false");
        return this;
    }
}
