package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzatu;
import defpackage.np0;
import java.util.List;

/* loaded from: classes.dex */
public final class zza {
    public final Context a;
    public boolean b;
    public np0 c;
    public zzatu d;

    public zza(Context context, np0 np0Var, zzatu zzatuVar) {
        this.a = context;
        this.c = np0Var;
        this.d = null;
        if (0 == 0) {
            this.d = new zzatu();
        }
    }

    public final boolean a() {
        np0 np0Var = this.c;
        return (np0Var != null && np0Var.g().j) || this.d.e;
    }

    public final void recordClick() {
        this.b = true;
    }

    public final void zzbk(String str) {
        List<String> list;
        if (a()) {
            if (str == null) {
                str = "";
            }
            np0 np0Var = this.c;
            if (np0Var != null) {
                np0Var.c(str, null, 3);
                return;
            }
            zzatu zzatuVar = this.d;
            if (!zzatuVar.e || (list = zzatuVar.f) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzr.zzkv();
                    com.google.android.gms.ads.internal.util.zzj.zzb(this.a, "", strReplace);
                }
            }
        }
    }

    public final boolean zzkc() {
        return !a() || this.b;
    }
}
