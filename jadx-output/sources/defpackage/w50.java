package defpackage;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w50 implements nb3 {
    public w3 a;
    public t3 b;
    public v3 c;
    public z50 d;

    public static boolean c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
            for (int i = 0; i < listQueryIntentActivities.size(); i++) {
                if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i).activityInfo.name)) {
                    return resolveInfoResolveActivity.activityInfo.packageName.equals(c50.D3(context));
                }
            }
        }
        return false;
    }

    @Override // defpackage.nb3
    public final void a() {
        this.b = null;
        this.a = null;
        z50 z50Var = this.d;
        if (z50Var != null) {
            Objects.requireNonNull((xw) z50Var);
        }
    }

    @Override // defpackage.nb3
    public final void b(t3 t3Var) {
        this.b = t3Var;
        Objects.requireNonNull(t3Var);
        try {
            t3Var.a.f3(0L);
        } catch (RemoteException unused) {
        }
        z50 z50Var = this.d;
        if (z50Var != null) {
            xw xwVar = (xw) z50Var;
            w50 w50Var = xwVar.a;
            t3 t3Var2 = w50Var.b;
            if (t3Var2 == null) {
                w50Var.a = null;
            } else if (w50Var.a == null) {
                s3 s3Var = new s3(t3Var2, null);
                w3 w3Var = !t3Var2.a.s4(s3Var) ? null : new w3(t3Var2.a, s3Var, t3Var2.b, null);
                w50Var.a = w3Var;
            }
            w3 w3Var2 = w50Var.a;
            Intent intent = new Intent("android.intent.action.VIEW");
            if (w3Var2 != null) {
                intent.setPackage(w3Var2.c.getPackageName());
                IBinder iBinderAsBinder = w3Var2.b.asBinder();
                PendingIntent pendingIntent = w3Var2.d;
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", iBinderAsBinder);
                if (pendingIntent != null) {
                    bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                }
                intent.putExtras(bundle);
            }
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle2 = new Bundle();
                bundle2.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle2);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            intent.putExtras(new Bundle());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            Context context = xwVar.b;
            intent.setData(xwVar.c);
            Object obj = u7.a;
            context.startActivity(intent, null);
            w50 w50Var2 = xwVar.a;
            Activity activity = (Activity) xwVar.b;
            v3 v3Var = w50Var2.c;
            if (v3Var == null) {
                return;
            }
            activity.unbindService(v3Var);
            w50Var2.b = null;
            w50Var2.a = null;
            w50Var2.c = null;
        }
    }
}
