package defpackage;

import com.google.android.gms.ads.internal.util.zzbq;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class za0 implements kb0 {
    public static final kb0 a = new za0();

    /* JADX WARN: Type inference failed for: r3v1, types: [mw0, yx0] */
    @Override // defpackage.kb0
    public final void a(Object obj, Map map) throws NoSuchMethodException, SecurityException {
        ?? r3 = (mw0) obj;
        kb0<xw0> kb0Var = va0.a;
        String str = (String) map.get("u");
        if (str == null) {
            is0.zzez("URL missing from click GMSG.");
        } else {
            new zzbq(((yx0) r3).getContext(), ((fy0) r3).b().e, va0.a(r3, str)).zzyx();
        }
    }
}
