package com.google.firebase.inappmessaging.display;

import android.app.Application;
import androidx.annotation.Keep;
import com.google.firebase.inappmessaging.display.FirebaseInAppMessagingDisplayRegistrar;
import defpackage.a16;
import defpackage.bf5;
import defpackage.c16;
import defpackage.c50;
import defpackage.e16;
import defpackage.f16;
import defpackage.h06;
import defpackage.h16;
import defpackage.i16;
import defpackage.ig5;
import defpackage.j06;
import defpackage.j16;
import defpackage.jj7;
import defpackage.lz5;
import defpackage.n56;
import defpackage.pe5;
import defpackage.qz5;
import defpackage.rz5;
import defpackage.sf5;
import defpackage.tf5;
import defpackage.ty5;
import defpackage.wf5;
import defpackage.x06;
import defpackage.xf5;
import defpackage.xz5;
import defpackage.y06;
import defpackage.y16;
import defpackage.z06;
import defpackage.z16;
import defpackage.zz5;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class FirebaseInAppMessagingDisplayRegistrar implements xf5 {
    /* JADX INFO: Access modifiers changed from: private */
    public lz5 buildFirebaseInAppMessagingUI(tf5 tf5Var) {
        pe5 pe5VarB = pe5.b();
        ty5 ty5Var = (ty5) tf5Var.a(ty5.class);
        pe5VarB.a();
        Application application = (Application) pe5VarB.a;
        f16 f16Var = new f16(application);
        c50.v(f16Var, f16.class);
        c16 c16Var = new c16(f16Var, new j16(), null);
        h16 h16Var = new h16(ty5Var);
        c50.v(h16Var, h16.class);
        y16 y16Var = new y16();
        c50.v(c16Var, e16.class);
        jj7 i16Var = new i16(h16Var);
        Object obj = rz5.c;
        jj7 rz5Var = i16Var instanceof rz5 ? i16Var : new rz5(i16Var);
        z06 z06Var = new z06(c16Var);
        a16 a16Var = new a16(c16Var);
        jj7 rz5Var2 = h06.a.a;
        if (!(rz5Var2 instanceof rz5)) {
            rz5Var2 = new rz5(rz5Var2);
        }
        jj7 z16Var = new z16(y16Var, a16Var, rz5Var2);
        if (!(z16Var instanceof rz5)) {
            z16Var = new rz5(z16Var);
        }
        jj7 zz5Var = new zz5(z16Var);
        jj7 rz5Var3 = zz5Var instanceof rz5 ? zz5Var : new rz5(zz5Var);
        x06 x06Var = new x06(c16Var);
        y06 y06Var = new y06(c16Var);
        jj7 jj7Var = xz5.a.a;
        jj7 rz5Var4 = jj7Var instanceof rz5 ? jj7Var : new rz5(jj7Var);
        j06 j06Var = j06.a.a;
        jj7 qz5Var = new qz5(rz5Var, z06Var, rz5Var3, j06Var, j06Var, x06Var, a16Var, y06Var, rz5Var4);
        if (!(qz5Var instanceof rz5)) {
            qz5Var = new rz5(qz5Var);
        }
        lz5 lz5Var = (lz5) qz5Var.get();
        application.registerActivityLifecycleCallbacks(lz5Var);
        return lz5Var;
    }

    @Override // defpackage.xf5
    @Keep
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(lz5.class);
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(bf5.class, 1, 0));
        bVarA.a(new ig5(ty5.class, 1, 0));
        bVarA.d(new wf5(this) { // from class: pz5
            public final FirebaseInAppMessagingDisplayRegistrar a;

            {
                this.a = this;
            }

            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return this.a.buildFirebaseInAppMessagingUI(tf5Var);
            }
        });
        bVarA.c();
        return Arrays.asList(bVarA.b(), n56.F("fire-fiamd", "19.1.3"));
    }
}
