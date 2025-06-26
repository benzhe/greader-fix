package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class bb0 implements kb0 {
    public static final kb0 a = new bb0();

    @Override // defpackage.kb0
    public final void a(Object obj, Map map) throws NumberFormatException {
        dy0 dy0Var = (dy0) obj;
        kb0<xw0> kb0Var = va0.a;
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int i = Integer.parseInt(str);
            int i2 = Integer.parseInt(str2);
            int i3 = Integer.parseInt(str3);
            d23 d23VarL = dy0Var.l();
            if (d23VarL != null) {
                d23VarL.b.zza(i, i2, i3);
            }
        } catch (NumberFormatException unused) {
            is0.zzez("Could not parse touch parameters from gmsg.");
        }
    }
}
