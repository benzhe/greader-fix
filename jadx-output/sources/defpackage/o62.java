package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvv;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class o62 implements hc1 {
    public final AtomicReference<mu3> e = new AtomicReference<>();

    @Override // defpackage.hc1
    public final void s(final zzvv zzvvVar) {
        c50.s2(this.e, new ei2(zzvvVar) { // from class: n62
            public final zzvv a;

            {
                this.a = zzvvVar;
            }

            @Override // defpackage.ei2
            public final void a(Object obj) throws RemoteException {
                ((mu3) obj).x4(this.a);
            }
        });
    }
}
