package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;

/* loaded from: classes.dex */
public final class m42 implements jz1<j41> {
    public final Context a;
    public final g51 b;
    public final t50 c;
    public final zv2 d;
    public final zo2 e;

    public m42(Context context, g51 g51Var, zo2 zo2Var, zv2 zv2Var, t50 t50Var) {
        this.a = context;
        this.b = g51Var;
        this.e = zo2Var;
        this.d = zv2Var;
        this.c = t50Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var;
        return (this.c == null || (zk2Var = sk2Var.r) == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<j41> b(hl2 hl2Var, sk2 sk2Var) {
        m41 m41VarB = this.b.b(new v61(hl2Var, sk2Var, null), new r42(new View(this.a), p42.a, sk2Var.t.get(0)));
        e01 e01Var = (e01) m41VarB;
        q42 q42Var = new q42(e01Var.L.get(), e01Var.X.get(), e01Var.b0.get(), e01Var.T0.get(), e01Var.o.get());
        zk2 zk2Var = sk2Var.r;
        final q50 q50Var = new q50(q42Var, zk2Var.b, zk2Var.a);
        oo2 oo2VarC = this.e.c(ap2.CUSTOM_RENDER_SYN);
        io2 io2Var = new io2(this, q50Var) { // from class: o42
            public final m42 a;
            public final q50 b;

            {
                this.a = this;
                this.b = q50Var;
            }

            @Override // defpackage.io2
            public final void run() throws RemoteException {
                m42 m42Var = this.a;
                m42Var.c.p6(this.b);
            }
        };
        qo2 qo2VarA = oo2VarC.a(new ro2(io2Var), this.d);
        return qo2VarA.f.b(ap2.CUSTOM_RENDER_ACK, qo2VarA.e()).f(vt2.j(m41VarB.h())).e();
    }
}
