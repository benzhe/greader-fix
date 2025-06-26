package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class xr1 implements cb3<wr1> {
    public final mb3<ep3> a;
    public final mb3<Map<ap2, yr1>> b;

    public xr1(mb3<ep3> mb3Var, mb3<Map<ap2, yr1>> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new wr1(this.a.get(), this.b.get());
    }
}
