package defpackage;

import com.google.android.gms.ads.internal.util.zzbq;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class ya0 implements kb0 {
    public static final kb0 a = new ya0();

    @Override // defpackage.kb0
    public final void a(Object obj, Map map) {
        yx0 yx0Var = (yx0) obj;
        kb0<xw0> kb0Var = va0.a;
        String str = (String) map.get("u");
        if (str == null) {
            is0.zzez("URL missing from httpTrack GMSG.");
        } else {
            new zzbq(yx0Var.getContext(), ((fy0) yx0Var).b().e, str).zzyx();
        }
    }
}
