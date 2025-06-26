package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class tj1 extends vu3 {
    public final Object e = new Object();
    public su3 f;
    public final bh0 g;

    public tj1(su3 su3Var, bh0 bh0Var) {
        this.f = su3Var;
        this.g = bh0Var;
    }

    @Override // defpackage.su3
    public final boolean F0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // defpackage.su3
    public final xu3 K4() throws RemoteException {
        synchronized (this.e) {
            su3 su3Var = this.f;
            if (su3Var == null) {
                return null;
            }
            return su3Var.K4();
        }
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
        bh0 bh0Var = this.g;
        if (bh0Var != null) {
            return bh0Var.H1();
        }
        return 0.0f;
    }

    @Override // defpackage.su3
    public final float getDuration() throws RemoteException {
        bh0 bh0Var = this.g;
        if (bh0Var != null) {
            return bh0Var.a2();
        }
        return 0.0f;
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
            su3 su3Var = this.f;
            if (su3Var != null) {
                su3Var.n4(xu3Var);
            }
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
