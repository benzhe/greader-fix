package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.datatransport.TransportRegistrar;
import defpackage.br;
import defpackage.ig5;
import defpackage.is;
import defpackage.sf5;
import defpackage.tf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.zq;
import java.util.Collections;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements xf5 {
    public static /* synthetic */ zq lambda$getComponents$0(tf5 tf5Var) {
        is.b((Context) tf5Var.a(Context.class));
        return is.a().c(br.g);
    }

    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(zq.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.d(new wf5() { // from class: sn5
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return TransportRegistrar.lambda$getComponents$0(tf5Var);
            }
        });
        return Collections.singletonList(bVarA.b());
    }
}
