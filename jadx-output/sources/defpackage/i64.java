package defpackage;

import android.database.ContentObserver;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i64 extends ContentObserver {
    public final /* synthetic */ j64 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i64(j64 j64Var) {
        super(null);
        this.a = j64Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        j64 j64Var = this.a;
        synchronized (j64Var.d) {
            j64Var.e = null;
            b74.h.incrementAndGet();
        }
        synchronized (j64Var) {
            Iterator<k64> it = j64Var.f.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }
}
