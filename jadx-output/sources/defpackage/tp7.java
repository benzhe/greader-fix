package defpackage;

/* loaded from: classes2.dex */
public final class tp7 implements up7 {
    public final eq7 e;

    public tp7(eq7 eq7Var) {
        this.e = eq7Var;
    }

    @Override // defpackage.up7
    public eq7 a() {
        return this.e;
    }

    @Override // defpackage.up7
    public boolean isActive() {
        return false;
    }

    public String toString() {
        return fp7.a ? this.e.i("New") : super.toString();
    }
}
