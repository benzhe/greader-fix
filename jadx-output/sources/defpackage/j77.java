package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class j77 implements Runnable {
    public final /* synthetic */ x47 e;
    public final /* synthetic */ d77 f;

    public j77(d77 d77Var, x47 x47Var) {
        this.f = d77Var;
        this.e = x47Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = new ArrayList(this.f.q).iterator();
        while (it.hasNext()) {
            ((c87) it.next()).c(this.e);
        }
    }
}
