package defpackage;

/* loaded from: classes.dex */
public final class fh3 implements dh3 {
    public final int a;
    public final int b;
    public final al3 c;

    public fh3(ch3 ch3Var) {
        al3 al3Var = ch3Var.P0;
        this.c = al3Var;
        al3Var.h(12);
        this.a = al3Var.o();
        this.b = al3Var.o();
    }

    @Override // defpackage.dh3
    public final boolean a() {
        return this.a != 0;
    }

    @Override // defpackage.dh3
    public final int b() {
        int i = this.a;
        return i == 0 ? this.c.o() : i;
    }

    @Override // defpackage.dh3
    public final int c() {
        return this.b;
    }
}
