package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.zzj;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class l20 {
    public static volatile t10 a;
    public static final Object b = new Object();
    public static Context c;

    public static t20 a(final String str, final m20 m20Var, final boolean z, boolean z2) {
        t10 u10Var;
        try {
            if (a == null) {
                Objects.requireNonNull(c, "null reference");
                synchronized (b) {
                    if (a == null) {
                        IBinder iBinderC = DynamiteModule.d(c, DynamiteModule.k, "com.google.android.gms.googlecertificates").c("com.google.android.gms.common.GoogleCertificatesImpl");
                        int i = s10.e;
                        if (iBinderC == null) {
                            u10Var = null;
                        } else {
                            IInterface iInterfaceQueryLocalInterface = iBinderC.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                            u10Var = iInterfaceQueryLocalInterface instanceof t10 ? (t10) iInterfaceQueryLocalInterface : new u10(iBinderC);
                        }
                        a = u10Var;
                    }
                }
            }
            Objects.requireNonNull(c, "null reference");
            try {
                return a.N5(new zzj(str, m20Var, z, z2), new y20(c.getPackageManager())) ? t20.d : new v20(new Callable(z, str, m20Var) { // from class: n20
                    public final boolean e;
                    public final String f;
                    public final m20 g;

                    {
                        this.e = z;
                        this.f = str;
                        this.g = m20Var;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        boolean z3 = this.e;
                        String str2 = this.f;
                        m20 m20Var2 = this.g;
                        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", !z3 && l20.a(str2, m20Var2, true, false).a ? "debug cert rejected" : "not whitelisted", str2, e20.a(z10.b("SHA-1").digest(m20Var2.g0())), Boolean.valueOf(z3), "12451009.false");
                    }
                }, null);
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return new t20(false, "module call", e);
            }
        } catch (DynamiteModule.a e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String strValueOf = String.valueOf(e2.getMessage());
            return new t20(false, strValueOf.length() != 0 ? "module init: ".concat(strValueOf) : new String("module init: "), e2);
        }
    }
}
