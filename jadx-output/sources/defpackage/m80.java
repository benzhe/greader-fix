package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface m80 extends IInterface {
    boolean B(Bundle bundle) throws RemoteException;

    x20 D() throws RemoteException;

    void E(Bundle bundle) throws RemoteException;

    u70 R() throws RemoteException;

    String d() throws RemoteException;

    void destroy() throws RemoteException;

    String e() throws RemoteException;

    m70 f() throws RemoteException;

    String g() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    su3 getVideoController() throws RemoteException;

    List i() throws RemoteException;

    String r() throws RemoteException;

    void u(Bundle bundle) throws RemoteException;
}
