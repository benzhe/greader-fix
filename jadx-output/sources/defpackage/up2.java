package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class up2 {
    public final b20 a;
    public final Map<String, List<String>> b = new HashMap();
    public final Map<String, Long> c = new HashMap();

    public up2(b20 b20Var) {
        this.a = b20Var;
    }

    public final void a(String str, String str2) {
        if (!this.b.containsKey(str)) {
            this.b.put(str, new ArrayList());
        }
        this.b.get(str).add(str2);
    }
}
