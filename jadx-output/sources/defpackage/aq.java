package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class aq {
    public static final char[] l = new char[0];
    public final wp a;
    public char[] b;
    public int c;
    public int d;
    public ArrayList<char[]> e;
    public boolean f;
    public int g;
    public char[] h;
    public int i;
    public String j;
    public char[] k;

    public aq(wp wpVar) {
        this.a = wpVar;
    }

    public final char[] a(int i) {
        wp wpVar = this.a;
        return wpVar != null ? wpVar.a(2, i) : new char[Math.max(i, 500)];
    }

    public final void b() {
        this.f = false;
        this.e.clear();
        this.g = 0;
        this.i = 0;
    }

    public char[] c() {
        int i;
        char[] cArrCopyOf = this.k;
        if (cArrCopyOf == null) {
            String str = this.j;
            if (str != null) {
                cArrCopyOf = str.toCharArray();
            } else {
                int i2 = this.c;
                if (i2 >= 0) {
                    int i3 = this.d;
                    cArrCopyOf = i3 < 1 ? l : i2 == 0 ? Arrays.copyOf(this.b, i3) : Arrays.copyOfRange(this.b, i2, i3 + i2);
                } else {
                    int iL = l();
                    if (iL < 1) {
                        cArrCopyOf = l;
                    } else {
                        cArrCopyOf = new char[iL];
                        ArrayList<char[]> arrayList = this.e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            i = 0;
                            for (int i4 = 0; i4 < size; i4++) {
                                char[] cArr = this.e.get(i4);
                                int length = cArr.length;
                                System.arraycopy(cArr, 0, cArrCopyOf, i, length);
                                i += length;
                            }
                        } else {
                            i = 0;
                        }
                        System.arraycopy(this.h, 0, cArrCopyOf, i, this.i);
                    }
                }
            }
            this.k = cArrCopyOf;
        }
        return cArrCopyOf;
    }

    public String d() {
        if (this.j == null) {
            if (this.k != null) {
                this.j = new String(this.k);
            } else if (this.c < 0) {
                int i = this.g;
                int i2 = this.i;
                if (i == 0) {
                    this.j = i2 != 0 ? new String(this.h, 0, i2) : "";
                } else {
                    StringBuilder sb = new StringBuilder(i + i2);
                    ArrayList<char[]> arrayList = this.e;
                    if (arrayList != null) {
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            char[] cArr = this.e.get(i3);
                            sb.append(cArr, 0, cArr.length);
                        }
                    }
                    sb.append(this.h, 0, this.i);
                    this.j = sb.toString();
                }
            } else {
                if (this.d < 1) {
                    this.j = "";
                    return "";
                }
                this.j = new String(this.b, this.c, this.d);
            }
        }
        return this.j;
    }

    public char[] e() {
        this.c = -1;
        this.i = 0;
        this.d = 0;
        this.b = null;
        this.j = null;
        this.k = null;
        if (this.f) {
            b();
        }
        char[] cArr = this.h;
        if (cArr != null) {
            return cArr;
        }
        char[] cArrA = a(0);
        this.h = cArrA;
        return cArrA;
    }

    public final void f() {
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        char[] cArr = this.h;
        this.f = true;
        this.e.add(cArr);
        this.g += cArr.length;
        this.i = 0;
        int length = cArr.length;
        int i = length + (length >> 1);
        if (i < 500) {
            i = 500;
        } else if (i > 65536) {
            i = 65536;
        }
        this.h = new char[i];
    }

    public char[] g() {
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        this.f = true;
        this.e.add(this.h);
        int length = this.h.length;
        this.g += length;
        this.i = 0;
        int i = length + (length >> 1);
        if (i < 500) {
            i = 500;
        } else if (i > 65536) {
            i = 65536;
        }
        char[] cArr = new char[i];
        this.h = cArr;
        return cArr;
    }

    public char[] h() {
        if (this.c >= 0) {
            m(1);
        } else {
            char[] cArr = this.h;
            if (cArr == null) {
                this.h = a(0);
            } else if (this.i >= cArr.length) {
                f();
            }
        }
        return this.h;
    }

    public char[] i() {
        if (this.c >= 0) {
            return this.b;
        }
        char[] cArr = this.k;
        if (cArr != null) {
            return cArr;
        }
        String str = this.j;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this.k = charArray;
            return charArray;
        }
        if (this.f) {
            return c();
        }
        char[] cArr2 = this.h;
        return cArr2 == null ? l : cArr2;
    }

    public int j() {
        int i = this.c;
        if (i >= 0) {
            return i;
        }
        return 0;
    }

    public void k(char[] cArr, int i, int i2) {
        this.j = null;
        this.k = null;
        this.b = cArr;
        this.c = i;
        this.d = i2;
        if (this.f) {
            b();
        }
    }

    public int l() {
        if (this.c >= 0) {
            return this.d;
        }
        char[] cArr = this.k;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this.j;
        return str != null ? str.length() : this.g + this.i;
    }

    public final void m(int i) {
        int i2 = this.d;
        this.d = 0;
        char[] cArr = this.b;
        this.b = null;
        int i3 = this.c;
        this.c = -1;
        int i4 = i + i2;
        char[] cArr2 = this.h;
        if (cArr2 == null || i4 > cArr2.length) {
            this.h = a(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this.h, 0, i2);
        }
        this.g = 0;
        this.i = i2;
    }

    public String toString() {
        return d();
    }
}
