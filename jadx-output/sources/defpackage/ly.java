package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;
import java.util.Objects;

/* loaded from: classes.dex */
public class ly {
    public static ly b;
    public final Context a;

    public ly(Context context) {
        this.a = context.getApplicationContext();
    }

    public static ly a(Context context) {
        Objects.requireNonNull(context, "null reference");
        synchronized (ly.class) {
            if (b == null) {
                t10 t10Var = l20.a;
                synchronized (l20.class) {
                    if (l20.c == null) {
                        l20.c = context.getApplicationContext();
                    } else {
                        Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                    }
                }
                b = new ly(context);
            }
        }
        return b;
    }

    public static m20 c(PackageInfo packageInfo, m20... m20VarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        p20 p20Var = new p20(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < m20VarArr.length; i++) {
            if (m20VarArr[i].equals(p20Var)) {
                return m20VarArr[i];
            }
        }
        return null;
    }

    public static boolean d(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? c(packageInfo, r20.a) : c(packageInfo, r20.a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(int r11) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ly.b(int):boolean");
    }
}
