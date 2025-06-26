package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface u90 extends IInterface {
    void onUnconfirmedClickCancelled() throws RemoteException;

    void onUnconfirmedClickReceived(String str) throws RemoteException;
}
