package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import java.util.Map;

/* loaded from: classes.dex */
public final class ib0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        if (map.keySet().contains(NSSimpleChapters.START)) {
            xw0Var2.p(true);
        }
        if (map.keySet().contains("stop")) {
            xw0Var2.p(false);
        }
    }
}
