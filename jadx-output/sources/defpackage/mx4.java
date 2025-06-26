package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class mx4<V> extends FutureTask<V> implements Comparable<mx4<V>> {
    public final long e;
    public final boolean f;
    public final String g;
    public final /* synthetic */ ox4 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mx4(ox4 ox4Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.h = ox4Var;
        long andIncrement = ox4.k.getAndIncrement();
        this.e = andIncrement;
        this.g = str;
        this.f = z;
        if (andIncrement == Long.MAX_VALUE) {
            ox4Var.a.a().f.a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        mx4 mx4Var = (mx4) obj;
        boolean z = this.f;
        if (z != mx4Var.f) {
            return !z ? 1 : -1;
        }
        long j = this.e;
        long j2 = mx4Var.e;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.h.a.a().g.b("Two tasks share the same index. index", Long.valueOf(this.e));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.h.a.a().f.b(this.g, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Ljava/util/concurrent/Callable<TV;>;ZLjava/lang/String;)V */
    public mx4(ox4 ox4Var, Callable callable, boolean z) {
        super(callable);
        this.h = ox4Var;
        long andIncrement = ox4.k.getAndIncrement();
        this.e = andIncrement;
        this.g = "Task exception on worker thread";
        this.f = z;
        if (andIncrement == Long.MAX_VALUE) {
            ox4Var.a.a().f.a("Tasks index overflow");
        }
    }
}
