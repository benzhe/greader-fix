package defpackage;

import com.google.android.gms.measurement.internal.zzas;
import java.io.IOException;

/* loaded from: classes.dex */
public final class ey4 implements Runnable {
    public final /* synthetic */ zzas e;
    public final /* synthetic */ String f;
    public final /* synthetic */ ky4 g;

    public ey4(ky4 ky4Var, zzas zzasVar, String str) {
        this.g = ky4Var;
        this.e = zzasVar;
        this.f = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.g.e.l();
        this.g.e.W(this.e, this.f);
    }
}
