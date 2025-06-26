package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.Map;

/* loaded from: classes.dex */
public final class z11 implements v11 {
    public zzf a;

    public z11(zzf zzfVar) {
        this.a = zzfVar;
    }

    @Override // defpackage.v11
    public final void a(Map<String, String> map) {
        this.a.zzat(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
