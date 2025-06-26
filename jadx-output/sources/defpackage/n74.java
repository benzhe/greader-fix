package defpackage;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;

/* loaded from: classes.dex */
public final class n74 extends k74 {
    public final m74 a = new m74();

    @Override // defpackage.k74
    public final void a(Throwable th, Throwable th2) {
        List<Throwable> listPutIfAbsent;
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        m74 m74Var = this.a;
        ReferenceQueue<Throwable> referenceQueue = m74Var.b;
        while (true) {
            Reference<? extends Throwable> referencePoll = referenceQueue.poll();
            if (referencePoll == null) {
                break;
            }
            m74Var.a.remove(referencePoll);
            referenceQueue = m74Var.b;
        }
        List<Throwable> vector = m74Var.a.get(new l74(th, null));
        if (vector == null && (listPutIfAbsent = m74Var.a.putIfAbsent(new l74(th, m74Var.b), (vector = new Vector<>(2)))) != null) {
            vector = listPutIfAbsent;
        }
        vector.add(th2);
    }
}
