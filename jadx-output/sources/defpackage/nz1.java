package defpackage;

import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class nz1 {
    public sk2 c = null;
    public final Map<String, zzvx> b = Collections.synchronizedMap(new HashMap());
    public final List<zzvx> a = Collections.synchronizedList(new ArrayList());

    public final void a(sk2 sk2Var, long j, zzvh zzvhVar) {
        String str = sk2Var.v;
        if (this.b.containsKey(str)) {
            if (this.c == null) {
                this.c = sk2Var;
            }
            zzvx zzvxVar = this.b.get(str);
            zzvxVar.f = j;
            zzvxVar.g = zzvhVar;
        }
    }
}
