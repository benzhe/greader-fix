package defpackage;

import defpackage.br7;
import defpackage.op7;
import java.lang.Comparable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class ar7<T extends br7 & Comparable<? super T>> {
    public volatile int _size = 0;
    public T[] a;

    public final void a(T t) {
        boolean z = fp7.a;
        op7.a aVar = (op7.a) t;
        aVar.l(this);
        T[] tArr = this.a;
        if (tArr == null) {
            tArr = (T[]) new br7[4];
            this.a = tArr;
        } else if (this._size >= tArr.length) {
            Object[] objArrCopyOf = Arrays.copyOf(tArr, this._size * 2);
            im7.d(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
            tArr = (T[]) ((br7[]) objArrCopyOf);
            this.a = tArr;
        }
        int i = this._size;
        this._size = i + 1;
        tArr[i] = t;
        aVar.f = i;
        d(i);
    }

    public final T b() {
        T[] tArr = this.a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T c(int r8) {
        /*
            r7 = this;
            boolean r0 = defpackage.fp7.a
            T extends br7 & java.lang.Comparable<? super T>[] r0 = r7.a
            defpackage.im7.c(r0)
            int r1 = r7._size
            r2 = -1
            int r1 = r1 + r2
            r7._size = r1
            int r1 = r7._size
            if (r8 >= r1) goto L74
            int r1 = r7._size
            r7.e(r8, r1)
            int r1 = r8 + (-1)
            int r1 = r1 / 2
            if (r8 <= 0) goto L35
            r3 = r0[r8]
            defpackage.im7.c(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r0[r1]
            defpackage.im7.c(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L35
            r7.e(r8, r1)
            r7.d(r1)
            goto L74
        L35:
            int r1 = r8 * 2
            int r1 = r1 + 1
            int r3 = r7._size
            if (r1 < r3) goto L3e
            goto L74
        L3e:
            T extends br7 & java.lang.Comparable<? super T>[] r3 = r7.a
            defpackage.im7.c(r3)
            int r4 = r1 + 1
            int r5 = r7._size
            if (r4 >= r5) goto L5c
            r5 = r3[r4]
            defpackage.im7.c(r5)
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            r6 = r3[r1]
            defpackage.im7.c(r6)
            int r5 = r5.compareTo(r6)
            if (r5 >= 0) goto L5c
            r1 = r4
        L5c:
            r4 = r3[r8]
            defpackage.im7.c(r4)
            java.lang.Comparable r4 = (java.lang.Comparable) r4
            r3 = r3[r1]
            defpackage.im7.c(r3)
            int r3 = r4.compareTo(r3)
            if (r3 > 0) goto L6f
            goto L74
        L6f:
            r7.e(r8, r1)
            r8 = r1
            goto L35
        L74:
            int r8 = r7._size
            r8 = r0[r8]
            defpackage.im7.c(r8)
            boolean r1 = defpackage.fp7.a
            r1 = 0
            r8.l(r1)
            r8.i(r2)
            int r2 = r7._size
            r0[r2] = r1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ar7.c(int):br7");
    }

    public final void d(int i) {
        while (i > 0) {
            T[] tArr = this.a;
            im7.c(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            im7.c(t);
            T t2 = tArr[i];
            im7.c(t2);
            if (((Comparable) t).compareTo(t2) <= 0) {
                return;
            }
            e(i, i2);
            i = i2;
        }
    }

    public final void e(int i, int i2) {
        T[] tArr = this.a;
        im7.c(tArr);
        T t = tArr[i2];
        im7.c(t);
        T t2 = tArr[i];
        im7.c(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.i(i);
        t2.i(i2);
    }
}
