package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zf0 extends ly0 {
    public final xr4 e;

    public zf0(xr4 xr4Var) {
        this.e = xr4Var;
    }

    @Override // defpackage.ny0
    public final String C2() throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new v24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }

    @Override // defpackage.ny0
    public final void C5(String str) throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new q24(q34Var, str));
    }

    @Override // defpackage.ny0
    public final String F4() throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new w24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }

    @Override // defpackage.ny0
    public final void K6(String str) throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new r24(q34Var, str));
    }

    @Override // defpackage.ny0
    public final void W(String str, String str2, Bundle bundle) throws RemoteException {
        this.e.a.h(str, str2, bundle);
    }

    @Override // defpackage.ny0
    public final String Y1() throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new t24(q34Var, dd4Var));
        return dd4Var.g0(50L);
    }

    @Override // defpackage.ny0
    public final String b4() throws RemoteException {
        return this.e.a.h;
    }

    @Override // defpackage.ny0
    public final String f4() throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new s24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }

    @Override // defpackage.ny0
    public final void k6(Bundle bundle) throws RemoteException {
        q34 q34Var = this.e.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new o24(q34Var, bundle));
    }

    @Override // defpackage.ny0
    public final void t4(x20 x20Var, String str, String str2) throws RemoteException {
        xr4 xr4Var = this.e;
        Activity activity = x20Var != null ? (Activity) y20.l0(x20Var) : null;
        q34 q34Var = xr4Var.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new n24(q34Var, activity, str, str2));
    }

    @Override // defpackage.ny0
    public final long u2() throws RemoteException {
        return this.e.a.k();
    }
}
