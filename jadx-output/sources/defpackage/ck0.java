package defpackage;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class ck0 extends NativeAd.Image {
    public final u70 a;
    public final Drawable b;
    public final Uri c;
    public final double d;

    public ck0(u70 u70Var) {
        x20 x20VarQ2;
        this.a = u70Var;
        Uri uriI0 = null;
        try {
            x20VarQ2 = u70Var.q2();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        Drawable drawable = x20VarQ2 != null ? (Drawable) y20.l0(x20VarQ2) : null;
        this.b = drawable;
        try {
            uriI0 = this.a.i0();
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        this.c = uriI0;
        double dO3 = 1.0d;
        try {
            dO3 = this.a.O3();
        } catch (RemoteException e3) {
            is0.zzc("", e3);
        }
        this.d = dO3;
        try {
            this.a.getWidth();
        } catch (RemoteException e4) {
            is0.zzc("", e4);
        }
        try {
            this.a.getHeight();
        } catch (RemoteException e5) {
            is0.zzc("", e5);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.c;
    }
}
