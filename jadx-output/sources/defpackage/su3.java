package defpackage;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface su3 extends IInterface {
    boolean F0() throws RemoteException;

    xu3 K4() throws RemoteException;

    void g2(boolean z) throws RemoteException;

    boolean g5() throws RemoteException;

    float getAspectRatio() throws RemoteException;

    float getCurrentTime() throws RemoteException;

    float getDuration() throws RemoteException;

    int getPlaybackState() throws RemoteException;

    boolean m1() throws RemoteException;

    void n4(xu3 xu3Var) throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    void stop() throws RemoteException;
}
