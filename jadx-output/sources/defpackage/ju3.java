package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;

/* loaded from: classes.dex */
public final class ju3 implements MuteThisAdReason {
    public final String a;
    public iu3 b;

    public ju3(iu3 iu3Var) {
        String description;
        this.b = iu3Var;
        try {
            description = iu3Var.getDescription();
        } catch (RemoteException e) {
            is0.zzc("", e);
            description = null;
        }
        this.a = description;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.a;
    }

    public final String toString() {
        return this.a;
    }
}
