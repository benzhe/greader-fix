package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class pd2<T> {
    public final Set<qd2<? extends nd2<T>>> a;
    public final Executor b;

    public pd2(Executor executor, Set<qd2<? extends nd2<T>>> set) {
        this.b = executor;
        this.a = set;
    }

    public final aw2<T> a(T t) {
        ArrayList arrayList = new ArrayList(this.a.size());
        for (qd2<? extends nd2<T>> qd2Var : this.a) {
            aw2<S> aw2VarA = qd2Var.a();
            if (q60.a.a().booleanValue()) {
                aw2VarA.i(new sd2(qd2Var, zzr.zzlc().b()), ms0.f);
            }
            arrayList.add(aw2VarA);
        }
        return new gv2(nt2.y(arrayList), true, this.b, new rd2(arrayList, t));
    }
}
