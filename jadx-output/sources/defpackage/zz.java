package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.ny;
import defpackage.yy;
import defpackage.zy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zz<A extends yy<? extends ty, ny.b>> extends iz {
    public final A a;

    public zz(int i, A a) {
        super(i);
        this.a = a;
    }

    @Override // defpackage.iz
    public final void a(Status status) {
        this.a.h(status);
    }

    @Override // defpackage.iz
    public final void b(zy.a<?> aVar) throws DeadObjectException {
        try {
            A a = this.a;
            ny.f fVar = aVar.f;
            Objects.requireNonNull(a);
            if (fVar instanceof y00) {
                Objects.requireNonNull((y00) fVar);
                fVar = null;
            }
            try {
                try {
                    a.g(fVar);
                } catch (DeadObjectException e) {
                    a.h(new Status(1, 8, e.getLocalizedMessage(), null));
                    throw e;
                }
            } catch (RemoteException e2) {
                a.h(new Status(1, 8, e2.getLocalizedMessage(), null));
            }
        } catch (RuntimeException e3) {
            d(e3);
        }
    }

    @Override // defpackage.iz
    public final void c(ez ezVar, boolean z) {
        A a = this.a;
        ezVar.a.put(a, Boolean.valueOf(z));
        fz fzVar = new fz(ezVar, a);
        Objects.requireNonNull(a);
        bi.c(true, "Callback cannot be null.");
        synchronized (a.a) {
            if (a.b()) {
                fzVar.a(a.g);
            } else {
                a.d.add(fzVar);
            }
        }
    }

    @Override // defpackage.iz
    public final void d(RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        this.a.h(new Status(10, jo.c(jo.x(localizedMessage, simpleName.length() + 2), simpleName, ": ", localizedMessage)));
    }
}
