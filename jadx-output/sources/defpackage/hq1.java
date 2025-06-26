package defpackage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class hq1 {
    public final Map<String, iq1> a = new HashMap();

    public final iq1 a(List<String> list) {
        iq1 iq1Var;
        for (String str : list) {
            synchronized (this) {
                iq1Var = this.a.get(str);
            }
            if (iq1Var != null) {
                return iq1Var;
            }
        }
        return null;
    }
}
