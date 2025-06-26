package defpackage;

/* loaded from: classes.dex */
public class n4<E> implements Cloneable {
    public static final Object i = new Object();
    public boolean e;
    public int[] f;
    public Object[] g;
    public int h;

    public n4() {
        this(10);
    }

    public void b(int i2, E e) {
        int i3 = this.h;
        if (i3 != 0 && i2 <= this.f[i3 - 1]) {
            h(i2, e);
            return;
        }
        if (this.e && i3 >= this.f.length) {
            d();
        }
        int i4 = this.h;
        if (i4 >= this.f.length) {
            int iE = i4.e(i4 + 1);
            int[] iArr = new int[iE];
            Object[] objArr = new Object[iE];
            int[] iArr2 = this.f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f = iArr;
            this.g = objArr;
        }
        this.f[i4] = i2;
        this.g[i4] = e;
        this.h = i4 + 1;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n4<E> clone() {
        try {
            n4<E> n4Var = (n4) super.clone();
            n4Var.f = (int[]) this.f.clone();
            n4Var.g = (Object[]) this.g.clone();
            return n4Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final void d() {
        int i2 = this.h;
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != i) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.e = false;
        this.h = i3;
    }

    public E e(int i2) {
        return f(i2, null);
    }

    public E f(int i2, E e) {
        int iA = i4.a(this.f, this.h, i2);
        if (iA >= 0) {
            Object[] objArr = this.g;
            if (objArr[iA] != i) {
                return (E) objArr[iA];
            }
        }
        return e;
    }

    public int g(int i2) {
        if (this.e) {
            d();
        }
        return this.f[i2];
    }

    public void h(int i2, E e) {
        int iA = i4.a(this.f, this.h, i2);
        if (iA >= 0) {
            this.g[iA] = e;
            return;
        }
        int i3 = ~iA;
        int i4 = this.h;
        if (i3 < i4) {
            Object[] objArr = this.g;
            if (objArr[i3] == i) {
                this.f[i3] = i2;
                objArr[i3] = e;
                return;
            }
        }
        if (this.e && i4 >= this.f.length) {
            d();
            i3 = ~i4.a(this.f, this.h, i2);
        }
        int i5 = this.h;
        if (i5 >= this.f.length) {
            int iE = i4.e(i5 + 1);
            int[] iArr = new int[iE];
            Object[] objArr2 = new Object[iE];
            int[] iArr2 = this.f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f = iArr;
            this.g = objArr2;
        }
        int i6 = this.h;
        if (i6 - i3 != 0) {
            int[] iArr3 = this.f;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr4 = this.g;
            System.arraycopy(objArr4, i3, objArr4, i7, this.h - i3);
        }
        this.f[i3] = i2;
        this.g[i3] = e;
        this.h++;
    }

    public void i(int i2) {
        int iA = i4.a(this.f, this.h, i2);
        if (iA >= 0) {
            Object[] objArr = this.g;
            Object obj = objArr[iA];
            Object obj2 = i;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.e = true;
            }
        }
    }

    public int j() {
        if (this.e) {
            d();
        }
        return this.h;
    }

    public E k(int i2) {
        if (this.e) {
            d();
        }
        return (E) this.g[i2];
    }

    public String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.h; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(g(i2));
            sb.append('=');
            E eK = k(i2);
            if (eK != this) {
                sb.append(eK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public n4(int i2) {
        this.e = false;
        if (i2 == 0) {
            this.f = i4.a;
            this.g = i4.c;
        } else {
            int iE = i4.e(i2);
            this.f = new int[iE];
            this.g = new Object[iE];
        }
    }
}
