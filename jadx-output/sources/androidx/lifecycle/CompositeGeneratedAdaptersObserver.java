package androidx.lifecycle;

import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.hd;
import defpackage.zc;

/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements bd {
    public final zc[] e;

    public CompositeGeneratedAdaptersObserver(zc[] zcVarArr) {
        this.e = zcVarArr;
    }

    @Override // defpackage.bd
    public void c(dd ddVar, ad.a aVar) {
        hd hdVar = new hd();
        for (zc zcVar : this.e) {
            zcVar.a(ddVar, aVar, false, hdVar);
        }
        for (zc zcVar2 : this.e) {
            zcVar2.a(ddVar, aVar, true, hdVar);
        }
    }
}
