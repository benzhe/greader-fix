package defpackage;

import com.google.android.gms.measurement.internal.zzas;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class fy4 implements Callable<byte[]> {
    public final /* synthetic */ zzas e;
    public final /* synthetic */ String f;
    public final /* synthetic */ ky4 g;

    public fy4(ky4 ky4Var, zzas zzasVar, String str) {
        this.g = ky4Var;
        this.e = zzasVar;
        this.f = str;
    }

    @Override // java.util.concurrent.Callable
    public final byte[] call() throws Exception {
        this.g.e.l();
        this.g.e.P().d();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
