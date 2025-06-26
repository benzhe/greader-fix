package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class w62 {
    public final a72<f61> a;
    public final String b;
    public ru3 c;

    public w62(a72<f61> a72Var, String str) {
        this.a = a72Var;
        this.b = str;
    }

    public final synchronized void a(zzvq zzvqVar, int i) throws RemoteException {
        this.c = null;
        this.a.a(zzvqVar, this.b, new b72(i), new v62(this));
    }
}
