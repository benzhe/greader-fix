package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import defpackage.bf5;
import defpackage.ig5;
import defpackage.n56;
import defpackage.pe5;
import defpackage.rb6;
import defpackage.sf5;
import defpackage.tf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.z96;
import defpackage.ze5;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class RemoteConfigRegistrar implements xf5 {
    public static /* synthetic */ rb6 lambda$getComponents$0(tf5 tf5Var) {
        return new rb6((Context) tf5Var.a(Context.class), (pe5) tf5Var.a(pe5.class), (z96) tf5Var.a(z96.class), ((ze5) tf5Var.a(ze5.class)).a("frc"), (bf5) tf5Var.a(bf5.class));
    }

    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(rb6.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(z96.class, 1, 0));
        bVarA.a(new ig5(ze5.class, 1, 0));
        bVarA.a(new ig5(bf5.class, 0, 0));
        bVarA.d(new wf5() { // from class: sb6
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return RemoteConfigRegistrar.lambda$getComponents$0(tf5Var);
            }
        });
        bVarA.c();
        return Arrays.asList(bVarA.b(), n56.F("fire-rc", "20.0.2"));
    }
}
