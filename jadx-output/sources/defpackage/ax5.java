package defpackage;

import defpackage.dd6;
import defpackage.ex5;
import defpackage.j47;
import defpackage.ua7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ax5 extends iv5<dd6, ed6, a> {
    public static final qi6 s = qi6.f;
    public final ow5 p;
    public boolean q;
    public qi6 r;

    public interface a extends uw5 {
        void a(ju5 ju5Var, List<tu5> list);

        void d();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ax5(aw5 aw5Var, ex5 ex5Var, ow5 ow5Var, a aVar) {
        j47<dd6, ed6> j47VarA = tc6.a;
        if (j47VarA == null) {
            synchronized (tc6.class) {
                j47VarA = tc6.a;
                if (j47VarA == null) {
                    j47.b bVarB = j47.b();
                    bVarB.c = j47.d.BIDI_STREAMING;
                    bVarB.d = j47.a("google.firestore.v1.Firestore", "Write");
                    bVarB.e = true;
                    dd6 dd6VarF = dd6.F();
                    yi6 yi6Var = ua7.a;
                    bVarB.a = new ua7.a(dd6VarF);
                    bVarB.b = new ua7.a(ed6.D());
                    j47VarA = bVarB.a();
                    tc6.a = j47VarA;
                }
            }
        }
        super(aw5Var, j47VarA, ex5Var, ex5.d.WRITE_STREAM_CONNECTION_BACKOFF, ex5.d.WRITE_STREAM_IDLE, aVar);
        this.q = false;
        this.r = s;
        this.p = ow5Var;
    }

    @Override // defpackage.iv5
    public void f(ed6 ed6Var) {
        ed6 ed6Var2 = ed6Var;
        this.r = ed6Var2.E();
        if (!this.q) {
            this.q = true;
            ((a) this.k).d();
            return;
        }
        this.j.f = 0L;
        ju5 ju5VarE = this.p.e(ed6Var2.C());
        int iG = ed6Var2.G();
        ArrayList arrayList = new ArrayList(iG);
        for (int i = 0; i < iG; i++) {
            fd6 fd6VarF = ed6Var2.F(i);
            ow5 ow5Var = this.p;
            Objects.requireNonNull(ow5Var);
            ju5 ju5VarE2 = ow5Var.e(fd6VarF.E());
            if (ju5.f.equals(ju5VarE2)) {
                ju5VarE2 = ju5VarE;
            }
            ArrayList arrayList2 = null;
            int iD = fd6VarF.D();
            if (iD > 0) {
                arrayList2 = new ArrayList(iD);
                for (int i2 = 0; i2 < iD; i2++) {
                    arrayList2.add(fd6VarF.C(i2));
                }
            }
            arrayList.add(new tu5(ju5VarE2, arrayList2));
        }
        ((a) this.k).a(ju5VarE, arrayList);
    }

    @Override // defpackage.iv5
    public void g() {
        this.q = false;
        super.g();
    }

    @Override // defpackage.iv5
    public void h() {
        if (this.q) {
            j(Collections.emptyList());
        }
    }

    public void j(List<qu5> list) {
        bx5.c(c(), "Writing mutations requires an opened stream", new Object[0]);
        bx5.c(this.q, "Handshake must be complete before writing mutations", new Object[0]);
        dd6.b bVarG = dd6.G();
        Iterator<qu5> it = list.iterator();
        while (it.hasNext()) {
            cd6 cd6VarK = this.p.k(it.next());
            bVarG.o();
            dd6.E((dd6) bVarG.f, cd6VarK);
        }
        qi6 qi6Var = this.r;
        bVarG.o();
        dd6.D((dd6) bVarG.f, qi6Var);
        i(bVarG.l());
    }
}
