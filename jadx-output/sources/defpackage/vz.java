package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zaj;
import defpackage.zy;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class vz implements Runnable {
    public final /* synthetic */ zaj e;
    public final /* synthetic */ tz f;

    public vz(tz tzVar, zaj zajVar) {
        this.f = tzVar;
        this.e = zajVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        tz tzVar = this.f;
        zaj zajVar = this.e;
        Objects.requireNonNull(tzVar);
        ConnectionResult connectionResult = zajVar.f;
        if (connectionResult.n()) {
            ResolveAccountResponse resolveAccountResponse = zajVar.g;
            ConnectionResult connectionResult2 = resolveAccountResponse.g;
            if (!connectionResult2.n()) {
                String strValueOf = String.valueOf(connectionResult2);
                Log.wtf("SignInCoordinator", jo.O(strValueOf.length() + 48, "Sign-in succeeded with resolve account failure: ", strValueOf), new Exception());
                ((zy.c) tzVar.k).b(connectionResult2);
                tzVar.j.disconnect();
                return;
            }
            wz wzVar = tzVar.k;
            q00 q00VarN = resolveAccountResponse.n();
            Set<Scope> set = tzVar.h;
            zy.c cVar = (zy.c) wzVar;
            Objects.requireNonNull(cVar);
            if (q00VarN == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                cVar.b(new ConnectionResult(4));
            } else {
                cVar.c = q00VarN;
                cVar.d = set;
                if (cVar.e) {
                    cVar.a.getRemoteService(q00VarN, set);
                }
            }
        } else {
            ((zy.c) tzVar.k).b(connectionResult);
        }
        tzVar.j.disconnect();
    }
}
