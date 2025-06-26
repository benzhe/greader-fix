package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class u42<AdT> implements jz1<AdT> {
    public final t50 a;
    public final zv2 b;
    public final zo2 c;
    public final v42<AdT> d;

    public u42(zo2 zo2Var, zv2 zv2Var, t50 t50Var, v42<AdT> v42Var) {
        this.c = zo2Var;
        this.b = zv2Var;
        this.a = t50Var;
        this.d = v42Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        zk2 zk2Var;
        return (this.a == null || (zk2Var = sk2Var.r) == null || zk2Var.a == null) ? false : true;
    }

    @Override // defpackage.jz1
    public final aw2<AdT> b(hl2 hl2Var, sk2 sk2Var) {
        xs0 xs0Var = new xs0();
        c52 c52Var = new c52();
        w42 w42Var = new w42(this, xs0Var, hl2Var, sk2Var, c52Var);
        synchronized (c52Var) {
            c52Var.a = w42Var;
        }
        zk2 zk2Var = sk2Var.r;
        final q50 q50Var = new q50(c52Var, zk2Var.b, zk2Var.a);
        oo2 oo2VarC = this.c.c(ap2.CUSTOM_RENDER_SYN);
        io2 io2Var = new io2(this, q50Var) { // from class: t42
            public final u42 a;
            public final q50 b;

            {
                this.a = this;
                this.b = q50Var;
            }

            @Override // defpackage.io2
            public final void run() throws RemoteException {
                u42 u42Var = this.a;
                u42Var.a.p6(this.b);
            }
        };
        qo2 qo2VarA = oo2VarC.a(new ro2(io2Var), this.b);
        return qo2VarA.f.b(ap2.CUSTOM_RENDER_ACK, qo2VarA.e()).f(xs0Var).e();
    }
}
