package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import defpackage.vv2;
import java.io.InputStream;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class bw1 {
    public final zv2 a;
    public final pv1 b;
    public final xa3<mw1> c;

    public bw1(zv2 zv2Var, pv1 pv1Var, xa3<mw1> xa3Var) {
        this.a = zv2Var;
        this.b = pv1Var;
        this.c = xa3Var;
    }

    public final <RetT> aw2<RetT> a(final zzauj zzaujVar, iw1<InputStream> iw1Var, final iw1<InputStream> iw1Var2, final cv2<InputStream, RetT> cv2Var) {
        String str = zzaujVar.h;
        zzr.zzkv();
        nv2 nv2VarZ = nv2.A(zzj.zzem(str) ? new vv2.a(new yv1(dm2.INTERNAL_ERROR)) : vt2.n(iw1Var.a(zzaujVar), ExecutionException.class, aw1.a, this.a)).z(cv2Var, this.a);
        cv2 cv2Var2 = new cv2(this, iw1Var2, zzaujVar, cv2Var) { // from class: dw1
            public final bw1 a;
            public final iw1 b;
            public final zzauj c;
            public final cv2 d;

            {
                this.a = this;
                this.b = iw1Var2;
                this.c = zzaujVar;
                this.d = cv2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                bw1 bw1Var = this.a;
                iw1 iw1Var3 = this.b;
                zzauj zzaujVar2 = this.c;
                cv2 cv2Var3 = this.d;
                Objects.requireNonNull(bw1Var);
                return vt2.m(iw1Var3.a(zzaujVar2), cv2Var3, bw1Var.a);
            }
        };
        zv2 zv2Var = this.a;
        ru2 ru2Var = new ru2(nv2VarZ, yv1.class, cv2Var2);
        nv2VarZ.i(ru2Var, vt2.g(zv2Var, ru2Var));
        return ru2Var;
    }
}
