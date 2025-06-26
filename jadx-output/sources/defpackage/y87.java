package defpackage;

import defpackage.x87;

/* loaded from: classes2.dex */
public class y87 implements Runnable {
    public final /* synthetic */ x87.b e;
    public final /* synthetic */ x87.c f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ x87 h;

    public y87(x87 x87Var, x87.b bVar, x87.c cVar, Object obj) {
        this.h = x87Var;
        this.e = bVar;
        this.f = cVar;
        this.g = obj;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.h) {
            if (this.e.b == 0) {
                try {
                    this.f.b(this.g);
                    this.h.a.remove(this.f);
                    if (this.h.a.isEmpty()) {
                        this.h.c.shutdown();
                        this.h.c = null;
                    }
                } catch (Throwable th) {
                    this.h.a.remove(this.f);
                    if (this.h.a.isEmpty()) {
                        this.h.c.shutdown();
                        this.h.c = null;
                    }
                    throw th;
                }
            }
        }
    }
}
