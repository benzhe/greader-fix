package defpackage;

import android.net.Uri;
import android.os.RemoteException;
import java.util.Collections;

/* loaded from: classes.dex */
public final class w72 implements rv2<Uri> {
    public final /* synthetic */ kl0 a;

    public w72(kl0 kl0Var) {
        this.a = kl0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        try {
            kl0 kl0Var = this.a;
            String strValueOf = String.valueOf(th.getMessage());
            kl0Var.onError(strValueOf.length() != 0 ? "Internal error: ".concat(strValueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(Uri uri) {
        try {
            this.a.w3(Collections.singletonList(uri));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
