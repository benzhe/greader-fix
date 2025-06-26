package defpackage;

import defpackage.sx3;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gx3 extends fx3<sx3.d> {
    @Override // defpackage.fx3
    public final int a(Map.Entry<?, ?> entry) {
        Objects.requireNonNull((sx3.d) entry.getKey());
        return 0;
    }

    @Override // defpackage.fx3
    public final jx3<sx3.d> b(Object obj) {
        return ((sx3.c) obj).zzjv;
    }

    @Override // defpackage.fx3
    public final void c(v04 v04Var, Map.Entry<?, ?> entry) throws IOException {
        sx3.d dVar = (sx3.d) entry.getKey();
        int[] iArr = hx3.a;
        Objects.requireNonNull(dVar);
        throw null;
    }

    @Override // defpackage.fx3
    public final jx3<sx3.d> d(Object obj) {
        sx3.c cVar = (sx3.c) obj;
        jx3<sx3.d> jx3Var = cVar.zzjv;
        if (!jx3Var.b) {
            return jx3Var;
        }
        jx3<sx3.d> jx3Var2 = (jx3) jx3Var.clone();
        cVar.zzjv = jx3Var2;
        return jx3Var2;
    }

    @Override // defpackage.fx3
    public final void e(Object obj) {
        jx3<sx3.d> jx3Var = ((sx3.c) obj).zzjv;
        if (jx3Var.b) {
            return;
        }
        jx3Var.a.i();
        jx3Var.b = true;
    }

    @Override // defpackage.fx3
    public final boolean f(xy3 xy3Var) {
        return xy3Var instanceof sx3.c;
    }
}
