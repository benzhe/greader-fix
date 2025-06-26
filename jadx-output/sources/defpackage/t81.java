package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class t81 implements cb3<u81> {
    public final mb3<Context> a;
    public final mb3<ll2> b;
    public final mb3<zzbar> c;
    public final mb3<zzf> d;
    public final mb3<mt1> e;

    public t81(mb3<Context> mb3Var, mb3<ll2> mb3Var2, mb3<zzbar> mb3Var3, mb3<zzf> mb3Var4, mb3<mt1> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static t81 a(mb3<Context> mb3Var, mb3<ll2> mb3Var2, mb3<zzbar> mb3Var3, mb3<zzf> mb3Var4, mb3<mt1> mb3Var5) {
        return new t81(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new u81(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
