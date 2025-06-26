package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes.dex */
public final class to0 implements RewardItem {
    public final bo0 a;

    public to0(bo0 bo0Var) {
        this.a = bo0Var;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        bo0 bo0Var = this.a;
        if (bo0Var == null) {
            return 0;
        }
        try {
            return bo0Var.getAmount();
        } catch (RemoteException e) {
            is0.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        bo0 bo0Var = this.a;
        if (bo0Var == null) {
            return null;
        }
        try {
            return bo0Var.getType();
        } catch (RemoteException e) {
            is0.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
