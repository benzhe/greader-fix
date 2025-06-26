package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import defpackage.bf5;
import defpackage.ig5;
import defpackage.n56;
import defpackage.sf5;
import defpackage.tf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.ze5;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class AbtRegistrar implements xf5 {
    public static /* synthetic */ ze5 lambda$getComponents$0(tf5 tf5Var) {
        return new ze5((Context) tf5Var.a(Context.class), (bf5) tf5Var.a(bf5.class));
    }

    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(ze5.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(bf5.class, 0, 0));
        bVarA.d(new wf5() { // from class: af5
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return AbtRegistrar.lambda$getComponents$0(tf5Var);
            }
        });
        return Arrays.asList(bVarA.b(), n56.F("fire-abt", "20.0.0"));
    }
}
