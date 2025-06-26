package defpackage;

import android.content.Context;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ip3 {
    public vd3 a;
    public boolean b;

    public ip3(Context context, String str) {
        y40.a(context);
        try {
            this.a = (vd3) c50.D1(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", hp3.a);
            new y20(context);
            this.a.H3(new y20(context), str, null);
            this.b = true;
        } catch (RemoteException | NullPointerException | js0 unused) {
            is0.zzdz("Cannot dynamite load clearcut");
        }
    }

    public final qq3 a(byte[] bArr) {
        return new qq3(this, bArr, null);
    }

    public ip3(Context context) {
        y40.a(context);
        if (((Boolean) os3.j.f.a(y40.N2)).booleanValue()) {
            try {
                this.a = (vd3) c50.D1(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", kp3.a);
                new y20(context);
                this.a.l1(new y20(context), "GMA_SDK");
                this.b = true;
            } catch (RemoteException | NullPointerException | js0 unused) {
                is0.zzdz("Cannot dynamite load clearcut");
            }
        }
    }

    public ip3() {
    }
}
