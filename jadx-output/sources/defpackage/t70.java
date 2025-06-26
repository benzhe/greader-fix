package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface t70 extends IInterface {
    void c1(x20 x20Var) throws RemoteException;

    float getAspectRatio() throws RemoteException;

    float getCurrentTime() throws RemoteException;

    float getDuration() throws RemoteException;

    su3 getVideoController() throws RemoteException;

    boolean hasVideoContent() throws RemoteException;

    x20 w5() throws RemoteException;
}
