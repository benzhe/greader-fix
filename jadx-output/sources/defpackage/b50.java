package defpackage;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class b50 {
    public String a = k60.b.a();
    public Map<String, String> b;
    public Context c;
    public String d;

    /* JADX WARN: Multi-variable type inference failed */
    public b50(Context context, String str) {
        this.c = null;
        this.d = null;
        this.c = context;
        this.d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        this.b.put("v", "3");
        this.b.put("os", Build.VERSION.RELEASE);
        this.b.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.b;
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        this.b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.b;
        zzr.zzkv();
        map2.put("is_lite_sdk", zzj.zzax(context) ? "1" : "0");
        tm0 tm0VarZzlg = zzr.zzlg();
        Context context2 = this.c;
        Objects.requireNonNull(tm0VarZzlg);
        aw2 aw2VarY = ms0.a.y(new wm0(tm0VarZzlg, context2));
        try {
            this.b.put("network_coarse", Integer.toString(((rm0) aw2VarY.get()).j));
            this.b.put("network_fine", Integer.toString(((rm0) aw2VarY.get()).k));
        } catch (Exception e) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "CsiConfiguration.CsiConfiguration");
        }
    }
}
