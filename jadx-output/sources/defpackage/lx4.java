package defpackage;

import java.lang.Thread;

/* loaded from: classes.dex */
public final class lx4 implements Thread.UncaughtExceptionHandler {
    public final String a;
    public final /* synthetic */ ox4 b;

    public lx4(ox4 ox4Var, String str) {
        this.b = ox4Var;
        this.a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.b.a.a().f.b(this.a, th);
    }
}
