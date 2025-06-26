package com.google.android.gms.ads.internal.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import defpackage.ky;
import defpackage.ow;

/* loaded from: classes.dex */
public class zzw extends zzr {
    public zzw() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final String getDefaultUserAgent(Context context) {
        zzbu zzbuVarZzaak = zzbu.zzaak();
        if (TextUtils.isEmpty(zzbuVarZzaak.a)) {
            zzbuVarZzaak.a = (String) zzbr.zza(context, new ow(ky.a(context), context));
        }
        return zzbuVarZzaak.a;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final boolean zza(Context context, WebSettings webSettings) {
        super.zza(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzb(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final void zzbh(Context context) {
        zzbu zzbuVarZzaak = zzbu.zzaak();
        zzd.zzed("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(zzbuVarZzaak.a)) {
            Context contextA = ky.a(context);
            if (contextA == null) {
                SharedPreferences.Editor editorPutString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (contextA != null) {
                    throw new IllegalStateException("world-readable shared preferences should only be used by apk");
                }
                editorPutString.apply();
            }
            zzbuVarZzaak.a = defaultUserAgent;
        }
        zzd.zzed("User agent is updated.");
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        if (z && f > 0.0f && f <= 25.0f) {
            try {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
                RenderScript renderScriptCreate = RenderScript.create(context);
                ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
                Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                scriptIntrinsicBlurCreate.setRadius(f);
                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
                allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
                return new BitmapDrawable(context.getResources(), bitmapCreateBitmap);
            } catch (RuntimeException unused) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        }
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zza(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }
}
