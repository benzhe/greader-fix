package defpackage;

import android.os.Handler;
import defpackage.j9;
import defpackage.k9;

/* loaded from: classes.dex */
public class h9 implements k9.c<j9.d> {
    public final /* synthetic */ b8 a;
    public final /* synthetic */ Handler b;

    public h9(b8 b8Var, Handler handler) {
        this.a = b8Var;
        this.b = handler;
    }

    @Override // k9.c
    public void a(j9.d dVar) {
        j9.d dVar2 = dVar;
        if (dVar2 == null) {
            this.a.a(1, this.b);
            return;
        }
        int i = dVar2.b;
        if (i == 0) {
            this.a.b(dVar2.a, this.b);
        } else {
            this.a.a(i, this.b);
        }
    }
}
