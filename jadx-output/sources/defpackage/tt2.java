package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tt2<E> extends kt2<E> {
    public Object[] d;
    public int e;

    public tt2() {
        super(4);
    }

    @Override // defpackage.jt2
    public final jt2 a(Object obj) {
        Objects.requireNonNull(obj);
        if (this.d != null) {
            int iY = qt2.y(this.b);
            Object[] objArr = this.d;
            if (iY <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iU3 = c50.U3(iHashCode);
                while (true) {
                    int i = iU3 & length;
                    Object[] objArr2 = this.d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        iU3 = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.e += iHashCode;
                        b(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.d = null;
        b(obj);
        return this;
    }

    @Override // defpackage.kt2
    public final jt2 d(Iterable iterable) {
        if (this.d != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        } else {
            super.d(iterable);
        }
        return this;
    }

    public final qt2<E> e() {
        qt2<E> qt2VarR;
        int i = this.b;
        if (i == 0) {
            return fu2.m;
        }
        if (i == 1) {
            Object obj = this.a[0];
            int i2 = qt2.g;
            return new gu2(obj);
        }
        if (this.d == null || qt2.y(i) != this.d.length) {
            qt2VarR = qt2.r(this.b, this.a);
            this.b = qt2VarR.size();
        } else {
            int i3 = this.b;
            Object[] objArrCopyOf = this.a;
            int length = objArrCopyOf.length;
            if (i3 < (length >> 1) + (length >> 2)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
            }
            qt2VarR = new fu2<>(objArrCopyOf, this.e, this.d, r7.length - 1, this.b);
        }
        this.c = true;
        this.d = null;
        return qt2VarR;
    }

    public tt2(int i) {
        super(i);
        this.d = new Object[qt2.y(i)];
    }
}
