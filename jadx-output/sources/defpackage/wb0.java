package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class wb0 {
    public final Context a;
    public final d23 b;
    public final View c;

    public wb0(Context context, d23 d23Var, View view) {
        this.a = context;
        this.b = d23Var;
        this.c = view;
    }

    public static Intent a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    public static Intent c(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    public final ResolveInfo b(Intent intent, ArrayList<ResolveInfo> arrayList) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = this.a.getPackageManager();
        } catch (Throwable th) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
        if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
            int i = 0;
            while (true) {
                if (i >= listQueryIntentActivities.size()) {
                    break;
                }
                if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i).activityInfo.name)) {
                    resolveInfo = resolveInfoResolveActivity;
                    break;
                }
                i++;
            }
        }
        arrayList.addAll(listQueryIntentActivities);
        return resolveInfo;
    }
}
