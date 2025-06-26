package defpackage;

import defpackage.i47;

/* loaded from: classes.dex */
public class sv5 implements jw5 {
    public static final i47.f<String> d;
    public static final i47.f<String> e;
    public static final i47.f<String> f;
    public final s96<by5> a;
    public final s96<cb6> b;
    public final ve5 c;

    static {
        i47.d<String> dVar = i47.c;
        d = i47.f.a("x-firebase-client-log-type", dVar);
        e = i47.f.a("x-firebase-client", dVar);
        f = i47.f.a("x-firebase-gmpid", dVar);
    }

    public sv5(s96<cb6> s96Var, s96<by5> s96Var2, ve5 ve5Var) {
        this.b = s96Var;
        this.a = s96Var2;
        this.c = ve5Var;
    }
}
