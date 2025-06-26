package defpackage;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import defpackage.ny;
import defpackage.yx;

/* loaded from: classes.dex */
public final class o14 extends yy<Status, s14> {
    public final zze l;

    public o14(zze zzeVar, qy qyVar) {
        super(yx.o, qyVar);
        this.l = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ ty a(Status status) {
        return status;
    }

    @Override // defpackage.yy
    public final /* synthetic */ void g(ny.b bVar) throws RemoteException {
        s14 s14Var = (s14) bVar;
        r14 r14Var = new r14(this);
        try {
            zze zzeVar = this.l;
            yx.c cVar = zzeVar.n;
            if (cVar != null) {
                p14 p14Var = zzeVar.m;
                if (p14Var.l.length == 0) {
                    p14Var.l = cVar.a();
                }
            }
            p14 p14Var2 = zzeVar.m;
            int iD = p14Var2.d();
            byte[] bArr = new byte[iD];
            c14.c(p14Var2, bArr, iD);
            zzeVar.f = bArr;
            ((v14) s14Var.getService()).M1(r14Var, this.l);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            h(new Status(10, "MessageProducer"));
        }
    }
}
