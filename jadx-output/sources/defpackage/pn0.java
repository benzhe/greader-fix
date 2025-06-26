package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface pn0 extends IInterface {
    void D5(gn0 gn0Var) throws RemoteException;

    void onRewardedVideoAdClosed() throws RemoteException;

    void onRewardedVideoAdFailedToLoad(int i) throws RemoteException;

    void onRewardedVideoAdLeftApplication() throws RemoteException;

    void onRewardedVideoAdLoaded() throws RemoteException;

    void onRewardedVideoAdOpened() throws RemoteException;

    void onRewardedVideoCompleted() throws RemoteException;

    void onRewardedVideoStarted() throws RemoteException;
}
