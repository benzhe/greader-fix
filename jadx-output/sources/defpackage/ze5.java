package defpackage;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ze5 {
    public final Map<String, ye5> a = new HashMap();
    public final Context b;
    public final bf5 c;

    public ze5(Context context, bf5 bf5Var) {
        this.b = context;
        this.c = bf5Var;
    }

    public synchronized ye5 a(String str) {
        if (!this.a.containsKey(str)) {
            this.a.put(str, new ye5(this.c, str));
        }
        return this.a.get(str);
    }
}
