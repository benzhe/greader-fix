package androidx.activity;

import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.ed;
import defpackage.r;
import defpackage.s;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final Runnable a;
    public final ArrayDeque<s> b = new ArrayDeque<>();

    public class LifecycleOnBackPressedCancellable implements bd, r {
        public final ad e;
        public final s f;
        public r g;

        public LifecycleOnBackPressedCancellable(ad adVar, s sVar) {
            this.e = adVar;
            this.f = sVar;
            adVar.a(this);
        }

        @Override // defpackage.bd
        public void c(dd ddVar, ad.a aVar) {
            if (aVar == ad.a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                s sVar = this.f;
                onBackPressedDispatcher.b.add(sVar);
                a aVar2 = onBackPressedDispatcher.new a(sVar);
                sVar.b.add(aVar2);
                this.g = aVar2;
                return;
            }
            if (aVar != ad.a.ON_STOP) {
                if (aVar == ad.a.ON_DESTROY) {
                    cancel();
                }
            } else {
                r rVar = this.g;
                if (rVar != null) {
                    rVar.cancel();
                }
            }
        }

        @Override // defpackage.r
        public void cancel() {
            ((ed) this.e).a.n(this);
            this.f.b.remove(this);
            r rVar = this.g;
            if (rVar != null) {
                rVar.cancel();
                this.g = null;
            }
        }
    }

    public class a implements r {
        public final s e;

        public a(s sVar) {
            this.e = sVar;
        }

        @Override // defpackage.r
        public void cancel() {
            OnBackPressedDispatcher.this.b.remove(this.e);
            this.e.b.remove(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = runnable;
    }

    public void a() {
        Iterator<s> itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            s next = itDescendingIterator.next();
            if (next.a) {
                next.a();
                return;
            }
        }
        Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
