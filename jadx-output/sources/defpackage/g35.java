package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class g35 {
    public static final gy a = gy.b;
    public static final Object b = new Object();
    public static Method c;

    public static void a(Context context) throws iy, hy {
        Context contextA;
        bi.j(context, "Context must not be null");
        Objects.requireNonNull(a);
        boolean z = ky.a;
        gy gyVar = gy.b;
        int iD = gyVar.d(context, 11925000);
        if (iD != 0) {
            Intent intentB = gyVar.b(context, iD, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(iD);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (intentB != null) {
                throw new iy(iD, "Google Play Services not available", intentB);
            }
            throw new hy(iD);
        }
        try {
            contextA = DynamiteModule.d(context, DynamiteModule.k, "providerinstaller").a;
        } catch (DynamiteModule.a e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.w("ProviderInstaller", strValueOf.length() != 0 ? "Failed to load providerinstaller module: ".concat(strValueOf) : new String("Failed to load providerinstaller module: "));
            contextA = null;
        }
        if (contextA == null) {
            try {
                contextA = ky.a(context);
            } catch (Resources.NotFoundException e2) {
                String strValueOf2 = String.valueOf(e2.getMessage());
                Log.w("ProviderInstaller", strValueOf2.length() != 0 ? "Failed to load GMS Core context for providerinstaller: ".concat(strValueOf2) : new String("Failed to load GMS Core context for providerinstaller: "));
                c20.a(context, e2);
                contextA = null;
            }
        }
        if (contextA == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new hy(8);
        }
        synchronized (b) {
            try {
                try {
                    if (c == null) {
                        c = contextA.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                    }
                    c.invoke(null, contextA);
                } catch (Exception e3) {
                    Throwable cause = e3.getCause();
                    if (Log.isLoggable("ProviderInstaller", 6)) {
                        String strValueOf3 = String.valueOf(cause == null ? e3.getMessage() : cause.getMessage());
                        Log.e("ProviderInstaller", strValueOf3.length() != 0 ? "Failed to install provider: ".concat(strValueOf3) : new String("Failed to install provider: "));
                    }
                    throw new hy(8);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
