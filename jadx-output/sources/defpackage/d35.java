package defpackage;

import android.net.Uri;
import defpackage.ny;

/* loaded from: classes.dex */
public final class d35 {
    public static final ny.g<or4> a;
    public static final ny.a<or4, Object> b;

    static {
        ny.g<or4> gVar = new ny.g<>();
        a = gVar;
        f35 f35Var = new f35();
        b = f35Var;
        bi.j(f35Var, "Cannot construct an Api with a null ClientBuilder");
        bi.j(gVar, "Cannot construct an Api with a null ClientKey");
    }

    public static Uri a(String str) {
        String strValueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
