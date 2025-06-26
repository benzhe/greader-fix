package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.util.Log;

/* loaded from: classes.dex */
public final class r64 {
    public static volatile e74<Boolean> a = d74.e;
    public static final Object b = new Object();

    public static boolean a(Context context, Uri uri) {
        ProviderInfo providerInfoResolveContentProvider;
        String authority = uri.getAuthority();
        boolean z = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            StringBuilder sb = new StringBuilder(String.valueOf(authority).length() + 91);
            sb.append(authority);
            sb.append(" is an unsupported authority. Only ");
            sb.append("com.google.android.gms.phenotype");
            sb.append(" authority is supported.");
            Log.e("PhenotypeClientHelper", sb.toString());
            return false;
        }
        if (a.a()) {
            return a.b().booleanValue();
        }
        synchronized (b) {
            if (a.a()) {
                return a.b().booleanValue();
            }
            if ("com.google.android.gms".equals(context.getPackageName()) || ((providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 0)) != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName))) {
                try {
                    if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                        z = true;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            a = new f74(Boolean.valueOf(z));
            return a.b().booleanValue();
        }
    }
}
