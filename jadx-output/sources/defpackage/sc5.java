package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import defpackage.ed5;
import defpackage.hd5;
import defpackage.vc5;
import java.util.Objects;

/* loaded from: classes.dex */
public final class sc5 extends rc5 {
    @Override // defpackage.rc5
    public final tc5 a(Context context, String str, ed5.a aVar, ed5.b bVar) {
        String packageName = context.getPackageName();
        String[] strArr = id5.a;
        try {
            return new zc5(context, str, packageName, context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName, aVar, bVar);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalStateException("Cannot retrieve calling Context's PackageInfo", e);
        }
    }

    @Override // defpackage.rc5
    public final vc5 b(Activity activity, tc5 tc5Var, boolean z) throws hd5.a, PackageManager.NameNotFoundException {
        Context contextCreatePackageContext;
        IBinder iBinderT = tc5Var.t();
        Objects.requireNonNull(activity, "null reference");
        Objects.requireNonNull(iBinderT, "null reference");
        String[] strArr = id5.a;
        try {
            contextCreatePackageContext = activity.createPackageContext(id5.a(activity), 3);
        } catch (PackageManager.NameNotFoundException unused) {
            contextCreatePackageContext = null;
        }
        if (contextCreatePackageContext == null) {
            throw new hd5.a("Could not create remote context");
        }
        try {
            IBinder iBinderA = hd5.a(contextCreatePackageContext.getClassLoader().loadClass("com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer"), new gd5(contextCreatePackageContext), new gd5(activity), iBinderT, z);
            int i = vc5.a.e;
            if (iBinderA == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.youtube.player.internal.IEmbeddedPlayer");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof vc5)) ? new vc5.a.C0054a(iBinderA) : (vc5) iInterfaceQueryLocalInterface;
        } catch (ClassNotFoundException e) {
            throw new hd5.a("Unable to find dynamic class ".concat("com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer"), e);
        }
    }
}
