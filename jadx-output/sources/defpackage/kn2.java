package defpackage;

import defpackage.f61;
import java.util.LinkedList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class kn2<AdT extends f61> {
    public final mm2 a;
    public on2 b;
    public iw2<cn2<AdT>> c;
    public aw2<cn2<AdT>> d;
    public final sm2 f;
    public final th2<AdT> g;
    public int e = 1;
    public final rv2<cn2<AdT>> i = new ln2(this);
    public final LinkedList<on2> h = new LinkedList<>();

    public kn2(sm2 sm2Var, mm2 mm2Var, th2<AdT> th2Var) {
        this.f = sm2Var;
        this.a = mm2Var;
        this.g = th2Var;
        mm2Var.a = new mn2(this);
    }

    public final void a(on2 on2Var) {
        while (true) {
            aw2<cn2<AdT>> aw2Var = this.d;
            boolean z = true;
            if (!(aw2Var == null || aw2Var.isDone())) {
                if (on2Var != null) {
                    this.h.add(on2Var);
                    return;
                }
                return;
            }
            if (on2Var == null && this.h.isEmpty()) {
                return;
            }
            if (on2Var == null) {
                on2Var = this.h.remove();
            }
            if (on2Var.a() != null) {
                sm2 sm2Var = this.f;
                bn2 bn2VarA = on2Var.a();
                rm2 rm2Var = (rm2) sm2Var;
                synchronized (rm2Var) {
                    pm2 pm2Var = rm2Var.a.get(bn2VarA);
                    if (pm2Var != null) {
                        int iA = pm2Var.a();
                        int i = rm2Var.b.l;
                        if (iA >= i) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    this.b = on2Var.c();
                    this.c = new iw2<>();
                    th2<AdT> th2Var = this.g;
                    on2 on2Var2 = this.b;
                    Objects.requireNonNull(th2Var);
                    wh2 wh2Var = (wh2) on2Var2;
                    aw2<cn2<AdT>> aw2VarA = th2Var.a.a(wh2Var.b, wh2Var.a);
                    this.d = aw2VarA;
                    vt2.i(aw2VarA, this.i, on2Var.b());
                    return;
                }
            }
            on2Var = null;
        }
    }
}
