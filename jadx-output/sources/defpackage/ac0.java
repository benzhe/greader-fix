package defpackage;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzavy;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Map;

/* loaded from: classes.dex */
public final class ac0 implements kb0<Object> {
    public final zb0 a;

    public ac0(zb0 zb0Var) {
        this.a = zb0Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) throws NumberFormatException {
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.a.x0();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.a.q0();
                    return;
                }
                return;
            }
        }
        zzavy zzavyVar = null;
        try {
            int i = Integer.parseInt(map.get("amount"));
            String str2 = map.get(NSRSS20.ENC_TYPE);
            if (!TextUtils.isEmpty(str2)) {
                zzavyVar = new zzavy(str2, i);
            }
        } catch (NumberFormatException e) {
            is0.zzd("Unable to parse reward amount.", e);
        }
        this.a.x(zzavyVar);
    }
}
