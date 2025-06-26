package com.google.android.gms.ads.internal.util;

import android.content.Context;
import defpackage.aw2;
import defpackage.b80;
import defpackage.cs0;
import defpackage.dn0;
import defpackage.ds0;
import defpackage.eh3;
import defpackage.h31;
import defpackage.im0;
import defpackage.is0;
import defpackage.kw;
import defpackage.lw;
import defpackage.mw;
import defpackage.os3;
import defpackage.pu0;
import defpackage.pu3;
import defpackage.xs0;
import defpackage.y40;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzay {
    public static b80 a;
    public static final Object b = new Object();

    public zzay(Context context) {
        b80 b80Var;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (b) {
            if (a == null) {
                y40.a(context);
                if (((Boolean) os3.j.f.a(y40.t2)).booleanValue()) {
                    b80Var = zzan.zzbl(context);
                } else {
                    b80Var = new b80(new dn0(new h31(context.getApplicationContext())), new im0(new pu0()));
                    b80Var.a();
                }
                a = b80Var;
            }
        }
    }

    public static aw2<pu3> zzeq(String str) {
        xs0 xs0Var = new xs0();
        a.c(new zzbe(str, xs0Var));
        return xs0Var;
    }

    public final aw2<String> zza(int i, String str, Map<String, String> map, byte[] bArr) throws IOException {
        mw mwVar = new mw(null);
        lw lwVar = new lw(str, mwVar);
        ds0 ds0Var = new ds0(null);
        kw kwVar = new kw(i, str, mwVar, lwVar, bArr, map, ds0Var);
        if (ds0.a()) {
            try {
                Map<String, String> headers = kwVar.getHeaders();
                byte[] bArrZzg = kwVar.zzg();
                if (ds0.a()) {
                    ds0Var.c("onNetworkRequest", new cs0(str, "GET", headers, bArrZzg));
                }
            } catch (eh3 e) {
                is0.zzez(e.getMessage());
            }
        }
        a.c(kwVar);
        return mwVar;
    }

    public final aw2<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
