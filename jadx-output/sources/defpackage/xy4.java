package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class xy4 implements Runnable {
    public final /* synthetic */ sz4 e;

    public xy4(sz4 sz4Var) {
        this.e = sz4Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        v25 v25Var = this.e.n;
        v25Var.a.m().d();
        if (v25Var.c()) {
            if (v25Var.b()) {
                v25Var.a.q().z.b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                v25Var.a.s().A("auto", "_cmpx", bundle);
            } else {
                String strA = v25Var.a.q().z.a();
                if (TextUtils.isEmpty(strA)) {
                    v25Var.a.a().g.a("Cache still valid but referrer not found");
                } else {
                    long jA = ((v25Var.a.q().A.a() / DateUtils.MILLIS_PER_HOUR) - 1) * DateUtils.MILLIS_PER_HOUR;
                    Uri uri = Uri.parse(strA);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str : uri.getQueryParameterNames()) {
                        bundle2.putString(str, uri.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", jA);
                    v25Var.a.s().A((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                v25Var.a.q().z.b(null);
            }
            v25Var.a.q().A.b(0L);
        }
    }
}
