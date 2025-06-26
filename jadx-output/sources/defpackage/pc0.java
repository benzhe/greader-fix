package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface pc0 extends IInterface {
    void onInitializationFailed(String str) throws RemoteException;

    void onInitializationSucceeded() throws RemoteException;
}
