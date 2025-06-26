package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import defpackage.ny;
import defpackage.qy;
import defpackage.zy;
import java.util.Set;

/* loaded from: classes.dex */
public final class tz extends k35 implements qy.a, qy.b {
    public static ny.a<? extends u35, h35> l = r35.c;
    public final Context e;
    public final Handler f;
    public final ny.a<? extends u35, h35> g;
    public Set<Scope> h;
    public j00 i;
    public u35 j;
    public wz k;

    public tz(Context context, Handler handler, j00 j00Var) {
        ny.a<? extends u35, h35> aVar = l;
        this.e = context;
        this.f = handler;
        bi.j(j00Var, "ClientSettings must not be null");
        this.i = j00Var;
        this.h = j00Var.b;
        this.g = aVar;
    }

    @Override // qy.a
    public final void Z(int i) {
        this.j.disconnect();
    }

    @Override // qy.b
    public final void g0(ConnectionResult connectionResult) {
        ((zy.c) this.k).b(connectionResult);
    }

    @Override // qy.a
    public final void l0(Bundle bundle) {
        this.j.a(this);
    }
}
