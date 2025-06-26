package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import defpackage.i00;

/* loaded from: classes.dex */
public final class bc0 extends zzc<gc0> {
    public bc0(Context context, Looper looper, i00.a aVar, i00.b bVar) {
        super(en0.a(context), looper, 166, aVar, bVar);
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return iInterfaceQueryLocalInterface instanceof gc0 ? (gc0) iInterfaceQueryLocalInterface : new jc0(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    public final gc0 p() throws DeadObjectException {
        return (gc0) super.getService();
    }
}
