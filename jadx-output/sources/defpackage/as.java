package defpackage;

import defpackage.vr;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class as {

    public static abstract class a {
        public final a a(String str, String str2) {
            c().put(str, str2);
            return this;
        }

        public abstract as b();

        public abstract Map<String, String> c();
    }

    public final String a(String str) {
        String str2 = b().get(str);
        return str2 == null ? "" : str2;
    }

    public abstract Map<String, String> b();

    public abstract Integer c();

    public abstract zr d();

    public abstract long e();

    public final int f(String str) {
        String str2 = b().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public abstract String g();

    public abstract long h();

    public a i() {
        vr.b bVar = new vr.b();
        bVar.f(g());
        bVar.b = c();
        bVar.d(d());
        bVar.e(e());
        bVar.g(h());
        bVar.f = new HashMap(b());
        return bVar;
    }
}
