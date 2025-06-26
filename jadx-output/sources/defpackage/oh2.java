package defpackage;

import com.google.android.gms.internal.ads.zzauj;
import defpackage.f61;
import defpackage.l91;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class oh2<R extends l91<AdT>, AdT extends f61> implements li2<R, cn2<AdT>> {
    public R a;

    @Override // defpackage.li2
    public final aw2<cn2<AdT>> a(pi2 pi2Var, ni2<R> ni2Var) {
        aw2<hl2> aw2VarA;
        k91<R> k91VarA = ni2Var.a(pi2Var.b);
        k91VarA.d(new si2());
        R rA = k91VarA.a();
        this.a = rA;
        final h71 h71VarD = rA.d();
        final cn2 cn2Var = new cn2();
        zzauj zzaujVar = pi2Var.a;
        if (zzaujVar != null) {
            Objects.requireNonNull(h71VarD);
            aw2VarA = h71VarD.a(vt2.j(zzaujVar));
        } else {
            aw2VarA = h71VarD.a(h71VarD.i.b());
        }
        nv2 nv2VarA = nv2.A(aw2VarA);
        cv2 cv2Var = new cv2(this, cn2Var, h71VarD) { // from class: nh2
            public final cn2 a;
            public final h71 b;

            {
                this.a = cn2Var;
                this.b = h71VarD;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                cn2 cn2Var2 = this.a;
                h71 h71Var = this.b;
                hl2 hl2Var = (hl2) obj;
                cn2Var2.b = hl2Var;
                Iterator<sk2> it = hl2Var.b.a.iterator();
                boolean z = false;
                boolean z2 = false;
                loop0: while (true) {
                    if (!it.hasNext()) {
                        z = z2;
                        break;
                    }
                    Iterator<String> it2 = it.next().a.iterator();
                    while (it2.hasNext()) {
                        if (!it2.next().contains("FirstPartyRenderer")) {
                            break loop0;
                        }
                        z2 = true;
                    }
                }
                return !z ? vt2.j(null) : h71Var.c(vt2.j(hl2Var));
            }
        };
        lv2 lv2Var = lv2.INSTANCE;
        nv2 nv2VarZ = nv2VarA.z(cv2Var, lv2Var);
        xu2 xu2Var = new xu2(nv2VarZ, new vs2(cn2Var) { // from class: qh2
            public final cn2 a;

            {
                this.a = cn2Var;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                cn2 cn2Var2 = this.a;
                cn2Var2.c = (AdT) obj;
                return cn2Var2;
            }
        });
        nv2VarZ.i(xu2Var, vt2.g(lv2Var, xu2Var));
        return xu2Var;
    }

    @Override // defpackage.li2
    public final /* synthetic */ Object b() {
        return this.a;
    }
}
