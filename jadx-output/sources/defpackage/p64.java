package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import defpackage.d0;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class p64 implements m64 {
    public static p64 c;
    public final Context a;
    public final ContentObserver b;

    public p64() {
        this.a = null;
        this.b = null;
    }

    public p64(Context context) {
        this.a = context;
        o64 o64Var = new o64();
        this.b = o64Var;
        context.getContentResolver().registerContentObserver(e64.a, true, o64Var);
    }

    public static p64 b(Context context) {
        p64 p64Var;
        synchronized (p64.class) {
            if (c == null) {
                c = d0.h.j(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new p64(context) : new p64();
            }
            p64Var = c;
        }
        return p64Var;
    }

    @Override // defpackage.m64
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String a(final String str) {
        if (this.a == null) {
            return null;
        }
        try {
            return (String) c50.E1(new l64(this, str) { // from class: n64
                public final p64 a;
                public final String b;

                {
                    this.a = this;
                    this.b = str;
                }

                @Override // defpackage.l64
                public final Object a() {
                    String str2;
                    p64 p64Var = this.a;
                    String str3 = this.b;
                    ContentResolver contentResolver = p64Var.a.getContentResolver();
                    Uri uri = e64.a;
                    synchronized (e64.class) {
                        if (e64.f == null) {
                            e64.e.set(false);
                            e64.f = new HashMap<>();
                            e64.k = new Object();
                            contentResolver.registerContentObserver(e64.a, true, new d64());
                        } else if (e64.e.getAndSet(false)) {
                            e64.f.clear();
                            e64.g.clear();
                            e64.h.clear();
                            e64.i.clear();
                            e64.j.clear();
                            e64.k = new Object();
                        }
                        Object obj = e64.k;
                        str2 = null;
                        if (e64.f.containsKey(str3)) {
                            String str4 = e64.f.get(str3);
                            if (str4 != null) {
                                str2 = str4;
                            }
                        } else {
                            int length = e64.l.length;
                            Cursor cursorQuery = contentResolver.query(e64.a, null, null, new String[]{str3}, null);
                            if (cursorQuery != null) {
                                try {
                                    if (cursorQuery.moveToFirst()) {
                                        String string = cursorQuery.getString(1);
                                        if (string != null && string.equals(null)) {
                                            string = null;
                                        }
                                        e64.a(obj, str3, string);
                                        if (string != null) {
                                            str2 = string;
                                        }
                                    } else {
                                        e64.a(obj, str3, null);
                                    }
                                } finally {
                                    cursorQuery.close();
                                }
                            }
                        }
                    }
                    return str2;
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String strValueOf = String.valueOf(str);
            Log.e("GservicesLoader", strValueOf.length() != 0 ? "Unable to read GServices for: ".concat(strValueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
