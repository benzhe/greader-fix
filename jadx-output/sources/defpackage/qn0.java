package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;

/* loaded from: classes.dex */
public final class qn0 implements RewardItem {
    public final gn0 a;

    public qn0(gn0 gn0Var) {
        this.a = gn0Var;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        gn0 gn0Var = this.a;
        if (gn0Var == null) {
            return 0;
        }
        try {
            return gn0Var.getAmount();
        } catch (RemoteException e) {
            is0.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        gn0 gn0Var = this.a;
        if (gn0Var == null) {
            return null;
        }
        try {
            return gn0Var.getType();
        } catch (RemoteException e) {
            is0.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
