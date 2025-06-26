package defpackage;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import defpackage.qh;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class wh extends qh {
    public int D;
    public ArrayList<qh> B = new ArrayList<>();
    public boolean C = true;
    public boolean E = false;
    public int F = 0;

    public class a extends th {
        public final /* synthetic */ qh a;

        public a(wh whVar, qh qhVar) {
            this.a = qhVar;
        }

        @Override // qh.d
        public void c(qh qhVar) {
            this.a.A();
            qhVar.x(this);
        }
    }

    public static class b extends th {
        public wh a;

        public b(wh whVar) {
            this.a = whVar;
        }

        @Override // defpackage.th, qh.d
        public void a(qh qhVar) {
            wh whVar = this.a;
            if (whVar.E) {
                return;
            }
            whVar.I();
            this.a.E = true;
        }

        @Override // qh.d
        public void c(qh qhVar) {
            wh whVar = this.a;
            int i = whVar.D - 1;
            whVar.D = i;
            if (i == 0) {
                whVar.E = false;
                whVar.o();
            }
            qhVar.x(this);
        }
    }

    @Override // defpackage.qh
    public void A() {
        if (this.B.isEmpty()) {
            I();
            o();
            return;
        }
        b bVar = new b(this);
        Iterator<qh> it = this.B.iterator();
        while (it.hasNext()) {
            it.next().b(bVar);
        }
        this.D = this.B.size();
        if (this.C) {
            Iterator<qh> it2 = this.B.iterator();
            while (it2.hasNext()) {
                it2.next().A();
            }
            return;
        }
        for (int i = 1; i < this.B.size(); i++) {
            this.B.get(i - 1).b(new a(this, this.B.get(i)));
        }
        qh qhVar = this.B.get(0);
        if (qhVar != null) {
            qhVar.A();
        }
    }

    @Override // defpackage.qh
    public /* bridge */ /* synthetic */ qh B(long j) {
        M(j);
        return this;
    }

    @Override // defpackage.qh
    public void D(qh.c cVar) {
        this.w = cVar;
        this.F |= 8;
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).D(cVar);
        }
    }

    @Override // defpackage.qh
    public /* bridge */ /* synthetic */ qh E(TimeInterpolator timeInterpolator) {
        N(timeInterpolator);
        return this;
    }

    @Override // defpackage.qh
    public void F(nh nhVar) {
        if (nhVar == null) {
            this.x = qh.z;
        } else {
            this.x = nhVar;
        }
        this.F |= 4;
        if (this.B != null) {
            for (int i = 0; i < this.B.size(); i++) {
                this.B.get(i).F(nhVar);
            }
        }
    }

    @Override // defpackage.qh
    public void G(vh vhVar) {
        this.F |= 2;
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).G(vhVar);
        }
    }

    @Override // defpackage.qh
    public qh H(long j) {
        this.f = j;
        return this;
    }

    @Override // defpackage.qh
    public String J(String str) {
        String strJ = super.J(str);
        for (int i = 0; i < this.B.size(); i++) {
            StringBuilder sbB = jo.B(strJ, "\n");
            sbB.append(this.B.get(i).J(str + "  "));
            strJ = sbB.toString();
        }
        return strJ;
    }

    public wh K(qh qhVar) {
        this.B.add(qhVar);
        qhVar.m = this;
        long j = this.g;
        if (j >= 0) {
            qhVar.B(j);
        }
        if ((this.F & 1) != 0) {
            qhVar.E(this.h);
        }
        if ((this.F & 2) != 0) {
            qhVar.G(null);
        }
        if ((this.F & 4) != 0) {
            qhVar.F(this.x);
        }
        if ((this.F & 8) != 0) {
            qhVar.D(this.w);
        }
        return this;
    }

    public qh L(int i) {
        if (i < 0 || i >= this.B.size()) {
            return null;
        }
        return this.B.get(i);
    }

    public wh M(long j) {
        ArrayList<qh> arrayList;
        this.g = j;
        if (j >= 0 && (arrayList = this.B) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.B.get(i).B(j);
            }
        }
        return this;
    }

    public wh N(TimeInterpolator timeInterpolator) {
        this.F |= 1;
        ArrayList<qh> arrayList = this.B;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.B.get(i).E(timeInterpolator);
            }
        }
        this.h = timeInterpolator;
        return this;
    }

    public wh O(int i) {
        if (i == 0) {
            this.C = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException(jo.g("Invalid parameter for TransitionSet ordering: ", i));
            }
            this.C = false;
        }
        return this;
    }

    @Override // defpackage.qh
    public qh b(qh.d dVar) {
        super.b(dVar);
        return this;
    }

    @Override // defpackage.qh
    public qh c(View view) {
        for (int i = 0; i < this.B.size(); i++) {
            this.B.get(i).c(view);
        }
        this.j.add(view);
        return this;
    }

    @Override // defpackage.qh
    public void e(yh yhVar) {
        if (u(yhVar.b)) {
            Iterator<qh> it = this.B.iterator();
            while (it.hasNext()) {
                qh next = it.next();
                if (next.u(yhVar.b)) {
                    next.e(yhVar);
                    yhVar.c.add(next);
                }
            }
        }
    }

    @Override // defpackage.qh
    public void g(yh yhVar) {
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).g(yhVar);
        }
    }

    @Override // defpackage.qh
    public void h(yh yhVar) {
        if (u(yhVar.b)) {
            Iterator<qh> it = this.B.iterator();
            while (it.hasNext()) {
                qh next = it.next();
                if (next.u(yhVar.b)) {
                    next.h(yhVar);
                    yhVar.c.add(next);
                }
            }
        }
    }

    @Override // defpackage.qh
    /* renamed from: k */
    public qh clone() {
        wh whVar = (wh) super.clone();
        whVar.B = new ArrayList<>();
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            qh qhVarClone = this.B.get(i).clone();
            whVar.B.add(qhVarClone);
            qhVarClone.m = whVar;
        }
        return whVar;
    }

    @Override // defpackage.qh
    public void m(ViewGroup viewGroup, zh zhVar, zh zhVar2, ArrayList<yh> arrayList, ArrayList<yh> arrayList2) {
        long j = this.f;
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            qh qhVar = this.B.get(i);
            if (j > 0 && (this.C || i == 0)) {
                long j2 = qhVar.f;
                if (j2 > 0) {
                    qhVar.H(j2 + j);
                } else {
                    qhVar.H(j);
                }
            }
            qhVar.m(viewGroup, zhVar, zhVar2, arrayList, arrayList2);
        }
    }

    @Override // defpackage.qh
    public void w(View view) {
        super.w(view);
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).w(view);
        }
    }

    @Override // defpackage.qh
    public qh x(qh.d dVar) {
        super.x(dVar);
        return this;
    }

    @Override // defpackage.qh
    public qh y(View view) {
        for (int i = 0; i < this.B.size(); i++) {
            this.B.get(i).y(view);
        }
        this.j.remove(view);
        return this;
    }

    @Override // defpackage.qh
    public void z(View view) {
        super.z(view);
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).z(view);
        }
    }
}
