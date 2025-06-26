package defpackage;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class wu2<InputT, OutputT> extends av2<OutputT> {
    public static final Logger s = Logger.getLogger(wu2.class.getName());
    public it2<? extends aw2<? extends InputT>> p;
    public final boolean q;
    public final boolean r;

    public enum a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public wu2(it2<? extends aw2<? extends InputT>> it2Var, boolean z, boolean z2) {
        super(it2Var.size());
        this.p = it2Var;
        this.q = z;
        this.r = z2;
    }

    public static boolean G(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    public static void I(wu2 wu2Var, it2 it2Var) {
        Objects.requireNonNull(wu2Var);
        int iB = av2.n.b(wu2Var);
        int i = 0;
        if (!(iB >= 0)) {
            throw new IllegalStateException("Less than 0 remaining futures");
        }
        if (iB == 0) {
            if (it2Var != null) {
                hu2 hu2Var = (hu2) it2Var.iterator();
                while (hu2Var.hasNext()) {
                    Future<? extends InputT> future = (Future) hu2Var.next();
                    if (!future.isCancelled()) {
                        wu2Var.E(i, future);
                    }
                    i++;
                }
            }
            wu2Var.B();
            wu2Var.K();
            wu2Var.F(a.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    public static void L(Throwable th) {
        s.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    @Override // defpackage.av2
    public final void C(Set<Throwable> set) {
        Objects.requireNonNull(set);
        if (isCancelled()) {
            return;
        }
        G(set, a());
    }

    public final void D(Throwable th) {
        Objects.requireNonNull(th);
        if (this.q && !j(th) && G(A(), th)) {
            L(th);
        } else if (th instanceof Error) {
            L(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E(int i, Future<? extends InputT> future) {
        try {
            H(i, vt2.e(future));
        } catch (ExecutionException e) {
            D(e.getCause());
        } catch (Throwable th) {
            D(th);
        }
    }

    public void F(a aVar) {
        Objects.requireNonNull(aVar);
        this.p = null;
    }

    public abstract void H(int i, InputT inputt);

    public final void J() {
        lv2 lv2Var = lv2.INSTANCE;
        if (this.p.isEmpty()) {
            K();
            return;
        }
        if (!this.q) {
            yu2 yu2Var = new yu2(this, this.r ? this.p : null);
            hu2 hu2Var = (hu2) this.p.iterator();
            while (hu2Var.hasNext()) {
                ((aw2) hu2Var.next()).i(yu2Var, lv2Var);
            }
            return;
        }
        int i = 0;
        hu2 hu2Var2 = (hu2) this.p.iterator();
        while (hu2Var2.hasNext()) {
            aw2 aw2Var = (aw2) hu2Var2.next();
            aw2Var.i(new zu2(this, aw2Var, i), lv2Var);
            i++;
        }
    }

    public abstract void K();

    @Override // defpackage.su2
    public final void b() {
        it2<? extends aw2<? extends InputT>> it2Var = this.p;
        F(a.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (it2Var != null)) {
            boolean zL = l();
            hu2 hu2Var = (hu2) it2Var.iterator();
            while (hu2Var.hasNext()) {
                ((Future) hu2Var.next()).cancel(zL);
            }
        }
    }

    @Override // defpackage.su2
    public final String g() {
        it2<? extends aw2<? extends InputT>> it2Var = this.p;
        if (it2Var == null) {
            return super.g();
        }
        String strValueOf = String.valueOf(it2Var);
        return jo.O(strValueOf.length() + 8, "futures=", strValueOf);
    }
}
