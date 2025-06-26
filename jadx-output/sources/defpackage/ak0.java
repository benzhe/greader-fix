package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ak0 extends NativeAd.AdChoicesInfo {
    public final List<NativeAd.Image> a = new ArrayList();
    public String b;

    public ak0(m70 m70Var) {
        try {
            this.b = m70Var.N0();
        } catch (RemoteException e) {
            is0.zzc("", e);
            this.b = "";
        }
        try {
            for (u70 u70Var : m70Var.P5()) {
                u70 u70VarW6 = u70Var instanceof IBinder ? h70.W6((IBinder) u70Var) : null;
                if (u70VarW6 != null) {
                    this.a.add(new ck0(u70VarW6));
                }
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.a;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.b;
    }
}
