package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class m22 implements cb3<g22> {
    public final mb3<Context> a;
    public final mb3<ji1> b;
    public final mb3<zzbar> c;

    public m22(mb3<Context> mb3Var, mb3<ji1> mb3Var2, mb3<zzbar> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new g22(this.a.get(), this.b.get(), this.c.get());
    }
}
