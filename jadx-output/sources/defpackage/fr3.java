package defpackage;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class fr3 extends sd3 implements ps3 {
    public final er3 e;

    public fr3(er3 er3Var) {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
        this.e = er3Var;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        this.e.onAdClicked();
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.ps3
    public final void onAdClicked() {
        this.e.onAdClicked();
    }
}
