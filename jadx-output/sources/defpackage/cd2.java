package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class cd2 implements cb3<ad2> {
    public final mb3<zv2> a;
    public final mb3<Context> b;
    public final mb3<zzbar> c;

    public cd2(mb3<zv2> mb3Var, mb3<Context> mb3Var2, mb3<zzbar> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ad2(this.a.get(), this.b.get(), this.c.get());
    }
}
