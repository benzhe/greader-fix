package defpackage;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zb3 implements Runnable {
    public final /* synthetic */ xb3 e;

    public zb3(xb3 xb3Var) {
        this.e = xb3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xb3 xb3Var = this.e;
        Objects.requireNonNull(xb3Var);
        try {
            if (xb3Var.f == null && xb3Var.i) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(xb3Var.a);
                advertisingIdClient.start();
                xb3Var.f = advertisingIdClient;
            }
        } catch (hy | iy | IOException unused) {
            xb3Var.f = null;
        }
    }
}
