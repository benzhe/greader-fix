package defpackage;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class fn0 extends sd3 implements gn0 {
    public final String e;
    public final int f;

    public fn0(String str, int i) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
        this.e = str;
        this.f = i;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String str = this.e;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int i3 = this.f;
        parcel2.writeNoException();
        parcel2.writeInt(i3);
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof fn0)) {
            fn0 fn0Var = (fn0) obj;
            if (bi.B(this.e, fn0Var.e) && bi.B(Integer.valueOf(this.f), Integer.valueOf(fn0Var.f))) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gn0
    public final int getAmount() {
        return this.f;
    }

    @Override // defpackage.gn0
    public final String getType() {
        return this.e;
    }
}
