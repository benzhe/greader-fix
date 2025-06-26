package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import defpackage.bx;
import defpackage.ep3;
import defpackage.is0;
import defpackage.or0;
import defpackage.vq3;
import defpackage.ww0;
import defpackage.xl0;
import defpackage.xw0;
import defpackage.xx0;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class zzr {
    public zzr() {
    }

    public static zzr zzdm(int i) {
        return i >= 28 ? new zzac() : i >= 26 ? new zzz() : i >= 24 ? new zzaa() : i >= 21 ? new zzx() : i >= 19 ? new zzy() : i >= 18 ? new zzv() : i >= 17 ? new zzw() : new zzr();
    }

    public static boolean zzzx() {
        int iMyUid = Process.myUid();
        return iMyUid == 0 || iMyUid == 1000;
    }

    public String getDefaultUserAgent(Context context) {
        return "";
    }

    public boolean isAttachedToWindow(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public boolean zza(Activity activity, Configuration configuration) {
        return false;
    }

    public boolean zza(final Context context, final WebSettings webSettings) {
        zzbr.zza(context, new Callable(context, webSettings) { // from class: cx
            public final Context e;
            public final WebSettings f;

            {
                this.e = context;
                this.f = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.e;
                WebSettings webSettings2 = this.f;
                if (context2.getCacheDir() != null) {
                    webSettings2.setAppCachePath(context2.getCacheDir().getAbsolutePath());
                    webSettings2.setAppCacheMaxSize(0L);
                    webSettings2.setAppCacheEnabled(true);
                }
                webSettings2.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                webSettings2.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    public int zzb(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    public void zzbh(Context context) {
    }

    public CookieManager zzbi(Context context) {
        if (zzzx()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            is0.zzc("Failed to obtain CookieManager.", th);
            or0 or0VarZzkz = com.google.android.gms.ads.internal.zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public void zzi(Activity activity) {
    }

    public int zzzv() {
        return 5;
    }

    public ViewGroup.LayoutParams zzzw() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public int zzzy() {
        return 1;
    }

    public long zzzz() {
        return -1L;
    }

    public zzr(bx bxVar) {
    }

    public ww0 zza(xw0 xw0Var, ep3 ep3Var, boolean z) {
        return new xx0(xw0Var, ep3Var, z);
    }

    public Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public vq3 zza(Context context, TelephonyManager telephonyManager) {
        return vq3.ENUM_UNKNOWN;
    }

    public int zza(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    public WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }
}
