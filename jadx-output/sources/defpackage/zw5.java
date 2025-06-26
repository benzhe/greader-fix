package defpackage;

import defpackage.ex5;
import defpackage.j47;
import defpackage.ua7;
import defpackage.vc6;
import defpackage.xw5;
import defpackage.yt5;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class zw5 extends iv5<uc6, vc6, a> {
    public static final qi6 q = qi6.f;
    public final ow5 p;

    public interface a extends uw5 {
        void c(ju5 ju5Var, xw5 xw5Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zw5(aw5 aw5Var, ex5 ex5Var, ow5 ow5Var, a aVar) {
        j47<uc6, vc6> j47VarA = tc6.b;
        if (j47VarA == null) {
            synchronized (tc6.class) {
                j47VarA = tc6.b;
                if (j47VarA == null) {
                    j47.b bVarB = j47.b();
                    bVarB.c = j47.d.BIDI_STREAMING;
                    bVarB.d = j47.a("google.firestore.v1.Firestore", "Listen");
                    bVarB.e = true;
                    uc6 uc6VarG = uc6.G();
                    yi6 yi6Var = ua7.a;
                    bVarB.a = new ua7.a(uc6VarG);
                    bVarB.b = new ua7.a(vc6.C());
                    j47VarA = bVarB.a();
                    tc6.b = j47VarA;
                }
            }
        }
        super(aw5Var, j47VarA, ex5Var, ex5.d.LISTEN_STREAM_CONNECTION_BACKOFF, ex5.d.LISTEN_STREAM_IDLE, aVar);
        this.p = ow5Var;
    }

    @Override // defpackage.iv5
    public void f(vc6 vc6Var) {
        xw5.e eVar;
        xw5 dVar;
        xw5.b bVar;
        vc6 vc6Var2 = vc6Var;
        this.j.f = 0L;
        ow5 ow5Var = this.p;
        Objects.requireNonNull(ow5Var);
        int iOrdinal = vc6Var2.H().ordinal();
        x47 x47VarH = null;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                nc6 nc6VarD = vc6Var2.D();
                List<Integer> listF = nc6VarD.F();
                List<Integer> listE = nc6VarD.E();
                bu5 bu5VarA = ow5Var.a(nc6VarD.D().H());
                ju5 ju5VarE = ow5Var.e(nc6VarD.D().I());
                bx5.c(!ju5VarE.equals(ju5.f), "Got a document change without an update time", new Object[0]);
                bVar = new xw5.b(listF, listE, bu5VarA, new yt5(bu5VarA, ju5VarE, hu5.b(nc6VarD.D().G()), yt5.a.SYNCED));
            } else if (iOrdinal == 2) {
                oc6 oc6VarE = vc6Var2.E();
                List<Integer> listF2 = oc6VarE.F();
                gu5 gu5Var = new gu5(ow5Var.a(oc6VarE.D()), ow5Var.e(oc6VarE.E()), false);
                bVar = new xw5.b(Collections.emptyList(), listF2, gu5Var.a, gu5Var);
            } else if (iOrdinal == 3) {
                qc6 qc6VarF = vc6Var2.F();
                dVar = new xw5.b(Collections.emptyList(), qc6VarF.E(), ow5Var.a(qc6VarF.D()), null);
            } else {
                if (iOrdinal != 4) {
                    throw new IllegalArgumentException("Unknown change type set");
                }
                sc6 sc6VarG = vc6Var2.G();
                dVar = new xw5.c(sc6VarG.E(), new rv5(sc6VarG.C()));
            }
            dVar = bVar;
        } else {
            ad6 ad6VarI = vc6Var2.I();
            int iOrdinal2 = ad6VarI.G().ordinal();
            if (iOrdinal2 == 0) {
                eVar = xw5.e.NoChange;
            } else if (iOrdinal2 == 1) {
                eVar = xw5.e.Added;
            } else if (iOrdinal2 == 2) {
                eVar = xw5.e.Removed;
                il6 il6VarC = ad6VarI.C();
                x47VarH = x47.d(il6VarC.C()).h(il6VarC.E());
            } else if (iOrdinal2 == 3) {
                eVar = xw5.e.Current;
            } else {
                if (iOrdinal2 != 4) {
                    throw new IllegalArgumentException("Unknown target change type");
                }
                eVar = xw5.e.Reset;
            }
            dVar = new xw5.d(eVar, ad6VarI.I(), ad6VarI.F(), x47VarH);
        }
        ow5 ow5Var2 = this.p;
        Objects.requireNonNull(ow5Var2);
        ju5 ju5VarE2 = (vc6Var2.H() == vc6.c.TARGET_CHANGE && vc6Var2.I().H() == 0) ? ow5Var2.e(vc6Var2.I().E()) : ju5.f;
        ((a) this.k).c(ju5VarE2, dVar);
    }
}
