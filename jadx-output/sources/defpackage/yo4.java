package defpackage;

import java.lang.ref.Reference;
import java.util.List;
import java.util.Objects;
import java.util.Vector;

/* loaded from: classes.dex */
public final class yo4 extends xo4 {
    public final wo4 a = new wo4();

    @Override // defpackage.xo4
    public final void a(Throwable th, Throwable th2) {
        List<Throwable> listPutIfAbsent;
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        wo4 wo4Var = this.a;
        for (Reference<? extends Throwable> referencePoll = wo4Var.b.poll(); referencePoll != null; referencePoll = wo4Var.b.poll()) {
            wo4Var.a.remove(referencePoll);
        }
        List<Throwable> vector = wo4Var.a.get(new zo4(th, null));
        if (vector == null && (listPutIfAbsent = wo4Var.a.putIfAbsent(new zo4(th, wo4Var.b), (vector = new Vector<>(2)))) != null) {
            vector = listPutIfAbsent;
        }
        vector.add(th2);
    }
}
