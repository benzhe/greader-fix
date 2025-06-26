package defpackage;

/* loaded from: classes.dex */
public abstract class du {
    public static final du a;

    static {
        Long l = 10485760L;
        Integer num = 200;
        Integer num2 = 10000;
        Long l2 = 604800000L;
        Integer num3 = 81920;
        String strN = l == null ? " maxStorageSizeInBytes" : "";
        if (num == null) {
            strN = jo.n(strN, " loadBatchSize");
        }
        if (num2 == null) {
            strN = jo.n(strN, " criticalSectionEnterTimeoutMs");
        }
        if (l2 == null) {
            strN = jo.n(strN, " eventCleanUpAge");
        }
        if (num3 == null) {
            strN = jo.n(strN, " maxBlobByteSizePerRow");
        }
        if (!strN.isEmpty()) {
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
        a = new au(l.longValue(), num.intValue(), num2.intValue(), l2.longValue(), num3.intValue(), null);
    }

    public abstract int a();

    public abstract long b();

    public abstract int c();

    public abstract int d();

    public abstract long e();
}
