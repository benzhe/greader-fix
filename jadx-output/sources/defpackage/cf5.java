package defpackage;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import defpackage.bf5;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class cf5 implements bf5 {
    public static volatile bf5 c;
    public final xr4 a;
    public final Map<String, df5> b;

    public class a implements bf5.a {
        public final /* synthetic */ String a;

        public a(String str) {
            this.a = str;
        }

        @Override // bf5.a
        public void a(Set<String> set) {
            if (cf5.this.g(this.a) && this.a.equals("fiam") && !set.isEmpty()) {
                cf5.this.b.get(this.a).a(set);
            }
        }
    }

    public cf5(xr4 xr4Var) {
        Objects.requireNonNull(xr4Var, "null reference");
        this.a = xr4Var;
        this.b = new ConcurrentHashMap();
    }

    @Override // defpackage.bf5
    public void W(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (ff5.a(str) && ff5.b(str2, bundle) && ff5.d(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.a.a.h(str, str2, bundle);
        }
    }

    @Override // defpackage.bf5
    @RecentlyNonNull
    public Map<String, Object> a(boolean z) {
        return this.a.a.a(null, null, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b3  */
    @Override // defpackage.bf5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(@androidx.annotation.RecentlyNonNull bf5.c r7) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cf5.b(bf5$c):void");
    }

    @Override // defpackage.bf5
    public int c(@RecentlyNonNull String str) {
        return this.a.a.c(str);
    }

    @Override // defpackage.bf5
    public void clearConditionalUserProperty(@RecentlyNonNull String str, String str2, Bundle bundle) {
        q34 q34Var = this.a.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new l24(q34Var, str, null, null));
    }

    @Override // defpackage.bf5
    @RecentlyNonNull
    public List<bf5.c> d(@RecentlyNonNull String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.a.a.j(str, str2)) {
            Set<String> set = ff5.a;
            Objects.requireNonNull(bundle, "null reference");
            bf5.c cVar = new bf5.c();
            cVar.a = (String) c50.W2(bundle, "origin", String.class, null);
            cVar.b = (String) c50.W2(bundle, InetAddressKeys.KEY_NAME, String.class, null);
            cVar.c = c50.W2(bundle, "value", Object.class, null);
            cVar.d = (String) c50.W2(bundle, "trigger_event_name", String.class, null);
            cVar.e = ((Long) c50.W2(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            cVar.f = (String) c50.W2(bundle, "timed_out_event_name", String.class, null);
            cVar.g = (Bundle) c50.W2(bundle, "timed_out_event_params", Bundle.class, null);
            cVar.h = (String) c50.W2(bundle, "triggered_event_name", String.class, null);
            cVar.i = (Bundle) c50.W2(bundle, "triggered_event_params", Bundle.class, null);
            cVar.j = ((Long) c50.W2(bundle, "time_to_live", Long.class, 0L)).longValue();
            cVar.k = (String) c50.W2(bundle, "expired_event_name", String.class, null);
            cVar.l = (Bundle) c50.W2(bundle, "expired_event_params", Bundle.class, null);
            cVar.n = ((Boolean) c50.W2(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            cVar.m = ((Long) c50.W2(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            cVar.o = ((Long) c50.W2(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(cVar);
        }
        return arrayList;
    }

    @Override // defpackage.bf5
    public void e(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object obj) {
        if (ff5.a(str) && ff5.c(str, str2)) {
            this.a.a.i(str, str2, obj, true);
        }
    }

    @Override // defpackage.bf5
    @RecentlyNonNull
    public bf5.a f(@RecentlyNonNull String str, @RecentlyNonNull bf5.b bVar) {
        Objects.requireNonNull(bVar, "null reference");
        if (!ff5.a(str) || g(str)) {
            return null;
        }
        xr4 xr4Var = this.a;
        df5 hf5Var = "fiam".equals(str) ? new hf5(xr4Var, bVar) : ("crash".equals(str) || "clx".equals(str)) ? new jf5(xr4Var, bVar) : null;
        if (hf5Var == null) {
            return null;
        }
        this.b.put(str, hf5Var);
        return new a(str);
    }

    public final boolean g(String str) {
        return (str.isEmpty() || !this.b.containsKey(str) || this.b.get(str) == null) ? false : true;
    }
}
