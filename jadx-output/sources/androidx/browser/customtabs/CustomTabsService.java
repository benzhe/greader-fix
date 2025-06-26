package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsService;
import defpackage.m;
import defpackage.m4;
import defpackage.n;
import defpackage.x3;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class CustomTabsService extends Service {
    public final m4<IBinder, IBinder.DeathRecipient> e = new m4<>();
    public n.a f = new a();

    public class a extends n.a {
        public a() {
        }

        public final PendingIntent Z(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        @Override // defpackage.n
        public boolean f3(long j) {
            return CustomTabsService.this.i(j);
        }

        public final boolean g0(m mVar, PendingIntent pendingIntent) {
            final x3 x3Var = new x3(mVar, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: p3
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        CustomTabsService.a aVar = this.a;
                        x3 x3Var2 = x3Var;
                        CustomTabsService customTabsService = CustomTabsService.this;
                        Objects.requireNonNull(customTabsService);
                        try {
                            synchronized (customTabsService.e) {
                                m mVar2 = x3Var2.a;
                                IBinder iBinderAsBinder = mVar2 == null ? null : mVar2.asBinder();
                                if (iBinderAsBinder == null) {
                                    return;
                                }
                                iBinderAsBinder.unlinkToDeath(customTabsService.e.getOrDefault(iBinderAsBinder, null), 0);
                                customTabsService.e.remove(iBinderAsBinder);
                            }
                        } catch (NoSuchElementException unused) {
                        }
                    }
                };
                synchronized (CustomTabsService.this.e) {
                    mVar.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.e.put(mVar.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.c(x3Var);
            } catch (RemoteException unused) {
                return false;
            }
        }

        public boolean l0(m mVar, Bundle bundle) {
            return g0(mVar, Z(bundle));
        }

        @Override // defpackage.n
        public boolean s4(m mVar) {
            return g0(mVar, null);
        }
    }

    public abstract Bundle a(String str, Bundle bundle);

    public abstract boolean b(x3 x3Var, Uri uri, Bundle bundle, List<Bundle> list);

    public abstract boolean c(x3 x3Var);

    public abstract int d(x3 x3Var, String str, Bundle bundle);

    public abstract boolean e(x3 x3Var, Uri uri, int i, Bundle bundle);

    public abstract boolean f(x3 x3Var, Uri uri);

    public abstract boolean g(x3 x3Var, Bundle bundle);

    public abstract boolean h(x3 x3Var, int i, Uri uri, Bundle bundle);

    public abstract boolean i(long j);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f;
    }
}
