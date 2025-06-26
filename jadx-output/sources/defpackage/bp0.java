package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes.dex */
public final class bp0 extends sd3 implements bo0 {
    public final String e;
    public final int f;

    public bp0(String str, int i) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
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

    @Override // defpackage.bo0
    public final int getAmount() throws RemoteException {
        return this.f;
    }

    @Override // defpackage.bo0
    public final String getType() throws RemoteException {
        return this.e;
    }

    public bp0(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }
}
