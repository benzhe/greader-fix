package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class qp2 {
    public final HashMap<String, String> a = new HashMap<>();
    public final up2 b = new up2(zzr.zzlc());

    public static qp2 c(String str) {
        qp2 qp2Var = new qp2();
        qp2Var.a.put("action", str);
        return qp2Var;
    }

    public final qp2 a(hl2 hl2Var, xr0 xr0Var) {
        fl2 fl2Var = hl2Var.b;
        if (fl2Var == null) {
            return this;
        }
        wk2 wk2Var = fl2Var.b;
        if (wk2Var != null) {
            b(wk2Var);
        }
        if (!fl2Var.a.isEmpty()) {
            switch (fl2Var.a.get(0).b) {
                case 1:
                    this.a.put("ad_format", "banner");
                    break;
                case 2:
                    this.a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.a.put("ad_format", "app_open_ad");
                    if (xr0Var != null) {
                        this.a.put("as", xr0Var.g ? "1" : "0");
                        break;
                    }
                    break;
                default:
                    this.a.put("ad_format", "unknown");
                    break;
            }
        }
        return this;
    }

    public final qp2 b(wk2 wk2Var) {
        if (!TextUtils.isEmpty(wk2Var.b)) {
            this.a.put("gqi", wk2Var.b);
        }
        return this;
    }

    public final qp2 d(String str) {
        up2 up2Var = this.b;
        if (up2Var.c.containsKey(str)) {
            long jB = up2Var.a.b() - up2Var.c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(20);
            sb.append(jB);
            up2Var.a(str, sb.toString());
        } else {
            up2Var.c.put(str, Long.valueOf(up2Var.a.b()));
        }
        return this;
    }

    public final Map<String, String> e() {
        HashMap map = new HashMap(this.a);
        up2 up2Var = this.b;
        Objects.requireNonNull(up2Var);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : up2Var.b.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new xp2(sb.toString(), str));
                }
            } else {
                arrayList.add(new xp2(entry.getKey(), entry.getValue().get(0)));
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            xp2 xp2Var = (xp2) it.next();
            map.put(xp2Var.a, xp2Var.b);
        }
        return map;
    }

    public final qp2 f(String str, String str2) {
        up2 up2Var = this.b;
        if (up2Var.c.containsKey(str)) {
            long jB = up2Var.a.b() - up2Var.c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(str2.length() + 20);
            sb.append(str2);
            sb.append(jB);
            up2Var.a(str, sb.toString());
        } else {
            up2Var.c.put(str, Long.valueOf(up2Var.a.b()));
        }
        return this;
    }
}
