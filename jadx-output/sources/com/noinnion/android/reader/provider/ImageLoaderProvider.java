package com.noinnion.android.reader.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import defpackage.gy6;
import defpackage.hz6;
import defpackage.jo;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes2.dex */
public class ImageLoaderProvider extends ContentProvider {
    public static final /* synthetic */ int e = 0;

    public static String a(String str, String str2) {
        return "content://" + str + "/" + str2;
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
    public ParcelFileDescriptor openFile(Uri uri, String str) throws Throwable {
        String strReplace;
        if (uri == null) {
            strReplace = null;
        } else {
            strReplace = uri.toString().replace("content://", "");
            int iIndexOf = strReplace.indexOf("/");
            if (iIndexOf > -1) {
                strReplace = strReplace.substring(iIndexOf + 1);
            }
        }
        byte[] bArrA = gy6.a(strReplace);
        if (bArrA != null) {
            strReplace = new String(bArrA);
        }
        File fileA = hz6.j().i().a(strReplace);
        if (fileA != null) {
            return ParcelFileDescriptor.open(fileA, 268435456);
        }
        throw new FileNotFoundException(jo.n("File not found for ", strReplace));
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
