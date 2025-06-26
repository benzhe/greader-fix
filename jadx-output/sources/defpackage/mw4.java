package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import defpackage.i00;

/* loaded from: classes.dex */
public final class mw4 extends i00<hw4> {
    public mw4(Context context, Looper looper, i00.a aVar, i00.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override // defpackage.i00
    public final /* bridge */ /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof hw4 ? (hw4) iInterfaceQueryLocalInterface : new fw4(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // defpackage.i00, ny.f
    public final int getMinApkVersion() {
        return 12451000;
    }
}
