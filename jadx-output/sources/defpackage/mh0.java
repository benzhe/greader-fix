package defpackage;

import android.os.Parcel;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;

/* loaded from: classes.dex */
public final class mh0 extends sd3 implements og0 {
    public final MediationInterscrollerAd e;

    public mh0(MediationInterscrollerAd mediationInterscrollerAd) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        this.e = mediationInterscrollerAd;
    }

    @Override // defpackage.og0
    public final x20 H() {
        return new y20(this.e.getView());
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            x20 x20VarH = H();
            parcel2.writeNoException();
            rd3.b(parcel2, x20VarH);
            return true;
        }
        if (i != 2) {
            return false;
        }
        boolean zShouldDelegateInterscrollerEffect = shouldDelegateInterscrollerEffect();
        parcel2.writeNoException();
        ClassLoader classLoader = rd3.a;
        parcel2.writeInt(zShouldDelegateInterscrollerEffect ? 1 : 0);
        return true;
    }

    @Override // defpackage.og0
    public final boolean shouldDelegateInterscrollerEffect() {
        return this.e.shouldDelegateInterscrollerEffect();
    }
}
