package defpackage;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class bk1 implements cb3<zj1> {
    public final mb3<sk2> a;
    public final mb3<JSONObject> b;

    public bk1(mb3<sk2> mb3Var, mb3<JSONObject> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new zj1(this.a.get(), this.b.get());
    }
}
