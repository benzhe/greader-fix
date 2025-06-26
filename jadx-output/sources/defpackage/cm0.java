package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import defpackage.i00;

/* loaded from: classes.dex */
public final class cm0 extends zzc<em0> {
    public cm0(Context context, Looper looper, i00.a aVar, i00.b bVar) {
        super(en0.a(context), looper, 8, aVar, bVar);
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return iInterfaceQueryLocalInterface instanceof em0 ? (em0) iInterfaceQueryLocalInterface : new gm0(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.ads.service.START";
    }

    public final em0 p() throws DeadObjectException {
        return (em0) super.getService();
    }
}
