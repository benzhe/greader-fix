package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class r12 implements cb3<p12> {
    public final mb3<Context> a;
    public final mb3<zzbar> b;
    public final mb3<oh1> c;

    public r12(mb3<Context> mb3Var, mb3<zzbar> mb3Var2, mb3<oh1> mb3Var3, mb3<Executor> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new p12(this.a.get(), this.b.get(), this.c.get(), yn2.a());
    }
}
