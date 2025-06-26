package defpackage;

import android.util.Log;

/* loaded from: classes.dex */
public final class o00 {
    public final String a;
    public final String b;

    public o00(String str, String str2) {
        bi.j(str, "log tag cannot be null");
        bi.d(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.a = str;
        if (str2.length() <= 0) {
            this.b = null;
        } else {
            this.b = str2;
        }
    }

    public final boolean a(int i) {
        return Log.isLoggable(this.a, i);
    }

    public final void b(String str, String str2) {
        if (a(3)) {
            String str3 = this.b;
            if (str3 != null) {
                str2 = str3.concat(str2);
            }
            Log.d(str, str2);
        }
    }

    public final void c(String str, String str2, Throwable th) {
        if (a(6)) {
            String str3 = this.b;
            if (str3 != null) {
                str2 = str3.concat(str2);
            }
            Log.e(str, str2, th);
        }
    }
}
