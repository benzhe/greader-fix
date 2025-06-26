package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import defpackage.cq0;

/* loaded from: classes.dex */
public final class zp0 implements em3 {
    public final Context e;
    public final Object f;
    public String g;
    public boolean h;

    public zp0(Context context, String str) {
        this.e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.g = str;
        this.h = false;
        this.f = new Object();
    }

    @Override // defpackage.em3
    public final void c0(fm3 fm3Var) {
        d(fm3Var.j);
    }

    public final void d(boolean z) {
        if (zzr.zzlt().h(this.e)) {
            synchronized (this.f) {
                if (this.h == z) {
                    return;
                }
                this.h = z;
                if (TextUtils.isEmpty(this.g)) {
                    return;
                }
                if (this.h) {
                    cq0 cq0VarZzlt = zzr.zzlt();
                    Context context = this.e;
                    final String str = this.g;
                    if (cq0VarZzlt.h(context)) {
                        if (cq0.i(context)) {
                            cq0VarZzlt.f("beginAdUnitExposure", new cq0.a(str) { // from class: hq0
                                public final String a;

                                {
                                    this.a = str;
                                }

                                @Override // cq0.a
                                public final void a(ny0 ny0Var) throws RemoteException {
                                    ny0Var.C5(this.a);
                                }
                            });
                        } else {
                            cq0VarZzlt.c(context, str, "beginAdUnitExposure");
                        }
                    }
                } else {
                    cq0 cq0VarZzlt2 = zzr.zzlt();
                    Context context2 = this.e;
                    final String str2 = this.g;
                    if (cq0VarZzlt2.h(context2)) {
                        if (cq0.i(context2)) {
                            cq0VarZzlt2.f("endAdUnitExposure", new cq0.a(str2) { // from class: kq0
                                public final String a;

                                {
                                    this.a = str2;
                                }

                                @Override // cq0.a
                                public final void a(ny0 ny0Var) throws RemoteException {
                                    ny0Var.K6(this.a);
                                }
                            });
                        } else {
                            cq0VarZzlt2.c(context2, str2, "endAdUnitExposure");
                        }
                    }
                }
            }
        }
    }
}
