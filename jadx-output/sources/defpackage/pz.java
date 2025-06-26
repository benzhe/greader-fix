package defpackage;

import android.os.Looper;
import defpackage.ny;
import ny.d;

/* loaded from: classes.dex */
public final class pz<O extends ny.d> extends hz {
    public final py<O> a;

    public pz(py<O> pyVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.a = pyVar;
    }

    @Override // defpackage.qy
    public final Looper a() {
        return this.a.e;
    }
}
