package defpackage;

import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class x43 extends s43 {
    public final w43 a = new w43();

    @Override // defpackage.s43
    public final void a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> listA = this.a.a(th, false);
        if (listA == null) {
            return;
        }
        synchronized (listA) {
            for (Throwable th2 : listA) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }

    @Override // defpackage.s43
    public final void b(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        this.a.a(th, true).add(th2);
    }
}
