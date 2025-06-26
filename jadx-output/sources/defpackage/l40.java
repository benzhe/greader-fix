package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzbr;

/* loaded from: classes.dex */
public final class l40 {
    public final Context a;

    public l40(Context context) {
        bi.j(context, "Context can not be null");
        this.a = context;
    }

    public final boolean a(Intent intent) {
        bi.j(intent, "Intent can not be null");
        return !this.a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean b() {
        return ((Boolean) zzbr.zza(this.a, new k40())).booleanValue() && i20.a(this.a).a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public final boolean c() {
        return a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
