package defpackage;

import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class z43 extends s43 {
    @Override // defpackage.s43
    public final void a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // defpackage.s43
    public final void b(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}
