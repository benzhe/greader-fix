package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ch0 extends vu3 {
    public final Object e = new Object();
    public volatile xu3 f;

    @Override // defpackage.su3
    public final boolean F0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final xu3 K4() throws RemoteException {
        xu3 xu3Var;
        synchronized (this.e) {
            xu3Var = this.f;
        }
        return xu3Var;
    }

    @Override // defpackage.su3
    public final void g2(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final boolean g5() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final float getAspectRatio() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final float getCurrentTime() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final float getDuration() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final int getPlaybackState() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final boolean m1() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final void n4(xu3 xu3Var) throws RemoteException {
        synchronized (this.e) {
            this.f = xu3Var;
        }
    }

    @Override // defpackage.su3
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final void play() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final void stop() throws RemoteException {
        throw new RemoteException();
    }
}
