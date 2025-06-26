package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class n6 extends x6 {
    public ArrayList<x6> k;
    public int l;

    public n6(c6 c6Var, int i) {
        c6 c6Var2;
        super(c6Var);
        this.k = new ArrayList<>();
        this.f = i;
        c6 c6Var3 = this.b;
        c6 c6VarQ = c6Var3.q(i);
        while (true) {
            c6 c6Var4 = c6VarQ;
            c6Var2 = c6Var3;
            c6Var3 = c6Var4;
            if (c6Var3 == null) {
                break;
            } else {
                c6VarQ = c6Var3.q(this.f);
            }
        }
        this.b = c6Var2;
        ArrayList<x6> arrayList = this.k;
        int i2 = this.f;
        arrayList.add(i2 == 0 ? c6Var2.d : i2 == 1 ? c6Var2.e : null);
        c6 c6VarP = c6Var2.p(this.f);
        while (c6VarP != null) {
            ArrayList<x6> arrayList2 = this.k;
            int i3 = this.f;
            arrayList2.add(i3 == 0 ? c6VarP.d : i3 == 1 ? c6VarP.e : null);
            c6VarP = c6VarP.p(this.f);
        }
        Iterator<x6> it = this.k.iterator();
        while (it.hasNext()) {
            x6 next = it.next();
            int i4 = this.f;
            if (i4 == 0) {
                next.b.b = this;
            } else if (i4 == 1) {
                next.b.c = this;
            }
        }
        if ((this.f == 0 && ((d6) this.b.M).G0) && this.k.size() > 1) {
            ArrayList<x6> arrayList3 = this.k;
            this.b = arrayList3.get(arrayList3.size() - 1).b;
        }
        this.l = this.f == 0 ? this.b.t0 : this.b.u0;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00dd  */
    @Override // defpackage.x6, defpackage.o6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(defpackage.o6 r27) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n6.a(o6):void");
    }

    @Override // defpackage.x6
    public void d() {
        Iterator<x6> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.k.size();
        if (size < 1) {
            return;
        }
        c6 c6Var = this.k.get(0).b;
        c6 c6Var2 = this.k.get(size - 1).b;
        if (this.f == 0) {
            b6 b6Var = c6Var.A;
            b6 b6Var2 = c6Var2.C;
            q6 q6VarI = i(b6Var, 0);
            int iC = b6Var.c();
            c6 c6VarM = m();
            if (c6VarM != null) {
                iC = c6VarM.A.c();
            }
            if (q6VarI != null) {
                q6 q6Var = this.h;
                q6Var.l.add(q6VarI);
                q6Var.f = iC;
                q6VarI.k.add(q6Var);
            }
            q6 q6VarI2 = i(b6Var2, 0);
            int iC2 = b6Var2.c();
            c6 c6VarN = n();
            if (c6VarN != null) {
                iC2 = c6VarN.C.c();
            }
            if (q6VarI2 != null) {
                q6 q6Var2 = this.i;
                q6Var2.l.add(q6VarI2);
                q6Var2.f = -iC2;
                q6VarI2.k.add(q6Var2);
            }
        } else {
            b6 b6Var3 = c6Var.B;
            b6 b6Var4 = c6Var2.D;
            q6 q6VarI3 = i(b6Var3, 1);
            int iC3 = b6Var3.c();
            c6 c6VarM2 = m();
            if (c6VarM2 != null) {
                iC3 = c6VarM2.B.c();
            }
            if (q6VarI3 != null) {
                q6 q6Var3 = this.h;
                q6Var3.l.add(q6VarI3);
                q6Var3.f = iC3;
                q6VarI3.k.add(q6Var3);
            }
            q6 q6VarI4 = i(b6Var4, 1);
            int iC4 = b6Var4.c();
            c6 c6VarN2 = n();
            if (c6VarN2 != null) {
                iC4 = c6VarN2.D.c();
            }
            if (q6VarI4 != null) {
                q6 q6Var4 = this.i;
                q6Var4.l.add(q6VarI4);
                q6Var4.f = -iC4;
                q6VarI4.k.add(q6Var4);
            }
        }
        this.h.a = this;
        this.i.a = this;
    }

    @Override // defpackage.x6
    public void e() {
        for (int i = 0; i < this.k.size(); i++) {
            this.k.get(i).e();
        }
    }

    @Override // defpackage.x6
    public void f() {
        this.c = null;
        Iterator<x6> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // defpackage.x6
    public long j() {
        int size = this.k.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r4.i.f + this.k.get(i).j() + j + r4.h.f;
        }
        return j;
    }

    @Override // defpackage.x6
    public boolean k() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            if (!this.k.get(i).k()) {
                return false;
            }
        }
        return true;
    }

    public final c6 m() {
        for (int i = 0; i < this.k.size(); i++) {
            c6 c6Var = this.k.get(i).b;
            if (c6Var.e0 != 8) {
                return c6Var;
            }
        }
        return null;
    }

    public final c6 n() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            c6 c6Var = this.k.get(size).b;
            if (c6Var.e0 != 8) {
                return c6Var;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ChainRun ");
        sbZ.append(this.f == 0 ? "horizontal : " : "vertical : ");
        String string = sbZ.toString();
        Iterator<x6> it = this.k.iterator();
        while (it.hasNext()) {
            x6 next = it.next();
            string = jo.n(jo.n(string, "<") + next, "> ");
        }
        return string;
    }
}
