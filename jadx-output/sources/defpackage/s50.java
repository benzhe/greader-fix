package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface s50 extends IInterface {
    void R1(x20 x20Var) throws RemoteException;

    String e5() throws RemoteException;

    String getContent() throws RemoteException;

    void recordClick() throws RemoteException;

    void recordImpression() throws RemoteException;
}
