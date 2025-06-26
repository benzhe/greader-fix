package com.google.android.gms.ads.internal.util;

import android.R;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import defpackage.ep3;
import defpackage.is0;
import defpackage.or0;
import defpackage.ww0;
import defpackage.xl0;
import defpackage.xw0;
import defpackage.zx0;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes.dex */
public class zzx extends zzy {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final ww0 zza(xw0 xw0Var, ep3 ep3Var, boolean z) {
        return new zx0(xw0Var, ep3Var, z);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final CookieManager zzbi(Context context) {
        if (zzr.zzzx()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            is0.zzc("Failed to obtain CookieManager.", th);
            or0 or0VarZzkz = com.google.android.gms.ads.internal.zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzy() {
        return R.style.Theme.Material.Dialog.Alert;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }
}
