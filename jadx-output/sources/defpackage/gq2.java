package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class gq2 implements cb3<hq2> {
    public final mb3<v22> a;
    public final mb3<zzbar> b;
    public final mb3<String> c;
    public final mb3<String> d;
    public final mb3<Context> e;
    public final mb3<gl2> f;
    public final mb3<b20> g;
    public final mb3<d23> h;

    public gq2(mb3<v22> mb3Var, mb3<zzbar> mb3Var2, mb3<String> mb3Var3, mb3<String> mb3Var4, mb3<Context> mb3Var5, mb3<gl2> mb3Var6, mb3<b20> mb3Var7, mb3<d23> mb3Var8) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
        this.h = mb3Var8;
    }

    public static gq2 a(mb3<v22> mb3Var, mb3<zzbar> mb3Var2, mb3<String> mb3Var3, mb3<String> mb3Var4, mb3<Context> mb3Var5, mb3<gl2> mb3Var6, mb3<b20> mb3Var7, mb3<d23> mb3Var8) {
        return new gq2(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7, mb3Var8);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new hq2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get(), this.h.get());
    }
}
