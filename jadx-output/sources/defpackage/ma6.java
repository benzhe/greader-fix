package defpackage;

import defpackage.la6;

/* loaded from: classes.dex */
public abstract class ma6 {
    public static final /* synthetic */ int a = 0;

    public static abstract class a {
        public abstract ma6 a();

        public abstract a b(la6.a aVar);
    }

    static {
        Long l = 0L;
        String strN = l == null ? " expiresInSecs" : "";
        if (l == null) {
            strN = jo.n(strN, " tokenCreationEpochInSecs");
        }
        if (!strN.isEmpty()) {
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
        l.longValue();
        l.longValue();
    }

    public abstract String a();

    public abstract long b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract la6.a f();

    public abstract long g();

    public boolean h() {
        return f() == la6.a.REGISTER_ERROR;
    }

    public boolean i() {
        la6.a aVar = ((ja6) this).c;
        return aVar == la6.a.NOT_GENERATED || aVar == la6.a.ATTEMPT_MIGRATION;
    }

    public boolean j() {
        return f() == la6.a.REGISTERED;
    }

    public abstract a k();
}
