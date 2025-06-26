package defpackage;

import android.net.Uri;

/* loaded from: classes.dex */
public final class s64 {
    public static final f4<String, Uri> a = new f4<>();

    public static synchronized Uri a(String str) {
        Uri orDefault;
        f4<String, Uri> f4Var = a;
        orDefault = f4Var.getOrDefault("com.google.android.gms.measurement", null);
        if (orDefault == null) {
            String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
            orDefault = Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
            f4Var.put("com.google.android.gms.measurement", orDefault);
        }
        return orDefault;
    }
}
