package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class tk0 implements ks0 {
    public static final ks0 a = new tk0();

    @Override // defpackage.ks0
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = nq2.e;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return iInterfaceQueryLocalInterface instanceof kq2 ? (kq2) iInterfaceQueryLocalInterface : new mq2(iBinder);
    }
}
