package defpackage;

import android.os.Handler;
import defpackage.ad;

/* loaded from: classes.dex */
public class md {
    public final ed a;
    public final Handler b = new Handler();
    public a c;

    public static class a implements Runnable {
        public final ed e;
        public final ad.a f;
        public boolean g = false;

        public a(ed edVar, ad.a aVar) {
            this.e = edVar;
            this.f = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.g) {
                return;
            }
            this.e.d(this.f);
            this.g = true;
        }
    }

    public md(dd ddVar) {
        this.a = new ed(ddVar);
    }

    public final void a(ad.a aVar) {
        a aVar2 = this.c;
        if (aVar2 != null) {
            aVar2.run();
        }
        a aVar3 = new a(this.a, aVar);
        this.c = aVar3;
        this.b.postAtFrontOfQueue(aVar3);
    }
}
