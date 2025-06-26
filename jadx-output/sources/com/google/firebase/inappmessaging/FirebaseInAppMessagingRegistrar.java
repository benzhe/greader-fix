package com.google.firebase.inappmessaging;

import android.app.Application;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingRegistrar;
import defpackage.a76;
import defpackage.a96;
import defpackage.b76;
import defpackage.b86;
import defpackage.bf5;
import defpackage.c50;
import defpackage.c76;
import defpackage.d76;
import defpackage.e76;
import defpackage.e86;
import defpackage.f26;
import defpackage.f76;
import defpackage.f86;
import defpackage.g76;
import defpackage.g86;
import defpackage.h76;
import defpackage.i76;
import defpackage.i86;
import defpackage.ig5;
import defpackage.iz5;
import defpackage.j76;
import defpackage.jj7;
import defpackage.jz5;
import defpackage.l56;
import defpackage.l86;
import defpackage.m76;
import defpackage.n56;
import defpackage.n76;
import defpackage.no5;
import defpackage.o36;
import defpackage.o76;
import defpackage.p76;
import defpackage.p86;
import defpackage.pe5;
import defpackage.q76;
import defpackage.q86;
import defpackage.r66;
import defpackage.r76;
import defpackage.s56;
import defpackage.s66;
import defpackage.s76;
import defpackage.sf5;
import defpackage.t66;
import defpackage.t76;
import defpackage.tf5;
import defpackage.ty5;
import defpackage.u66;
import defpackage.u86;
import defpackage.v66;
import defpackage.w66;
import defpackage.w76;
import defpackage.wf5;
import defpackage.wy5;
import defpackage.x26;
import defpackage.x66;
import defpackage.xf5;
import defpackage.y66;
import defpackage.y86;
import defpackage.z66;
import defpackage.z76;
import defpackage.z96;
import defpackage.ze5;
import defpackage.zq;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Keep
/* loaded from: classes.dex */
public class FirebaseInAppMessagingRegistrar implements xf5 {
    /* JADX INFO: Access modifiers changed from: private */
    public ty5 providesFirebaseInAppMessaging(tf5 tf5Var) {
        pe5 pe5Var = (pe5) tf5Var.a(pe5.class);
        z96 z96Var = (z96) tf5Var.a(z96.class);
        bf5 bf5Var = (bf5) tf5Var.a(bf5.class);
        no5 no5Var = (no5) tf5Var.a(no5.class);
        pe5Var.a();
        w76 w76Var = new w76((Application) pe5Var.a);
        t76 t76Var = new t76(bf5Var, no5Var);
        j76 j76Var = new j76();
        i86 i86Var = new i86(new s56());
        b86 b86Var = new b86();
        q86 q86Var = new q86();
        c50.u(w76Var, w76.class);
        z76 z76Var = new z76();
        c50.u(i86Var, i86.class);
        l86 l86Var = new l86();
        u86 u86Var = new u86();
        p86 p86Var = new p86();
        c50.u(t76Var, t76.class);
        h76 h76Var = new h76(b86Var, q86Var, w76Var, z76Var, i86Var, j76Var, l86Var, u86Var, p86Var, t76Var, null);
        f26 f26Var = new f26(((ze5) tf5Var.a(ze5.class)).a("fiam"));
        Objects.requireNonNull(h76Var.a);
        m76 m76Var = new m76(pe5Var, z96Var, new a96());
        e86 e86Var = new e86(pe5Var);
        zq zqVar = (zq) tf5Var.a(zq.class);
        Objects.requireNonNull(zqVar);
        c50.u(f26Var, f26.class);
        c50.u(m76Var, m76.class);
        c50.u(e86Var, e86.class);
        c50.u(h76Var, i76.class);
        c50.u(zqVar, zq.class);
        t66 t66Var = new t66(h76Var);
        d76 d76Var = new d76(h76Var);
        w66 w66Var = new w66(h76Var);
        x66 x66Var = new x66(h76Var);
        jj7 g86Var = new g86(e86Var, new a76(h76Var), new f86(e86Var));
        Object obj = iz5.c;
        if (!(g86Var instanceof iz5)) {
            g86Var = new iz5(g86Var);
        }
        jj7 o36Var = new o36(g86Var);
        if (!(o36Var instanceof iz5)) {
            o36Var = new iz5(o36Var);
        }
        jj7 n76Var = new n76(m76Var, o36Var, new v66(h76Var), new c76(h76Var));
        jj7 iz5Var = n76Var instanceof iz5 ? n76Var : new iz5(n76Var);
        s66 s66Var = new s66(h76Var);
        g76 g76Var = new g76(h76Var);
        b76 b76Var = new b76(h76Var);
        f76 f76Var = new f76(h76Var);
        u66 u66Var = new u66(h76Var);
        r76 r76Var = new r76(m76Var);
        s76 s76Var = new s76(m76Var, r76Var);
        q76 q76Var = new q76(m76Var);
        o76 o76Var = new o76(m76Var, r76Var, new z66(h76Var));
        jj7 l56Var = new l56(t66Var, d76Var, w66Var, x66Var, iz5Var, s66Var, g76Var, b76Var, f76Var, u66Var, s76Var, q76Var, o76Var, new jz5(f26Var));
        if (!(l56Var instanceof iz5)) {
            l56Var = new iz5(l56Var);
        }
        e76 e76Var = new e76(h76Var);
        p76 p76Var = new p76(m76Var);
        jz5 jz5Var = new jz5(zqVar);
        r66 r66Var = new r66(h76Var);
        y66 y66Var = new y66(h76Var);
        jj7 y86Var = new y86(p76Var, jz5Var, r66Var, q76Var, x66Var, y66Var);
        jj7 wy5Var = new wy5(l56Var, e76Var, o76Var, q76Var, new x26(b76Var, x66Var, g76Var, f76Var, w66Var, u66Var, y86Var instanceof iz5 ? y86Var : new iz5(y86Var), o76Var), y66Var);
        if (!(wy5Var instanceof iz5)) {
            wy5Var = new iz5(wy5Var);
        }
        return (ty5) wy5Var.get();
    }

    @Override // defpackage.xf5
    @Keep
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(ty5.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(z96.class, 1, 0));
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(ze5.class, 1, 0));
        bVarA.a(new ig5(bf5.class, 0, 0));
        bVarA.a(new ig5(zq.class, 1, 0));
        bVarA.a(new ig5(no5.class, 1, 0));
        bVarA.d(new wf5(this) { // from class: vy5
            public final FirebaseInAppMessagingRegistrar a;

            {
                this.a = this;
            }

            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return this.a.providesFirebaseInAppMessaging(tf5Var);
            }
        });
        bVarA.c();
        return Arrays.asList(bVarA.b(), n56.F("fire-fiam", "19.1.3"));
    }
}
