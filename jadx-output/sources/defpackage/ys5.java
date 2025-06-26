package defpackage;

import defpackage.ln5;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ys5 {
    public ln5<qr5> a;
    public ln5<qr5> b;

    public ys5() {
        List listEmptyList = Collections.emptyList();
        int i = qr5.c;
        this.a = new ln5<>(listEmptyList, or5.e);
        this.b = new ln5<>(Collections.emptyList(), new Comparator() { // from class: pr5
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                qr5 qr5Var = (qr5) obj;
                qr5 qr5Var2 = (qr5) obj2;
                int iB = vx5.b(qr5Var.b, qr5Var2.b);
                return iB != 0 ? iB : qr5Var.a.compareTo(qr5Var2.a);
            }
        });
    }

    public void a(bu5 bu5Var, int i) {
        qr5 qr5Var = new qr5(bu5Var, i);
        this.a = new ln5<>(this.a.e.o(qr5Var, null));
        this.b = new ln5<>(this.b.e.o(qr5Var, null));
    }

    public void b(ln5<bu5> ln5Var, int i) {
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                a((bu5) aVar.next(), i);
            }
        }
    }

    public boolean c(bu5 bu5Var) {
        Iterator<Map.Entry<qr5, Void>> itP = this.a.e.p(new qr5(bu5Var, 0));
        if (itP.hasNext()) {
            return itP.next().getKey().a.equals(bu5Var);
        }
        return false;
    }

    public ln5<bu5> d(int i) {
        ln5<bu5> ln5Var = bu5.f;
        Iterator<Map.Entry<qr5, Void>> itP = this.b.e.p(new qr5(new bu5(iu5.M(Collections.emptyList())), i));
        ln5<bu5> ln5VarD = bu5.f;
        while (itP.hasNext()) {
            qr5 key = itP.next().getKey();
            if (key.b != i) {
                break;
            }
            ln5VarD = ln5VarD.d(key.a);
        }
        return ln5VarD;
    }

    public void e(bu5 bu5Var, int i) {
        qr5 qr5Var = new qr5(bu5Var, i);
        this.a = this.a.h(qr5Var);
        this.b = this.b.h(qr5Var);
    }

    public void f(ln5<bu5> ln5Var, int i) {
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            } else {
                e((bu5) aVar.next(), i);
            }
        }
    }

    public ln5<bu5> g(int i) {
        ln5<bu5> ln5Var = bu5.f;
        Iterator<Map.Entry<qr5, Void>> itP = this.b.e.p(new qr5(new bu5(iu5.M(Collections.emptyList())), i));
        ln5<bu5> ln5VarD = bu5.f;
        while (itP.hasNext()) {
            qr5 key = itP.next().getKey();
            if (key.b != i) {
                break;
            }
            ln5VarD = ln5VarD.d(key.a);
            this.a = this.a.h(key);
            this.b = this.b.h(key);
        }
        return ln5VarD;
    }
}
