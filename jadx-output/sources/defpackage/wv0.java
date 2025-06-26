package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class wv0 implements Iterable<uv0> {
    public final List<uv0> e = new ArrayList();

    public static boolean d(iu0 iu0Var) {
        uv0 uv0VarH = h(iu0Var);
        if (uv0VarH == null) {
            return false;
        }
        uv0VarH.c.a();
        return true;
    }

    public static uv0 h(iu0 iu0Var) {
        Iterator<uv0> it = zzr.zzlr().iterator();
        while (it.hasNext()) {
            uv0 next = it.next();
            if (next.b == iu0Var) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<uv0> iterator() {
        return this.e.iterator();
    }
}
