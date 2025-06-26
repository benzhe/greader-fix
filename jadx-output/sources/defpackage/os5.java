package defpackage;

import com.google.firebase.Timestamp;
import defpackage.ln5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class os5 implements ss5 {
    public final List<ru5> a = new ArrayList();
    public ln5<qr5> b;
    public int c;
    public qi6 d;
    public final ps5 e;

    public os5(ps5 ps5Var) {
        this.e = ps5Var;
        List listEmptyList = Collections.emptyList();
        int i = qr5.c;
        this.b = new ln5<>(listEmptyList, or5.e);
        this.c = 1;
        this.d = ax5.s;
    }

    @Override // defpackage.ss5
    public void a() {
        if (this.a.isEmpty()) {
            bx5.c(this.b.e.isEmpty(), "Document leak -- detected dangling mutation references when queue is empty.", new Object[0]);
        }
    }

    @Override // defpackage.ss5
    public List<ru5> b(Iterable<bu5> iterable) {
        ln5<Integer> ln5Var = new ln5<>(Collections.emptyList(), vx5.a);
        for (bu5 bu5Var : iterable) {
            Iterator<Map.Entry<qr5, Void>> itP = this.b.e.p(new qr5(bu5Var, 0));
            while (itP.hasNext()) {
                qr5 key = itP.next().getKey();
                if (!bu5Var.equals(key.a)) {
                    break;
                }
                ln5Var = ln5Var.d(Integer.valueOf(key.b));
            }
        }
        return o(ln5Var);
    }

    @Override // defpackage.ss5
    public ru5 c(Timestamp timestamp, List<qu5> list, List<qu5> list2) {
        bx5.c(!list2.isEmpty(), "Mutation batches should not be empty", new Object[0]);
        int i = this.c;
        this.c = i + 1;
        int size = this.a.size();
        if (size > 0) {
            bx5.c(this.a.get(size - 1).a < i, "Mutation batchIds must be monotonically increasing order", new Object[0]);
        }
        ru5 ru5Var = new ru5(i, timestamp, list, list2);
        this.a.add(ru5Var);
        for (qu5 qu5Var : list2) {
            this.b = new ln5<>(this.b.e.o(new qr5(qu5Var.a, i), null));
            this.e.c.a.a(qu5Var.a.e.L());
        }
        return ru5Var;
    }

    @Override // defpackage.ss5
    public List<ru5> d(bu5 bu5Var) {
        qr5 qr5Var = new qr5(bu5Var, 0);
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<qr5, Void>> itP = this.b.e.p(qr5Var);
        while (itP.hasNext()) {
            qr5 key = itP.next().getKey();
            if (!bu5Var.equals(key.a)) {
                break;
            }
            ru5 ru5VarG = g(key.b);
            bx5.c(ru5VarG != null, "Batches in the index must exist in the main table", new Object[0]);
            arrayList.add(ru5VarG);
        }
        return arrayList;
    }

    @Override // defpackage.ss5
    public void e(qi6 qi6Var) {
        Objects.requireNonNull(qi6Var);
        this.d = qi6Var;
    }

    @Override // defpackage.ss5
    public ru5 f(int i) {
        int iM = m(i + 1);
        if (iM < 0) {
            iM = 0;
        }
        if (this.a.size() > iM) {
            return this.a.get(iM);
        }
        return null;
    }

    @Override // defpackage.ss5
    public ru5 g(int i) {
        int iM = m(i);
        if (iM < 0 || iM >= this.a.size()) {
            return null;
        }
        ru5 ru5Var = this.a.get(iM);
        bx5.c(ru5Var.a == i, "If found batch must match", new Object[0]);
        return ru5Var;
    }

    @Override // defpackage.ss5
    public void h(ru5 ru5Var) {
        bx5.c(n(ru5Var.a, "removed") == 0, "Can only remove the first entry of the mutation queue", new Object[0]);
        this.a.remove(0);
        ln5<qr5> ln5VarH = this.b;
        Iterator<qu5> it = ru5Var.d.iterator();
        while (it.hasNext()) {
            bu5 bu5Var = it.next().a;
            this.e.f.d(bu5Var);
            ln5VarH = ln5VarH.h(new qr5(bu5Var, ru5Var.a));
        }
        this.b = ln5VarH;
    }

    @Override // defpackage.ss5
    public List<ru5> i(yq5 yq5Var) {
        bx5.c(!yq5Var.g(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        iu5 iu5Var = yq5Var.e;
        int I = iu5Var.I() + 1;
        qr5 qr5Var = new qr5(new bu5(!bu5.l(iu5Var) ? iu5Var.k("") : iu5Var), 0);
        ln5<Integer> ln5Var = new ln5<>(Collections.emptyList(), vx5.a);
        Iterator<Map.Entry<qr5, Void>> itP = this.b.e.p(qr5Var);
        while (itP.hasNext()) {
            qr5 key = itP.next().getKey();
            iu5 iu5Var2 = key.a.e;
            if (!iu5Var.D(iu5Var2)) {
                break;
            }
            if (iu5Var2.I() == I) {
                ln5Var = ln5Var.d(Integer.valueOf(key.b));
            }
        }
        return o(ln5Var);
    }

    @Override // defpackage.ss5
    public qi6 j() {
        return this.d;
    }

    @Override // defpackage.ss5
    public void k(ru5 ru5Var, qi6 qi6Var) {
        int i = ru5Var.a;
        int iN = n(i, "acknowledged");
        bx5.c(iN == 0, "Can only acknowledge the first batch in the mutation queue", new Object[0]);
        ru5 ru5Var2 = this.a.get(iN);
        bx5.c(i == ru5Var2.a, "Queue ordering failure: expected batch %d, got batch %d", Integer.valueOf(i), Integer.valueOf(ru5Var2.a));
        Objects.requireNonNull(qi6Var);
        this.d = qi6Var;
    }

    @Override // defpackage.ss5
    public List<ru5> l() {
        return Collections.unmodifiableList(this.a);
    }

    public final int m(int i) {
        if (this.a.isEmpty()) {
            return 0;
        }
        return i - this.a.get(0).a;
    }

    public final int n(int i, String str) {
        int iM = m(i);
        bx5.c(iM >= 0 && iM < this.a.size(), "Batches must exist to be %s", str);
        return iM;
    }

    public final List<ru5> o(ln5<Integer> ln5Var) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return arrayList;
            }
            ru5 ru5VarG = g(((Integer) aVar.next()).intValue());
            if (ru5VarG != null) {
                arrayList.add(ru5VarG);
            }
        }
    }

    @Override // defpackage.ss5
    public void start() {
        if (this.a.isEmpty()) {
            this.c = 1;
        }
    }
}
