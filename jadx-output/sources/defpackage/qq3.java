package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class qq3 {
    public final byte[] a;
    public int b;
    public int c;
    public final /* synthetic */ ip3 d;

    public qq3(ip3 ip3Var, byte[] bArr, jp3 jp3Var) {
        this.d = ip3Var;
        this.a = bArr;
    }

    public final synchronized void a() {
        try {
            ip3 ip3Var = this.d;
            if (ip3Var.b) {
                ip3Var.a.w0(this.a);
                this.d.a.U2(this.b);
                this.d.a.F3(this.c);
                this.d.a.M2(null);
                this.d.a.L5();
            }
        } catch (RemoteException e) {
            is0.zzb("Clearcut log failed", e);
        }
    }
}
