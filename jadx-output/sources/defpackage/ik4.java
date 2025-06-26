package defpackage;

import defpackage.pk4;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class ik4 extends fk4<pk4.f> {
    @Override // defpackage.fk4
    public final int a(Map.Entry<?, ?> entry) {
        throw new NoSuchMethodError();
    }

    @Override // defpackage.fk4
    public final kk4<pk4.f> b(Object obj) {
        return ((pk4.c) obj).zzc;
    }

    @Override // defpackage.fk4
    public final void c(vn4 vn4Var, Map.Entry<?, ?> entry) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // defpackage.fk4
    public final boolean d(am4 am4Var) {
        return am4Var instanceof pk4.c;
    }

    @Override // defpackage.fk4
    public final kk4<pk4.f> e(Object obj) {
        pk4.c cVar = (pk4.c) obj;
        kk4<pk4.f> kk4Var = cVar.zzc;
        if (kk4Var.b) {
            cVar.zzc = (kk4) kk4Var.clone();
        }
        return cVar.zzc;
    }

    @Override // defpackage.fk4
    public final void f(Object obj) {
        ((pk4.c) obj).zzc.h();
    }
}
