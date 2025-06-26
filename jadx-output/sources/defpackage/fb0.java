package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class fb0 implements kb0<Object> {
    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        String strValueOf = String.valueOf(map.get("string"));
        is0.zzey(strValueOf.length() != 0 ? "Received log message: ".concat(strValueOf) : new String("Received log message: "));
    }
}
