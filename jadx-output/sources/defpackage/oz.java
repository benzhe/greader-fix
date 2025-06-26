package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import defpackage.zy;
import java.util.Collections;

/* loaded from: classes.dex */
public final class oz implements Runnable {
    public final /* synthetic */ ConnectionResult e;
    public final /* synthetic */ zy.c f;

    public oz(zy.c cVar, ConnectionResult connectionResult) {
        this.f = cVar;
        this.e = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        q00 q00Var;
        if (!this.e.n()) {
            zy.c cVar = this.f;
            zy.this.k.get(cVar.b).g0(this.e);
            return;
        }
        zy.c cVar2 = this.f;
        cVar2.e = true;
        if (cVar2.a.requiresSignIn()) {
            zy.c cVar3 = this.f;
            if (!cVar3.e || (q00Var = cVar3.c) == null) {
                return;
            }
            cVar3.a.getRemoteService(q00Var, cVar3.d);
            return;
        }
        try {
            this.f.a.getRemoteService(null, Collections.emptySet());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            zy.c cVar4 = this.f;
            zy.this.k.get(cVar4.b).g0(new ConnectionResult(10));
        }
    }
}
