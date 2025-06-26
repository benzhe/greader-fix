package defpackage;

import android.os.RemoteException;
import defpackage.cq0;

/* loaded from: classes.dex */
public final /* synthetic */ class jq0 implements cq0.b {
    public static final cq0.b a = new jq0();

    @Override // cq0.b
    public final Object a(ny0 ny0Var) throws RemoteException {
        String strC2 = ny0Var.C2();
        if (strC2 != null) {
            return strC2;
        }
        String strF4 = ny0Var.F4();
        return strF4 != null ? strF4 : "";
    }
}
