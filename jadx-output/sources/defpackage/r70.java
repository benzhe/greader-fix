package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class r70 extends NativeAd.AdChoicesInfo {
    public final m70 a;
    public final List<NativeAd.Image> b = new ArrayList();
    public String c;

    public r70(m70 m70Var) {
        u70 w70Var;
        IBinder iBinder;
        this.a = m70Var;
        try {
            this.c = m70Var.N0();
        } catch (RemoteException e) {
            is0.zzc("", e);
            this.c = "";
        }
        try {
            for (u70 u70Var : m70Var.P5()) {
                if (!(u70Var instanceof IBinder) || (iBinder = (IBinder) u70Var) == null) {
                    w70Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    w70Var = iInterfaceQueryLocalInterface instanceof u70 ? (u70) iInterfaceQueryLocalInterface : new w70(iBinder);
                }
                if (w70Var != null) {
                    this.b.add(new y70(w70Var));
                }
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.c;
    }
}
