package defpackage;

import defpackage.bh6;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* loaded from: classes.dex */
public final /* synthetic */ class zg6 implements wf5 {
    public static final wf5 a = new zg6();

    @Override // defpackage.wf5
    public final Object a(tf5 tf5Var) {
        bh6 bh6Var = new bh6();
        bh6Var.b.add(new bh6.a(bh6Var, bh6Var.a, bh6Var.b, oh6.e, null));
        final ReferenceQueue<Object> referenceQueue = bh6Var.a;
        final Set<bh6.a> set = bh6Var.b;
        Thread thread = new Thread(new Runnable(referenceQueue, set) { // from class: nh6
            public final ReferenceQueue e;
            public final Set f;

            {
                this.e = referenceQueue;
                this.f = set;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = this.e;
                Set set2 = this.f;
                while (!set2.isEmpty()) {
                    try {
                        bh6.a aVar = (bh6.a) referenceQueue2.remove();
                        if (aVar.a.remove(aVar)) {
                            aVar.clear();
                            aVar.b.run();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return bh6Var;
    }
}
