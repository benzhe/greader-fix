package defpackage;

import com.google.android.gms.ads.internal.util.zzay;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class km1 implements cb3<im1> {
    public final mb3<zzay> a;
    public final mb3<b20> b;

    public km1(mb3<zzay> mb3Var, mb3<b20> mb3Var2, mb3<Executor> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new im1(this.a.get(), this.b.get(), yn2.a());
    }
}
