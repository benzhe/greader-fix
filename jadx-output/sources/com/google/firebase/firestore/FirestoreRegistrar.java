package com.google.firebase.firestore;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.firestore.FirestoreRegistrar;
import defpackage.bp5;
import defpackage.by5;
import defpackage.cb6;
import defpackage.ig5;
import defpackage.n56;
import defpackage.of5;
import defpackage.pe5;
import defpackage.sf5;
import defpackage.sv5;
import defpackage.tf5;
import defpackage.ve5;
import defpackage.wf5;
import defpackage.xf5;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class FirestoreRegistrar implements xf5 {
    public static /* synthetic */ bp5 lambda$getComponents$0(tf5 tf5Var) {
        return new bp5((Context) tf5Var.a(Context.class), (pe5) tf5Var.a(pe5.class), (of5) tf5Var.a(of5.class), new sv5(tf5Var.b(cb6.class), tf5Var.b(by5.class), (ve5) tf5Var.a(ve5.class)));
    }

    @Override // defpackage.xf5
    @Keep
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(bp5.class);
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(by5.class, 0, 1));
        bVarA.a(new ig5(cb6.class, 0, 1));
        bVarA.a(new ig5(of5.class, 0, 0));
        bVarA.a(new ig5(ve5.class, 0, 0));
        bVarA.d(new wf5() { // from class: cp5
            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return FirestoreRegistrar.lambda$getComponents$0(tf5Var);
            }
        });
        return Arrays.asList(bVarA.b(), n56.F("fire-fst", "22.0.1"));
    }
}
