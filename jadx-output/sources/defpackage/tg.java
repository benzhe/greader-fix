package defpackage;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import defpackage.ad;
import defpackage.dd;
import defpackage.sg;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tg {
    public final ug a;
    public final sg b = new sg();

    public tg(ug ugVar) {
        this.a = ugVar;
    }

    public void a(Bundle bundle) {
        ad lifecycle = this.a.getLifecycle();
        if (((ed) lifecycle).b != ad.b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new Recreator(this.a));
        final sg sgVar = this.b;
        if (sgVar.c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            sgVar.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        lifecycle.a(new bd() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // defpackage.bd
            public void c(dd ddVar, ad.a aVar) {
                if (aVar == ad.a.ON_START) {
                    Objects.requireNonNull(sgVar);
                } else if (aVar == ad.a.ON_STOP) {
                    Objects.requireNonNull(sgVar);
                }
            }
        });
        sgVar.c = true;
    }

    public void b(Bundle bundle) {
        sg sgVar = this.b;
        Objects.requireNonNull(sgVar);
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = sgVar.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        o3<String, sg.b>.d dVarH = sgVar.a.h();
        while (dVarH.hasNext()) {
            Map.Entry entry = (Map.Entry) dVarH.next();
            bundle2.putBundle((String) entry.getKey(), ((sg.b) entry.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
