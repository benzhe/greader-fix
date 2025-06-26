package defpackage;

import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public final class rp {
    public int a;
    public int b = -1;
    public final rp c;
    public qp d;
    public rp e;
    public String f;
    public int g;
    public int h;

    public rp(rp rpVar, qp qpVar, int i, int i2, int i3) {
        this.c = rpVar;
        this.d = qpVar;
        this.a = i;
        this.g = i2;
        this.h = i3;
    }

    public rp a(int i, int i2) {
        rp rpVar = this.e;
        if (rpVar == null) {
            qp qpVar = this.d;
            rpVar = new rp(this, qpVar == null ? null : new qp(qpVar.a), 1, i, i2);
            this.e = rpVar;
        } else {
            rpVar.e(1, i, i2);
        }
        return rpVar;
    }

    public rp b(int i, int i2) {
        rp rpVar = this.e;
        if (rpVar != null) {
            rpVar.e(2, i, i2);
            return rpVar;
        }
        qp qpVar = this.d;
        rp rpVar2 = new rp(this, qpVar == null ? null : new qp(qpVar.a), 2, i, i2);
        this.e = rpVar2;
        return rpVar2;
    }

    public final boolean c() {
        return this.a == 1;
    }

    public final boolean d() {
        return this.a == 0;
    }

    public void e(int i, int i2, int i3) {
        this.a = i;
        this.b = -1;
        this.g = i2;
        this.h = i3;
        this.f = null;
        qp qpVar = this.d;
        if (qpVar != null) {
            qpVar.b = null;
            qpVar.c = null;
            qpVar.d = null;
        }
    }

    public String f() {
        int i = this.a;
        return i != 0 ? i != 1 ? i != 2 ? "?" : "Object" : "Array" : "root";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                sb.append('{');
                String str = this.f;
                if (str != null) {
                    sb.append('\"');
                    int[] iArr = kp.f;
                    int length = iArr.length;
                    int length2 = str.length();
                    while (i < length2) {
                        char cCharAt = str.charAt(i);
                        if (cCharAt >= length || iArr[cCharAt] == 0) {
                            sb.append(cCharAt);
                        } else {
                            sb.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                            int i2 = iArr[cCharAt];
                            if (i2 < 0) {
                                sb.append('u');
                                sb.append('0');
                                sb.append('0');
                                char[] cArr = kp.a;
                                sb.append(cArr[cCharAt >> 4]);
                                sb.append(cArr[cCharAt & 15]);
                            } else {
                                sb.append((char) i2);
                            }
                        }
                        i++;
                    }
                    sb.append('\"');
                } else {
                    sb.append('?');
                }
                sb.append('}');
            } else {
                sb.append('[');
                int i3 = this.b;
                sb.append(i3 >= 0 ? i3 : 0);
                sb.append(']');
            }
        } else {
            sb.append("/");
        }
        return sb.toString();
    }
}
