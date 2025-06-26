package defpackage;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface q80 extends IInterface {
    boolean A3(x20 x20Var) throws RemoteException;

    void K2(x20 x20Var) throws RemoteException;

    boolean L6() throws RemoteException;

    x20 Q1() throws RemoteException;

    boolean S0() throws RemoteException;

    String S1(String str) throws RemoteException;

    u70 X5(String str) throws RemoteException;

    void destroy() throws RemoteException;

    List<String> getAvailableAssetNames() throws RemoteException;

    String getCustomTemplateId() throws RemoteException;

    su3 getVideoController() throws RemoteException;

    void performClick(String str) throws RemoteException;

    void recordImpression() throws RemoteException;

    void u1() throws RemoteException;
}
