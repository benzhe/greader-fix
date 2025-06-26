package com.google.android.gms.ads.internal.util;

import android.content.Context;
import defpackage.b80;
import defpackage.dn0;
import defpackage.ic0;
import defpackage.im0;
import defpackage.j40;
import defpackage.os3;
import defpackage.pu0;
import defpackage.pu3;
import defpackage.tj0;
import defpackage.uh0;
import defpackage.y40;
import defpackage.zr0;
import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzan extends im0 {
    public final Context c;

    public zzan(Context context, tj0 tj0Var) {
        super(tj0Var);
        this.c = context;
    }

    public static b80 zzbl(Context context) {
        b80 b80Var = new b80(new dn0(new File(context.getCacheDir(), "admob_volley")), new zzan(context, new pu0()));
        b80Var.a();
        return b80Var;
    }

    @Override // defpackage.im0, defpackage.fp3
    public final pu3 zza(j40<?> j40Var) throws uh0 {
        if (j40Var.zzh() && j40Var.getMethod() == 0) {
            if (Pattern.matches((String) os3.j.f.a(y40.u2), j40Var.getUrl())) {
                zr0 zr0Var = os3.j.a;
                if (zr0.n(this.c, 13400000)) {
                    pu3 pu3VarZza = new ic0(this.c).zza(j40Var);
                    if (pu3VarZza != null) {
                        String strValueOf = String.valueOf(j40Var.getUrl());
                        zzd.zzed(strValueOf.length() != 0 ? "Got gmscore asset response: ".concat(strValueOf) : new String("Got gmscore asset response: "));
                        return pu3VarZza;
                    }
                    String strValueOf2 = String.valueOf(j40Var.getUrl());
                    zzd.zzed(strValueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(strValueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(j40Var);
    }
}
