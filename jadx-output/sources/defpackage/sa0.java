package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class sa0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get("value");
                if (TextUtils.isEmpty(str2)) {
                    is0.zzez("No value given for CSI experiment.");
                    return;
                }
                o50 o50Var = xw0Var2.i().b;
                if (o50Var == null) {
                    is0.zzez("No ticker for WebView, dropping experiment ID.");
                    return;
                } else {
                    o50Var.b("e", str2);
                    return;
                }
            }
            if ("extra".equals(str)) {
                String str3 = (String) map.get(InetAddressKeys.KEY_NAME);
                String str4 = (String) map.get("value");
                if (TextUtils.isEmpty(str4)) {
                    is0.zzez("No value given for CSI extra.");
                    return;
                }
                if (TextUtils.isEmpty(str3)) {
                    is0.zzez("No name given for CSI extra.");
                    return;
                }
                o50 o50Var2 = xw0Var2.i().b;
                if (o50Var2 == null) {
                    is0.zzez("No ticker for WebView, dropping extra parameter.");
                    return;
                } else {
                    o50Var2.b(str3, str4);
                    return;
                }
            }
            return;
        }
        String str5 = (String) map.get("label");
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            is0.zzez("No label given for CSI tick.");
            return;
        }
        if (TextUtils.isEmpty(str7)) {
            is0.zzez("No timestamp given for CSI tick.");
            return;
        }
        try {
            long j = (Long.parseLong(str7) - zzr.zzlc().a()) + zzr.zzlc().b();
            if (TextUtils.isEmpty(str6)) {
                str6 = "native:view_load";
            }
            l50 l50VarI = xw0Var2.i();
            o50 o50Var3 = l50VarI.b;
            m50 m50Var = l50VarI.a.get(str6);
            String[] strArr = {str5};
            if (o50Var3 != null && m50Var != null) {
                o50Var3.a(m50Var, j, strArr);
            }
            Map<String, m50> map2 = l50VarI.a;
            o50 o50Var4 = l50VarI.b;
            m50 m50Var2 = null;
            if (o50Var4 != null && o50Var4.a) {
                m50Var2 = new m50(j, null, null);
            }
            map2.put(str5, m50Var2);
        } catch (NumberFormatException e) {
            is0.zzd("Malformed timestamp for CSI tick.", e);
        }
    }
}
