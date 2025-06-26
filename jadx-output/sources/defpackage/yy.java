package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import defpackage.ny;
import defpackage.ty;
import ny.b;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<R>] */
/* loaded from: classes.dex */
public abstract class yy<R extends ty, A extends ny.b> extends BasePendingResult<R> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy(ny<?> nyVar, qy qyVar) {
        super(qyVar);
        bi.j(qyVar, "GoogleApiClient must not be null");
        bi.j(nyVar, "Api must not be null");
        if (nyVar.b == null) {
            throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
        }
    }

    public abstract void g(A a) throws RemoteException;

    public final void h(Status status) {
        bi.c(!(status.f <= 0), "Failed result must not be success");
        c(status);
    }
}
