package defpackage;

import defpackage.ds;
import defpackage.vr;
import defpackage.wr;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gs<T> implements yq<T> {
    public final ds a;
    public final String b;
    public final uq c;
    public final xq<T, byte[]> d;
    public final hs e;

    public gs(ds dsVar, String str, uq uqVar, xq<T, byte[]> xqVar, hs hsVar) {
        this.a = dsVar;
        this.b = str;
        this.c = uqVar;
        this.d = xqVar;
        this.e = hsVar;
    }

    public void a(vq<T> vqVar, ar arVar) {
        hs hsVar = this.e;
        ds dsVar = this.a;
        Objects.requireNonNull(dsVar, "Null transportContext");
        Objects.requireNonNull(vqVar, "Null event");
        String str = this.b;
        Objects.requireNonNull(str, "Null transportName");
        xq<T, byte[]> xqVar = this.d;
        Objects.requireNonNull(xqVar, "Null transformer");
        uq uqVar = this.c;
        Objects.requireNonNull(uqVar, "Null encoding");
        is isVar = (is) hsVar;
        ft ftVar = isVar.c;
        wq wqVarC = vqVar.c();
        ds.a aVarA = ds.a();
        aVarA.b(dsVar.b());
        aVarA.c(wqVarC);
        wr.b bVar = (wr.b) aVarA;
        bVar.b = dsVar.c();
        ds dsVarA = bVar.a();
        vr.b bVar2 = new vr.b();
        bVar2.f = new HashMap();
        bVar2.e(isVar.a.a());
        bVar2.g(isVar.b.a());
        bVar2.f(str);
        bVar2.d(new zr(uqVar, xqVar.apply(vqVar.b())));
        bVar2.b = vqVar.a();
        ftVar.a(dsVarA, bVar2.b(), arVar);
    }
}
