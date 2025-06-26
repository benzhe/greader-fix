package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import defpackage.qy;

/* loaded from: classes.dex */
public final class s14 extends m00<v14> {
    public s14(Context context, Looper looper, j00 j00Var, qy.a aVar, qy.b bVar) {
        super(context, looper, 40, j00Var, aVar, bVar);
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return iInterfaceQueryLocalInterface instanceof v14 ? (v14) iInterfaceQueryLocalInterface : new w14(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.clearcut.service.START";
    }

    @Override // defpackage.m00, defpackage.i00, ny.f
    public final int getMinApkVersion() {
        return 11925000;
    }
}
