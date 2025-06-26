package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public final class fg2 implements cb3<ag2> {
    public final mb3<sy0> a;
    public final mb3<Context> b;
    public final mb3<String> c;
    public final mb3<yf2> d;
    public final mb3<mg2> e;
    public final mb3<zzbar> f;

    public fg2(mb3<sy0> mb3Var, mb3<Context> mb3Var2, mb3<String> mb3Var3, mb3<yf2> mb3Var4, mb3<mg2> mb3Var5, mb3<zzbar> mb3Var6) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ag2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get());
    }
}
