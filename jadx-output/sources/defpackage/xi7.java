package defpackage;

/* loaded from: classes2.dex */
public final class xi7<T> {
    public int a;
    public int b;
    public int c;
    public T[] d;

    public xi7() {
        int iK1 = n56.K1(16);
        this.a = iK1 - 1;
        this.c = (int) (iK1 * 0.75f);
        this.d = (T[]) new Object[iK1];
    }

    public static int b(int i) {
        int i2 = i * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    public boolean a(T t) {
        T t2;
        T[] tArr = this.d;
        int i = this.a;
        int iB = b(t.hashCode()) & i;
        T t3 = tArr[iB];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                iB = (iB + 1) & i;
                t2 = tArr[iB];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[iB] = t;
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 >= this.c) {
            T[] tArr2 = this.d;
            int length = tArr2.length;
            int i3 = length << 1;
            int i4 = i3 - 1;
            T[] tArr3 = (T[]) new Object[i3];
            while (true) {
                int i5 = i2 - 1;
                if (i2 == 0) {
                    break;
                }
                do {
                    length--;
                } while (tArr2[length] == null);
                int iB2 = b(tArr2[length].hashCode()) & i4;
                if (tArr3[iB2] != null) {
                    do {
                        iB2 = (iB2 + 1) & i4;
                    } while (tArr3[iB2] != null);
                }
                tArr3[iB2] = tArr2[length];
                i2 = i5;
            }
            this.a = i4;
            this.c = (int) (i3 * 0.75f);
            this.d = tArr3;
        }
        return true;
    }

    public boolean c(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.b--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int iB = b(t.hashCode()) & i2;
                if (i <= i3) {
                    if (i >= iB || iB > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < iB || iB <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }
}
