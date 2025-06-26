package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;

/* loaded from: classes.dex */
public final class h40 extends s90 {
    public final ShouldDelayBannerRenderingListener e;

    public h40(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.e = shouldDelayBannerRenderingListener;
    }

    @Override // defpackage.p90
    public final boolean H5(x20 x20Var) throws RemoteException {
        return this.e.shouldDelayBannerRendering((Runnable) y20.l0(x20Var));
    }
}
