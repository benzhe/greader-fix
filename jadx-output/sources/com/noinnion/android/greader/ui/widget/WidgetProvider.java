package com.noinnion.android.greader.ui.widget;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import defpackage.dy6;
import defpackage.ep6;
import defpackage.on6;
import defpackage.uv6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class WidgetProvider extends ContentProvider {
    public static final Uri e;
    public static final Uri f;
    public static final UriMatcher g;
    public static final String[] h;
    public static Context i;
    public static uv6 j;

    public class a extends ContentObserver {
        public a(WidgetProvider widgetProvider) {
            super(null);
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            Context context = WidgetProvider.i;
            uv6 uv6Var = WidgetLargeProvider.a;
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            ArrayList arrayList = new ArrayList();
            arrayList.add(appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetLargeProvider.class)));
            Iterator it = arrayList.iterator();
            int length = 0;
            while (it.hasNext()) {
                length += ((int[]) it.next()).length;
            }
            int[] iArr = new int[length];
            Iterator it2 = arrayList.iterator();
            int i = 0;
            while (it2.hasNext()) {
                int[] iArr2 = (int[]) it2.next();
                int length2 = iArr2.length;
                int i2 = 0;
                while (i2 < length2) {
                    iArr[i] = iArr2[i2];
                    i2++;
                    i++;
                }
            }
            for (int i3 = 0; i3 < length; i3++) {
                WidgetProvider.b(WidgetProvider.i, iArr[i3]);
            }
        }
    }

    public enum b {
        _id,
        title,
        sub_title,
        image,
        position
    }

    static {
        Uri uri = Uri.parse("content://com.noinnion.android.greader.reader.widget.provider");
        e = uri;
        f = uri.buildUpon().appendEncodedPath("data").build();
        UriMatcher uriMatcher = new UriMatcher(-1);
        g = uriMatcher;
        h = new String[]{"item._id", "item.title", "subscription.title AS sub_title", "item.image"};
        i = null;
        uriMatcher.addURI("com.noinnion.android.greader.reader.widget.provider", "data/*", 0);
        j = null;
    }

    public static uv6 a(Context context) {
        if (j == null) {
            j = new uv6(context);
        }
        return j;
    }

    public static void b(Context context, int i2) {
        context.getContentResolver().notifyChange(f.buildUpon().appendEncodedPath(Integer.toString(i2)).build(), null);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (i != null) {
            return false;
        }
        Context context = getContext();
        i = context;
        context.getContentResolver().registerContentObserver(e, true, new a(this));
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) throws NumberFormatException {
        if (g.match(uri) != 0) {
            throw new IllegalStateException("Unrecognized URI:" + uri);
        }
        List<String> pathSegments = uri.getPathSegments();
        int i2 = Integer.parseInt(pathSegments.get(pathSegments.size() - 1));
        dy6 dy6Var = new dy6(strArr);
        int iF = a(i).f(i2);
        if (iF == 0) {
            iF = 100;
        }
        Cursor cursorS = ep6.s(i, a(i).j(i2), a(i).m(i2), on6.f(i) + " limit " + iF);
        if (cursorS != null) {
            cursorS.moveToFirst();
            while (!cursorS.isAfterLast()) {
                try {
                    Object[] objArr = new Object[strArr.length];
                    long j2 = cursorS.getLong(cursorS.getColumnIndex("_id"));
                    int length = strArr.length;
                    for (int i3 = 0; i3 < length; i3++) {
                        String str3 = strArr[i3];
                        if (strArr[0].equals(str3)) {
                            objArr[i3] = Long.valueOf(j2);
                        } else if (strArr[1].equals(str3)) {
                            objArr[i3] = cursorS.getString(cursorS.getColumnIndex("title"));
                        } else if (strArr[2].equals(str3)) {
                            objArr[i3] = cursorS.getString(cursorS.getColumnIndex(b.sub_title.toString()));
                        }
                    }
                    dy6Var.a(objArr);
                    cursorS.moveToNext();
                } finally {
                    cursorS.close();
                }
            }
        }
        return dy6Var;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
