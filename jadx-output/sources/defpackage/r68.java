package defpackage;

/* loaded from: classes2.dex */
public enum r68 implements b78 {
    NANOS("Nanos", n48.k(1)),
    MICROS("Micros", n48.k(1000)),
    MILLIS("Millis", n48.k(1000000)),
    SECONDS("Seconds", n48.l(1)),
    MINUTES("Minutes", n48.l(60)),
    HOURS("Hours", n48.l(3600)),
    HALF_DAYS("HalfDays", n48.l(43200)),
    DAYS("Days", n48.l(86400)),
    WEEKS("Weeks", n48.l(604800)),
    MONTHS("Months", n48.l(2629746)),
    YEARS("Years", n48.l(31556952)),
    DECADES("Decades", n48.l(315569520)),
    CENTURIES("Centuries", n48.l(3155695200L)),
    MILLENNIA("Millennia", n48.l(31556952000L)),
    ERAS("Eras", n48.l(31556952000000000L)),
    FOREVER("Forever", n48.t(Long.MAX_VALUE, 999999999));

    public final String e;

    r68(String str, n48 n48Var) {
        this.e = str;
    }

    @Override // defpackage.b78
    public boolean i() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    @Override // defpackage.b78
    public <R extends t68> R k(R r, long j) {
        return (R) r.I(j, this);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.e;
    }
}
