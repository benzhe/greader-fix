package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import defpackage.qy;

/* loaded from: classes.dex */
public final class or4 extends m00<mr4> {
    public or4(Context context, Looper looper, j00 j00Var, qy.a aVar, qy.b bVar) {
        super(context, looper, 51, j00Var, aVar, bVar);
    }

    @Override // defpackage.i00
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return iInterfaceQueryLocalInterface instanceof mr4 ? (mr4) iInterfaceQueryLocalInterface : new nr4(iBinder);
    }

    @Override // defpackage.i00
    public final String e() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // defpackage.i00
    public final String f() {
        return "com.google.android.gms.phenotype.service.START";
    }

    @Override // defpackage.m00, defpackage.i00, ny.f
    public final int getMinApkVersion() {
        return 11925000;
    }
}
