package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

/* loaded from: classes.dex */
public final class sn0 extends sd3 implements pn0 {
    public RewardedVideoAdListener e;

    public sn0(RewardedVideoAdListener rewardedVideoAdListener) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        this.e = rewardedVideoAdListener;
    }

    @Override // defpackage.pn0
    public final void D5(gn0 gn0Var) {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewarded(new qn0(gn0Var));
        }
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        gn0 in0Var;
        switch (i) {
            case 1:
                RewardedVideoAdListener rewardedVideoAdListener = this.e;
                if (rewardedVideoAdListener != null) {
                    rewardedVideoAdListener.onRewardedVideoAdLoaded();
                    break;
                }
                break;
            case 2:
                RewardedVideoAdListener rewardedVideoAdListener2 = this.e;
                if (rewardedVideoAdListener2 != null) {
                    rewardedVideoAdListener2.onRewardedVideoAdOpened();
                    break;
                }
                break;
            case 3:
                RewardedVideoAdListener rewardedVideoAdListener3 = this.e;
                if (rewardedVideoAdListener3 != null) {
                    rewardedVideoAdListener3.onRewardedVideoStarted();
                    break;
                }
                break;
            case 4:
                RewardedVideoAdListener rewardedVideoAdListener4 = this.e;
                if (rewardedVideoAdListener4 != null) {
                    rewardedVideoAdListener4.onRewardedVideoAdClosed();
                    break;
                }
                break;
            case 5:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    in0Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    in0Var = iInterfaceQueryLocalInterface instanceof gn0 ? (gn0) iInterfaceQueryLocalInterface : new in0(strongBinder);
                }
                RewardedVideoAdListener rewardedVideoAdListener5 = this.e;
                if (rewardedVideoAdListener5 != null) {
                    rewardedVideoAdListener5.onRewarded(new qn0(in0Var));
                    break;
                }
                break;
            case 6:
                RewardedVideoAdListener rewardedVideoAdListener6 = this.e;
                if (rewardedVideoAdListener6 != null) {
                    rewardedVideoAdListener6.onRewardedVideoAdLeftApplication();
                    break;
                }
                break;
            case 7:
                onRewardedVideoAdFailedToLoad(parcel.readInt());
                break;
            case 8:
                RewardedVideoAdListener rewardedVideoAdListener7 = this.e;
                if (rewardedVideoAdListener7 != null) {
                    rewardedVideoAdListener7.onRewardedVideoCompleted();
                    break;
                }
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdClosed() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdClosed();
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdFailedToLoad(int i) {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdLeftApplication() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdLoaded() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLoaded();
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdOpened() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdOpened();
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoCompleted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoStarted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.e;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoStarted();
        }
    }
}
