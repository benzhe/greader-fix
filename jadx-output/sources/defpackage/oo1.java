package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class oo1 implements rv2<xw0> {
    public final /* synthetic */ String a;
    public final /* synthetic */ Map b;

    public oo1(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(xw0 xw0Var) {
        xw0Var.x(this.a, this.b);
    }
}
