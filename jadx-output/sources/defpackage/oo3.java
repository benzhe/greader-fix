package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.Feature;
import defpackage.i00;

/* loaded from: classes.dex */
public final class oo3 extends zzc<so3> {
    public oo3(Context context, Looper looper, i00.a aVar, i00.b bVar) {
        super(en0.a(context), looper, 123, aVar, bVar);
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return iInterfaceQueryLocalInterface instanceof so3 ? (so3) iInterfaceQueryLocalInterface : new ro3(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    @Override // defpackage.i00
    public final Feature[] getApiFeatures() {
        return zzb.zzadq;
    }

    public final so3 p() throws DeadObjectException {
        return (so3) super.getService();
    }

    public final boolean q() {
        return ((Boolean) os3.j.f.a(y40.l1)).booleanValue() && bi.n(getAvailableFeatures(), zzb.zzadp);
    }
}
