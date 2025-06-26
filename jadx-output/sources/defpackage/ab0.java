package defpackage;

import com.google.android.gms.ads.internal.overlay.zze;
import java.util.Map;

/* loaded from: classes.dex */
public final class ab0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        if (xw0Var2.z0() != null) {
            xw0Var2.z0().b2();
        }
        zze zzeVarN0 = xw0Var2.n0();
        if (zzeVarN0 != null) {
            zzeVarN0.close();
            return;
        }
        zze zzeVarY0 = xw0Var2.y0();
        if (zzeVarY0 != null) {
            zzeVarY0.close();
        } else {
            is0.zzez("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
