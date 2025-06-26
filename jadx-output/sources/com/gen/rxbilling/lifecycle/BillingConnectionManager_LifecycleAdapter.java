package com.gen.rxbilling.lifecycle;

import defpackage.ad;
import defpackage.dd;
import defpackage.hd;
import defpackage.zc;

/* loaded from: classes.dex */
public class BillingConnectionManager_LifecycleAdapter implements zc {
    public final BillingConnectionManager a;

    public BillingConnectionManager_LifecycleAdapter(BillingConnectionManager billingConnectionManager) {
        this.a = billingConnectionManager;
    }

    @Override // defpackage.zc
    public void a(dd ddVar, ad.a aVar, boolean z, hd hdVar) {
        boolean z2 = hdVar != null;
        if (z) {
            return;
        }
        if (aVar == ad.a.ON_START) {
            if (!z2 || hdVar.a("connect", 1)) {
                this.a.connect();
                return;
            }
            return;
        }
        if (aVar == ad.a.ON_STOP) {
            if (!z2 || hdVar.a("disconnect", 1)) {
                this.a.disconnect();
            }
        }
    }
}
