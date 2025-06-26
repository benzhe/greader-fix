package defpackage;

import android.content.Context;
import android.os.StrictMode;
import defpackage.l4;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c74 implements m64 {
    public static final Map<String, c74> a = new f4();

    public static c74 b(Context context, String str) {
        c74 c74Var;
        if (f64.a()) {
            throw null;
        }
        synchronized (c74.class) {
            c74Var = (c74) ((m4) a).get(null);
            if (c74Var == null) {
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    throw null;
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th;
                }
            }
        }
        return c74Var;
    }

    public static synchronized void c() {
        Object obj = a;
        Iterator it = ((l4.e) ((f4) obj).values()).iterator();
        if (it.hasNext()) {
            Objects.requireNonNull((c74) it.next());
            throw null;
        }
        ((m4) obj).clear();
    }

    @Override // defpackage.m64
    public final Object a(String str) {
        throw null;
    }
}
