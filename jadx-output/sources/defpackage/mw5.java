package defpackage;

import defpackage.ex5;
import defpackage.qx5;

/* loaded from: classes.dex */
public class mw5 {
    public int b;
    public ex5.b c;
    public final ex5 e;
    public final a f;
    public wq5 a = wq5.UNKNOWN;
    public boolean d = true;

    public interface a {
    }

    public mw5(ex5 ex5Var, a aVar) {
        this.e = ex5Var;
        this.f = aVar;
    }

    public final void a(String str) {
        String str2 = String.format("Could not reach Cloud Firestore backend. %s\nThis typically indicates that your device does not have a healthy Internet connection at the moment. The client will operate in offline mode until it is able to successfully connect to the backend.", str);
        if (!this.d) {
            qx5.a(qx5.a.DEBUG, "OnlineStateTracker", "%s", str2);
        } else {
            qx5.a(qx5.a.WARN, "OnlineStateTracker", "%s", str2);
            this.d = false;
        }
    }

    public final void b(wq5 wq5Var) {
        if (wq5Var != this.a) {
            this.a = wq5Var;
            ((pw5) this.f).a.e(wq5Var);
        }
    }

    public void c(wq5 wq5Var) {
        ex5.b bVar = this.c;
        if (bVar != null) {
            bVar.a();
            this.c = null;
        }
        this.b = 0;
        if (wq5Var == wq5.ONLINE) {
            this.d = false;
        }
        b(wq5Var);
    }
}
