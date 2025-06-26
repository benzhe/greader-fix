package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class j48 implements z38 {
    public boolean a = false;
    public final Map<String, i48> b = new HashMap();
    public final LinkedBlockingQueue<e48> c = new LinkedBlockingQueue<>();

    @Override // defpackage.z38
    public synchronized a48 a(String str) {
        i48 i48Var;
        i48Var = this.b.get(str);
        if (i48Var == null) {
            i48Var = new i48(str, this.c, this.a);
            this.b.put(str, i48Var);
        }
        return i48Var;
    }
}
