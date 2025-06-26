package defpackage;

import defpackage.oa6;

/* loaded from: classes.dex */
public abstract class sa6 {

    public static abstract class a {
        public abstract sa6 a();

        public abstract a b(long j);
    }

    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static a a() {
        oa6.b bVar = new oa6.b();
        bVar.b(0L);
        return bVar;
    }

    public abstract b b();

    public abstract String c();

    public abstract long d();
}
