package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class jc2 implements cb3<hc2> {
    public final mb3<zv2> a;
    public final mb3<Bundle> b;

    public jc2(mb3<zv2> mb3Var, mb3<Bundle> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new hc2(this.a.get(), this.b.get());
    }
}
