package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class ky1 implements cb3<gy1> {
    public final mb3<Context> a;
    public final mb3<g91> b;
    public final mb3<dy1> c;
    public final mb3<xx1> d;
    public final mb3<zzf> e;

    public ky1(mb3<Context> mb3Var, mb3<g91> mb3Var2, mb3<dy1> mb3Var3, mb3<xx1> mb3Var4, mb3<zzf> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static ky1 a(mb3<Context> mb3Var, mb3<g91> mb3Var2, mb3<dy1> mb3Var3, mb3<xx1> mb3Var4, mb3<zzf> mb3Var5) {
        return new ky1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new gy1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
