package defpackage;

import com.google.android.gms.ads.internal.zzl;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class jx implements Callable<d23> {
    public final /* synthetic */ zzl e;

    public jx(zzl zzlVar) {
        this.e = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final d23 call() throws Exception {
        zzl zzlVar = this.e;
        return new d23(fz2.k(zzlVar.e.e, zzlVar.h, false, 1));
    }
}
