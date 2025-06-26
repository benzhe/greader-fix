package defpackage;

import java.lang.ref.Reference;
import java.util.List;
import java.util.Objects;
import java.util.Vector;

/* loaded from: classes.dex */
public final class sg4 extends rg4 {
    public final qg4 a = new qg4();

    @Override // defpackage.rg4
    public final void a(Throwable th, Throwable th2) {
        List<Throwable> listPutIfAbsent;
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        qg4 qg4Var = this.a;
        for (Reference<? extends Throwable> referencePoll = qg4Var.b.poll(); referencePoll != null; referencePoll = qg4Var.b.poll()) {
            qg4Var.a.remove(referencePoll);
        }
        List<Throwable> vector = qg4Var.a.get(new tg4(th, null));
        if (vector == null && (listPutIfAbsent = qg4Var.a.putIfAbsent(new tg4(th, qg4Var.b), (vector = new Vector<>(2)))) != null) {
            vector = listPutIfAbsent;
        }
        vector.add(th2);
    }
}
