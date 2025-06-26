package defpackage;

import java.io.Serializable;

/* loaded from: classes.dex */
public class yo implements Serializable {
    public final long e;
    public final long f;
    public final int g;
    public final int h;
    public final transient Object i;

    public yo(Object obj, long j, int i, int i2) {
        this.i = obj;
        this.e = -1L;
        this.f = j;
        this.g = i;
        this.h = i2;
    }

    public final int a(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return str.length();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof yo)) {
            return false;
        }
        yo yoVar = (yo) obj;
        Object obj2 = this.i;
        if (obj2 == null) {
            if (yoVar.i != null) {
                return false;
            }
        } else if (!obj2.equals(yoVar.i)) {
            return false;
        }
        return this.g == yoVar.g && this.h == yoVar.h && this.f == yoVar.f && this.e == yoVar.e;
    }

    public int hashCode() {
        Object obj = this.i;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this.g) + this.h) ^ ((int) this.f)) + ((int) this.e);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            r0 = 80
            java.lang.String r1 = "[Source: "
            java.lang.StringBuilder r0 = defpackage.jo.w(r0, r1)
            java.lang.Object r1 = r9.i
            r2 = 93
            if (r1 != 0) goto L15
            java.lang.String r1 = "UNKNOWN"
            r0.append(r1)
            goto Lc5
        L15:
            boolean r3 = r1 instanceof java.lang.Class
            if (r3 == 0) goto L1d
            r3 = r1
            java.lang.Class r3 = (java.lang.Class) r3
            goto L21
        L1d:
            java.lang.Class r3 = r1.getClass()
        L21:
            java.lang.String r4 = r3.getName()
            java.lang.String r5 = "java."
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L32
            java.lang.String r4 = r3.getSimpleName()
            goto L3f
        L32:
            boolean r3 = r1 instanceof byte[]
            if (r3 == 0) goto L39
            java.lang.String r4 = "byte[]"
            goto L3f
        L39:
            boolean r3 = r1 instanceof char[]
            if (r3 == 0) goto L3f
            java.lang.String r4 = "char[]"
        L3f:
            r3 = 40
            r0.append(r3)
            r0.append(r4)
            r3 = 41
            r0.append(r3)
            boolean r3 = r1 instanceof java.lang.CharSequence
            r4 = 500(0x1f4, float:7.0E-43)
            r5 = 0
            java.lang.String r6 = " chars"
            if (r3 == 0) goto L6c
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            int r3 = r1.length()
            int r4 = java.lang.Math.min(r3, r4)
            java.lang.CharSequence r1 = r1.subSequence(r5, r4)
            java.lang.String r1 = r1.toString()
            int r1 = r9.a(r0, r1)
            goto L8b
        L6c:
            boolean r3 = r1 instanceof char[]
            r7 = 34
            if (r3 == 0) goto L8e
            char[] r1 = (char[]) r1
            int r3 = r1.length
            java.lang.String r8 = new java.lang.String
            int r4 = java.lang.Math.min(r3, r4)
            r8.<init>(r1, r5, r4)
            r0.append(r7)
            r0.append(r8)
            r0.append(r7)
            int r1 = r8.length()
        L8b:
            int r5 = r3 - r1
            goto Lb5
        L8e:
            boolean r3 = r1 instanceof byte[]
            if (r3 == 0) goto Lb5
            byte[] r1 = (byte[]) r1
            int r3 = r1.length
            int r3 = java.lang.Math.min(r3, r4)
            java.lang.String r4 = new java.lang.String
            java.lang.String r6 = "UTF-8"
            java.nio.charset.Charset r6 = java.nio.charset.Charset.forName(r6)
            r4.<init>(r1, r5, r3, r6)
            r0.append(r7)
            r0.append(r4)
            r0.append(r7)
            r4.length()
            int r1 = r1.length
            int r5 = r1 - r3
            java.lang.String r6 = " bytes"
        Lb5:
            if (r5 <= 0) goto Lc5
            java.lang.String r1 = "[truncated "
            r0.append(r1)
            r0.append(r5)
            r0.append(r6)
            r0.append(r2)
        Lc5:
            java.lang.String r1 = "; line: "
            r0.append(r1)
            int r1 = r9.g
            r0.append(r1)
            java.lang.String r1 = ", column: "
            r0.append(r1)
            int r1 = r9.h
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yo.toString():java.lang.String");
    }

    public yo(Object obj, long j, long j2, int i, int i2) {
        this.i = obj;
        this.e = j;
        this.f = j2;
        this.g = i;
        this.h = i2;
    }
}
