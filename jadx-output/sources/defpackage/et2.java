package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class et2 implements Iterator {
    public T f;
    public final CharSequence g;
    public final qs2 h;
    public int j;
    public int e = 2;
    public int i = 0;

    public et2(bt2 bt2Var, CharSequence charSequence) {
        this.h = bt2Var.a;
        this.j = bt2Var.c;
        this.g = charSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        T string;
        int i = this.e;
        if (!(i != 4)) {
            throw new IllegalStateException();
        }
        int i2 = os2.a[i - 1];
        if (i2 == 1) {
            return false;
        }
        if (i2 != 2) {
            this.e = 4;
            int i3 = this.i;
            while (true) {
                int i4 = this.i;
                if (i4 == -1) {
                    this.e = 3;
                    string = 0;
                    break;
                }
                ct2 ct2Var = (ct2) this;
                int iA = ct2Var.k.a.a(ct2Var.g, i4);
                if (iA == -1) {
                    iA = this.g.length();
                    this.i = -1;
                } else {
                    this.i = iA + 1;
                }
                int i5 = this.i;
                if (i5 == i3) {
                    int i6 = i5 + 1;
                    this.i = i6;
                    if (i6 > this.g.length()) {
                        this.i = -1;
                    }
                } else {
                    while (i3 < iA && this.h.b(this.g.charAt(i3))) {
                        i3++;
                    }
                    while (iA > i3) {
                        int i7 = iA - 1;
                        if (!this.h.b(this.g.charAt(i7))) {
                            break;
                        }
                        iA = i7;
                    }
                    int i8 = this.j;
                    if (i8 == 1) {
                        iA = this.g.length();
                        this.i = -1;
                        while (iA > i3) {
                            int i9 = iA - 1;
                            if (!this.h.b(this.g.charAt(i9))) {
                                break;
                            }
                            iA = i9;
                        }
                    } else {
                        this.j = i8 - 1;
                    }
                    string = this.g.subSequence(i3, iA).toString();
                }
            }
            this.f = string;
            if (this.e == 3) {
                return false;
            }
            this.e = 1;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.e = 2;
        T t = this.f;
        this.f = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
