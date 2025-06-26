package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import defpackage.i00;

/* loaded from: classes.dex */
public final class tr2 extends zzc<yr2> {
    public final int D;

    public tr2(Context context, Looper looper, i00.a aVar, i00.b bVar, int i) {
        super(context, looper, 116, aVar, bVar);
        this.D = i;
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        return iInterfaceQueryLocalInterface instanceof yr2 ? (yr2) iInterfaceQueryLocalInterface : new xr2(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.gass.START";
    }

    @Override // defpackage.i00, ny.f
    public final int getMinApkVersion() {
        return this.D;
    }

    public final yr2 p() throws DeadObjectException {
        return (yr2) super.getService();
    }
}
