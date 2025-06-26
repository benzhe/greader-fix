package com.google.android.gms.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzzx;
import java.util.Objects;

/* loaded from: classes.dex */
public class MobileAdsInitProvider extends ContentProvider {
    public final zzzx e = new zzzx();

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        this.e.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        Objects.requireNonNull(this.e);
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Objects.requireNonNull(this.e);
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Objects.requireNonNull(this.e);
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Objects.requireNonNull(this.e);
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Objects.requireNonNull(this.e);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        Objects.requireNonNull(this.e);
        return 0;
    }
}
