package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import java.util.Objects;

/* loaded from: classes.dex */
public final class d23 {
    public static final String[] c = {"/aclk", "/pcs/click", "/dbm/clk"};
    public String[] a = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    public ws2 b;

    public d23(ws2 ws2Var) {
        this.b = ws2Var;
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws f13 {
        try {
            return b(uri, this.b.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new f13("Provided Uri is not in a valid state");
        }
    }

    public final Uri b(Uri uri, String str) throws f13 {
        boolean zEquals;
        try {
            Objects.requireNonNull(uri);
            try {
                zEquals = uri.getHost().equals("ad.doubleclick.net");
            } catch (NullPointerException unused) {
                zEquals = false;
            }
            if (zEquals) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new f13("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new f13("Query parameter already exists: ms");
            }
            if (!zEquals) {
                String string = uri.toString();
                int iIndexOf = string.indexOf("&adurl");
                if (iIndexOf == -1) {
                    iIndexOf = string.indexOf("?adurl");
                }
                if (iIndexOf == -1) {
                    return uri.buildUpon().appendQueryParameter("ms", str).build();
                }
                int i = iIndexOf + 1;
                return Uri.parse(string.substring(0, i) + "ms=" + str + "&" + string.substring(i));
            }
            String string2 = uri.toString();
            int iIndexOf2 = string2.indexOf(";adurl");
            if (iIndexOf2 != -1) {
                int i2 = iIndexOf2 + 1;
                return Uri.parse(string2.substring(0, i2) + "dc_ms=" + str + ";" + string2.substring(i2));
            }
            String encodedPath = uri.getEncodedPath();
            int iIndexOf3 = string2.indexOf(encodedPath);
            return Uri.parse(string2.substring(0, encodedPath.length() + iIndexOf3) + ";dc_ms=" + str + ";" + string2.substring(iIndexOf3 + encodedPath.length()));
        } catch (UnsupportedOperationException unused2) {
            throw new f13("Provided Uri is not in a valid state");
        }
    }

    public final boolean c(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            for (String str : this.a) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }
}
