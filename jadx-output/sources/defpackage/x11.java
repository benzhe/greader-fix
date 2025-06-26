package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;

/* loaded from: classes.dex */
public final class x11 implements v11 {
    public zzf a;

    public x11(zzf zzfVar) {
        this.a = zzfVar;
    }

    @Override // defpackage.v11
    public final void a(Map<String, String> map) {
        this.a.zzas(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
