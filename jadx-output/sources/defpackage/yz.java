package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.zy;

/* loaded from: classes.dex */
public abstract class yz<T> extends sz {
    public final f45<T> a;

    public yz(int i, f45<T> f45Var) {
        super(i);
        this.a = f45Var;
    }

    @Override // defpackage.iz
    public void a(Status status) {
        this.a.a(new oy(status));
    }

    @Override // defpackage.iz
    public final void b(zy.a<?> aVar) throws DeadObjectException {
        try {
            h(aVar);
        } catch (DeadObjectException e) {
            this.a.a(new oy(iz.e(e)));
            throw e;
        } catch (RemoteException e2) {
            this.a.a(new oy(iz.e(e2)));
        } catch (RuntimeException e3) {
            this.a.a(e3);
        }
    }

    @Override // defpackage.iz
    public void d(RuntimeException runtimeException) {
        this.a.a(runtimeException);
    }

    public abstract void h(zy.a<?> aVar) throws RemoteException;
}
