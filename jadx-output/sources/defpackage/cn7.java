package defpackage;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class cn7 extends kk7 {
    public final int e;
    public boolean f;
    public int g;
    public final int h;

    public cn7(int i, int i2, int i3) {
        this.h = i3;
        this.e = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f = z;
        this.g = z ? i : i2;
    }

    @Override // defpackage.kk7
    public int a() {
        int i = this.g;
        if (i != this.e) {
            this.g = this.h + i;
        } else {
            if (!this.f) {
                throw new NoSuchElementException();
            }
            this.f = false;
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f;
    }
}
