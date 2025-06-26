package defpackage;

import com.google.android.gms.internal.ads.zzauj;
import defpackage.vv2;
import java.util.Map;

/* loaded from: classes.dex */
public final class uv1 implements zv1 {
    public final Map<String, mb3<zv1>> a;
    public final zv2 b;
    public final nc1 c;

    public uv1(Map<String, mb3<zv1>> map, zv2 zv2Var, nc1 nc1Var) {
        this.a = map;
        this.b = zv2Var;
        this.c = nc1Var;
    }

    @Override // defpackage.zv1
    public final aw2<hl2> a(final zzauj zzaujVar) {
        this.c.D0(new qc1(zzaujVar));
        aw2<hl2> aVar = new vv2.a<>(new bu1(dm2.NO_FILL));
        for (String str : ((String) os3.j.f.a(y40.O4)).split(",")) {
            final mb3<zv1> mb3Var = this.a.get(str.trim());
            if (mb3Var != null) {
                aVar = vt2.n(aVar, bu1.class, new cv2(mb3Var, zzaujVar) { // from class: xv1
                    public final mb3 a;
                    public final zzauj b;

                    {
                        this.a = mb3Var;
                        this.b = zzaujVar;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj) {
                        mb3 mb3Var2 = this.a;
                        return ((zv1) mb3Var2.get()).a(this.b);
                    }
                }, this.b);
            }
        }
        aVar.i(new sv2(aVar, new wv1(this)), ms0.f);
        return aVar;
    }
}
