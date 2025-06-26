package defpackage;

/* loaded from: classes.dex */
public class j4<E> implements Cloneable {
    public static final Object i = new Object();
    public boolean e = false;
    public long[] f;
    public Object[] g;
    public int h;

    public j4() {
        int iF = i4.f(10);
        this.f = new long[iF];
        this.g = new Object[iF];
    }

    public void b(long j, E e) {
        int i2 = this.h;
        if (i2 != 0 && j <= this.f[i2 - 1]) {
            i(j, e);
            return;
        }
        if (this.e && i2 >= this.f.length) {
            e();
        }
        int i3 = this.h;
        if (i3 >= this.f.length) {
            int iF = i4.f(i3 + 1);
            long[] jArr = new long[iF];
            Object[] objArr = new Object[iF];
            long[] jArr2 = this.f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f = jArr;
            this.g = objArr;
        }
        this.f[i3] = j;
        this.g[i3] = e;
        this.h = i3 + 1;
    }

    public void c() {
        int i2 = this.h;
        Object[] objArr = this.g;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.h = 0;
        this.e = false;
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public j4<E> clone() {
        try {
            j4<E> j4Var = (j4) super.clone();
            j4Var.f = (long[]) this.f.clone();
            j4Var.g = (Object[]) this.g.clone();
            return j4Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final void e() {
        int i2 = this.h;
        long[] jArr = this.f;
        Object[] objArr = this.g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != i) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.e = false;
        this.h = i3;
    }

    public E f(long j) {
        return g(j, null);
    }

    public E g(long j, E e) {
        int iB = i4.b(this.f, this.h, j);
        if (iB >= 0) {
            Object[] objArr = this.g;
            if (objArr[iB] != i) {
                return (E) objArr[iB];
            }
        }
        return e;
    }

    public int h(long j) {
        if (this.e) {
            e();
        }
        return i4.b(this.f, this.h, j);
    }

    public void i(long j, E e) {
        int iB = i4.b(this.f, this.h, j);
        if (iB >= 0) {
            this.g[iB] = e;
            return;
        }
        int i2 = ~iB;
        int i3 = this.h;
        if (i2 < i3) {
            Object[] objArr = this.g;
            if (objArr[i2] == i) {
                this.f[i2] = j;
                objArr[i2] = e;
                return;
            }
        }
        if (this.e && i3 >= this.f.length) {
            e();
            i2 = ~i4.b(this.f, this.h, j);
        }
        int i4 = this.h;
        if (i4 >= this.f.length) {
            int iF = i4.f(i4 + 1);
            long[] jArr = new long[iF];
            Object[] objArr2 = new Object[iF];
            long[] jArr2 = this.f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f = jArr;
            this.g = objArr2;
        }
        int i5 = this.h;
        if (i5 - i2 != 0) {
            long[] jArr3 = this.f;
            int i6 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i6, i5 - i2);
            Object[] objArr4 = this.g;
            System.arraycopy(objArr4, i2, objArr4, i6, this.h - i2);
        }
        this.f[i2] = j;
        this.g[i2] = e;
        this.h++;
    }

    public void j(long j) {
        int iB = i4.b(this.f, this.h, j);
        if (iB >= 0) {
            Object[] objArr = this.g;
            Object obj = objArr[iB];
            Object obj2 = i;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.e = true;
            }
        }
    }

    public int k() {
        if (this.e) {
            e();
        }
        return this.h;
    }

    public E l(int i2) {
        if (this.e) {
            e();
        }
        return (E) this.g[i2];
    }

    public String toString() {
        if (k() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.h; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            if (this.e) {
                e();
            }
            sb.append(this.f[i2]);
            sb.append('=');
            E eL = l(i2);
            if (eL != this) {
                sb.append(eL);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
