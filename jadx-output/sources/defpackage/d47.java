package defpackage;

import defpackage.c47;
import defpackage.l47;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class d47 extends c47.c {
    public static final l47.b a = new l47.b(new a());

    public static final class a {
        public String toString() {
            return "service config is unused";
        }
    }

    public abstract String b();

    public abstract int c();

    public abstract boolean d();

    public l47.b e(Map<String, ?> map) {
        return a;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("policy", b());
        nd5VarK0.a("priority", c());
        nd5VarK0.c("available", d());
        return nd5VarK0.toString();
    }
}
