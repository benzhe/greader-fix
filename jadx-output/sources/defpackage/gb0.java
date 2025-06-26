package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class gb0 implements kb0<xw0> {
    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            xw0Var2.zzkr();
        } else if ("resume".equals(str)) {
            xw0Var2.zzks();
        }
    }
}
