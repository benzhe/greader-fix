package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import java.util.Map;

/* loaded from: classes.dex */
public final class jb0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        if (map.keySet().contains(NSSimpleChapters.START)) {
            ww0 ww0Var = (ww0) xw0Var2.I();
            synchronized (ww0Var.h) {
            }
            ww0Var.z++;
            ww0Var.Q();
            return;
        }
        if (map.keySet().contains("stop")) {
            r4.z--;
            ((ww0) xw0Var2.I()).Q();
        } else if (map.keySet().contains("cancel")) {
            ww0 ww0Var2 = (ww0) xw0Var2.I();
            ep3 ep3Var = ww0Var2.f;
            if (ep3Var != null) {
                ep3Var.b(gp3.DELAY_PAGE_LOAD_CANCELLED_AD);
            }
            ww0Var2.y = true;
            ww0Var2.Q();
            ww0Var2.e.destroy();
        }
    }
}
