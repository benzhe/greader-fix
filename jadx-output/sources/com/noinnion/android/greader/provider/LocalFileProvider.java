package com.noinnion.android.greader.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import defpackage.iw6;
import defpackage.jo;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes2.dex */
public class LocalFileProvider extends ContentProvider {
    public static File a(String str, String str2) {
        String lastPathSegment = Uri.parse(str2).getLastPathSegment();
        if (str == null) {
            str = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return new File(jo.o(str, "/gReader/.image-cache/", lastPathSegment));
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        String lastPathSegment = uri.getLastPathSegment();
        String strC = iw6.C(getContext());
        if (strC == null) {
            strC = Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return ParcelFileDescriptor.open(new File(jo.o(strC, "/gReader/.image-cache/", lastPathSegment)), 268435456);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }
}
