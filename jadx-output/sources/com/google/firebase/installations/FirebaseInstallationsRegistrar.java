package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import defpackage.by5;
import defpackage.cb6;
import defpackage.ig5;
import defpackage.n56;
import defpackage.pe5;
import defpackage.sf5;
import defpackage.tf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.y96;
import defpackage.z96;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements xf5 {
    public static /* synthetic */ z96 lambda$getComponents$0(tf5 tf5Var) {
        return new y96((pe5) tf5Var.a(pe5.class), tf5Var.b(cb6.class), tf5Var.b(by5.class));
    }

    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(z96.class);
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(by5.class, 0, 1));
        bVarA.a(new ig5(cb6.class, 0, 1));
        bVarA.d(new wf5() { // from class: ba6
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(tf5Var);
            }
        });
        return Arrays.asList(bVarA.b(), n56.F("fire-installations", "16.3.5"));
    }
}
