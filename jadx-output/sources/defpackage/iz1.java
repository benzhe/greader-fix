package defpackage;

/* loaded from: classes.dex */
public final class iz1<DelegateT, AdapterT> implements jz1<AdapterT> {
    public final jz1<DelegateT> a;
    public final vs2<DelegateT, AdapterT> b;

    public iz1(jz1<DelegateT> jz1Var, vs2<DelegateT, AdapterT> vs2Var) {
        this.a = jz1Var;
        this.b = vs2Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        return this.a.a(hl2Var, sk2Var);
    }

    @Override // defpackage.jz1
    public final aw2<AdapterT> b(hl2 hl2Var, sk2 sk2Var) {
        return vt2.l(this.a.b(hl2Var, sk2Var), this.b, ms0.a);
    }
}
