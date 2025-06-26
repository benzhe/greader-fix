package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class yp2 {
    public final Context a;
    public final String b;
    public final String c;

    public yp2(Context context, zzbar zzbarVar) {
        this.a = context;
        this.b = context.getPackageName();
        this.c = zzbarVar.e;
    }

    public final void a(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        map.put("app", this.b);
        zzr.zzkv();
        map.put("is_lite_sdk", zzj.zzax(this.a) ? "1" : "0");
        List<String> listC = y40.c();
        if (((Boolean) os3.j.f.a(y40.q4)).booleanValue()) {
            ((ArrayList) listC).addAll(zzr.zzkz().f().zzzg().i);
        }
        map.put("e", TextUtils.join(",", listC));
        map.put("sdkVersion", this.c);
    }
}
