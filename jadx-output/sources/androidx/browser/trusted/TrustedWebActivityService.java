package androidx.browser.trusted;

import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import defpackage.q;
import defpackage.y3;
import defpackage.z3;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class TrustedWebActivityService extends Service {
    public NotificationManager e;
    public int f = -1;
    public final q g = new a();

    public class a extends q {
        public a() {
        }

        public final void Z() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            if (trustedWebActivityService.f == -1) {
                String[] packagesForUid = trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                if (packagesForUid == null) {
                    packagesForUid = new String[0];
                }
                y3 y3VarA = TrustedWebActivityService.this.c().a();
                TrustedWebActivityService.this.getPackageManager();
                if (y3VarA != null && packagesForUid.length > 0) {
                    String str = packagesForUid[0];
                    throw null;
                }
            }
            if (TrustedWebActivityService.this.f != Binder.getCallingUid()) {
                throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
            }
        }
    }

    public static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    public final void b() {
        if (this.e == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    public abstract z3 c();

    public Bundle d() {
        return null;
    }

    public int e() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.g;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.e = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.f = -1;
        return super.onUnbind(intent);
    }
}
