package defpackage;

/* loaded from: classes.dex */
public final class uf0<I, O> implements cv2<I, O> {
    public final bf0<O> a;
    public final ef0<I> b;
    public final String c;
    public final aw2<we0> d;

    public uf0(aw2<we0> aw2Var, String str, ef0<I> ef0Var, bf0<O> bf0Var) {
        this.d = aw2Var;
        this.c = str;
        this.b = ef0Var;
        this.a = bf0Var;
    }

    @Override // defpackage.cv2
    public final aw2<O> a(I i) throws Exception {
        return vt2.m(this.d, new xf0(this, i), ms0.f);
    }
}
