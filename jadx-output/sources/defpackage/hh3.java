package defpackage;

import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class hh3 implements dh3 {
    public final al3 a;
    public final int b;
    public final int c;
    public int d;
    public int e;

    public hh3(ch3 ch3Var) {
        al3 al3Var = ch3Var.P0;
        this.a = al3Var;
        al3Var.h(12);
        this.c = al3Var.o() & Base64.BASELENGTH;
        this.b = al3Var.o();
    }

    @Override // defpackage.dh3
    public final boolean a() {
        return false;
    }

    @Override // defpackage.dh3
    public final int b() {
        int i = this.c;
        if (i == 8) {
            return this.a.d();
        }
        if (i == 16) {
            return this.a.e();
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.e & 15;
        }
        int iD = this.a.d();
        this.e = iD;
        return (iD & 240) >> 4;
    }

    @Override // defpackage.dh3
    public final int c() {
        return this.b;
    }
}
