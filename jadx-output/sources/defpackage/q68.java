package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class q68 implements y68 {
    public static final q68 A;
    public static final q68 B;
    public static final q68 C;
    public static final q68 D;
    public static final q68 E;
    public static final q68 F;
    public static final q68 G;
    public static final q68 H;
    public static final q68 I;
    public static final q68 J;
    public static final q68 K;
    public static final q68 L;
    public static final /* synthetic */ q68[] M;
    public static final q68 i;
    public static final q68 j;
    public static final q68 k;
    public static final q68 l;
    public static final q68 m;
    public static final q68 n;
    public static final q68 o;
    public static final q68 p;
    public static final q68 q;
    public static final q68 r;
    public static final q68 s;
    public static final q68 t;
    public static final q68 u;
    public static final q68 v;
    public static final q68 w;
    public static final q68 x;
    public static final q68 y;
    public static final q68 z;
    public final String e;
    public final b78 f;
    public final b78 g;
    public final d78 h;

    static {
        r68 r68Var = r68.NANOS;
        r68 r68Var2 = r68.SECONDS;
        q68 q68Var = new q68("NANO_OF_SECOND", 0, "NanoOfSecond", r68Var, r68Var2, d78.d(0L, 999999999L));
        i = q68Var;
        r68 r68Var3 = r68.DAYS;
        q68 q68Var2 = new q68("NANO_OF_DAY", 1, "NanoOfDay", r68Var, r68Var3, d78.d(0L, 86399999999999L));
        j = q68Var2;
        r68 r68Var4 = r68.MICROS;
        q68 q68Var3 = new q68("MICRO_OF_SECOND", 2, "MicroOfSecond", r68Var4, r68Var2, d78.d(0L, 999999L));
        k = q68Var3;
        q68 q68Var4 = new q68("MICRO_OF_DAY", 3, "MicroOfDay", r68Var4, r68Var3, d78.d(0L, 86399999999L));
        l = q68Var4;
        r68 r68Var5 = r68.MILLIS;
        q68 q68Var5 = new q68("MILLI_OF_SECOND", 4, "MilliOfSecond", r68Var5, r68Var2, d78.d(0L, 999L));
        m = q68Var5;
        q68 q68Var6 = new q68("MILLI_OF_DAY", 5, "MilliOfDay", r68Var5, r68Var3, d78.d(0L, 86399999L));
        n = q68Var6;
        r68 r68Var6 = r68.MINUTES;
        q68 q68Var7 = new q68("SECOND_OF_MINUTE", 6, "SecondOfMinute", r68Var2, r68Var6, d78.d(0L, 59L));
        o = q68Var7;
        q68 q68Var8 = new q68("SECOND_OF_DAY", 7, "SecondOfDay", r68Var2, r68Var3, d78.d(0L, 86399L));
        p = q68Var8;
        r68 r68Var7 = r68.HOURS;
        q68 q68Var9 = new q68("MINUTE_OF_HOUR", 8, "MinuteOfHour", r68Var6, r68Var7, d78.d(0L, 59L));
        q = q68Var9;
        q68 q68Var10 = new q68("MINUTE_OF_DAY", 9, "MinuteOfDay", r68Var6, r68Var3, d78.d(0L, 1439L));
        r = q68Var10;
        r68 r68Var8 = r68.HALF_DAYS;
        q68 q68Var11 = new q68("HOUR_OF_AMPM", 10, "HourOfAmPm", r68Var7, r68Var8, d78.d(0L, 11L));
        s = q68Var11;
        q68 q68Var12 = new q68("CLOCK_HOUR_OF_AMPM", 11, "ClockHourOfAmPm", r68Var7, r68Var8, d78.d(1L, 12L));
        t = q68Var12;
        q68 q68Var13 = new q68("HOUR_OF_DAY", 12, "HourOfDay", r68Var7, r68Var3, d78.d(0L, 23L));
        u = q68Var13;
        q68 q68Var14 = new q68("CLOCK_HOUR_OF_DAY", 13, "ClockHourOfDay", r68Var7, r68Var3, d78.d(1L, 24L));
        v = q68Var14;
        q68 q68Var15 = new q68("AMPM_OF_DAY", 14, "AmPmOfDay", r68Var8, r68Var3, d78.d(0L, 1L));
        w = q68Var15;
        r68 r68Var9 = r68.WEEKS;
        q68 q68Var16 = new q68("DAY_OF_WEEK", 15, "DayOfWeek", r68Var3, r68Var9, d78.d(1L, 7L));
        x = q68Var16;
        q68 q68Var17 = new q68("ALIGNED_DAY_OF_WEEK_IN_MONTH", 16, "AlignedDayOfWeekInMonth", r68Var3, r68Var9, d78.d(1L, 7L));
        y = q68Var17;
        q68 q68Var18 = new q68("ALIGNED_DAY_OF_WEEK_IN_YEAR", 17, "AlignedDayOfWeekInYear", r68Var3, r68Var9, d78.d(1L, 7L));
        z = q68Var18;
        r68 r68Var10 = r68.MONTHS;
        q68 q68Var19 = new q68("DAY_OF_MONTH", 18, "DayOfMonth", r68Var3, r68Var10, d78.e(1L, 28L, 31L));
        A = q68Var19;
        r68 r68Var11 = r68.YEARS;
        q68 q68Var20 = new q68("DAY_OF_YEAR", 19, "DayOfYear", r68Var3, r68Var11, d78.e(1L, 365L, 366L));
        B = q68Var20;
        r68 r68Var12 = r68.FOREVER;
        q68 q68Var21 = new q68("EPOCH_DAY", 20, "EpochDay", r68Var3, r68Var12, d78.d(-365243219162L, 365241780471L));
        C = q68Var21;
        q68 q68Var22 = new q68("ALIGNED_WEEK_OF_MONTH", 21, "AlignedWeekOfMonth", r68Var9, r68Var10, d78.e(1L, 4L, 5L));
        D = q68Var22;
        q68 q68Var23 = new q68("ALIGNED_WEEK_OF_YEAR", 22, "AlignedWeekOfYear", r68Var9, r68Var11, d78.d(1L, 53L));
        E = q68Var23;
        q68 q68Var24 = new q68("MONTH_OF_YEAR", 23, "MonthOfYear", r68Var10, r68Var11, d78.d(1L, 12L));
        F = q68Var24;
        q68 q68Var25 = new q68("PROLEPTIC_MONTH", 24, "ProlepticMonth", r68Var10, r68Var12, d78.d(-11999999988L, 11999999999L));
        G = q68Var25;
        q68 q68Var26 = new q68("YEAR_OF_ERA", 25, "YearOfEra", r68Var11, r68Var12, d78.e(1L, 999999999L, 1000000000L));
        H = q68Var26;
        q68 q68Var27 = new q68("YEAR", 26, "Year", r68Var11, r68Var12, d78.d(-999999999L, 999999999L));
        I = q68Var27;
        q68 q68Var28 = new q68("ERA", 27, "Era", r68.ERAS, r68Var12, d78.d(0L, 1L));
        J = q68Var28;
        q68 q68Var29 = new q68("INSTANT_SECONDS", 28, "InstantSeconds", r68Var2, r68Var12, d78.d(Long.MIN_VALUE, Long.MAX_VALUE));
        K = q68Var29;
        q68 q68Var30 = new q68("OFFSET_SECONDS", 29, "OffsetSeconds", r68Var2, r68Var12, d78.d(-64800L, 64800L));
        L = q68Var30;
        M = new q68[]{q68Var, q68Var2, q68Var3, q68Var4, q68Var5, q68Var6, q68Var7, q68Var8, q68Var9, q68Var10, q68Var11, q68Var12, q68Var13, q68Var14, q68Var15, q68Var16, q68Var17, q68Var18, q68Var19, q68Var20, q68Var21, q68Var22, q68Var23, q68Var24, q68Var25, q68Var26, q68Var27, q68Var28, q68Var29, q68Var30};
    }

    public q68(String str, int i2, String str2, b78 b78Var, b78 b78Var2, d78 d78Var) {
        this.e = str2;
        this.f = b78Var;
        this.g = b78Var2;
        this.h = d78Var;
    }

    public static q68 valueOf(String str) {
        return (q68) Enum.valueOf(q68.class, str);
    }

    public static q68[] values() {
        return (q68[]) M.clone();
    }

    public int C(long j2) {
        return this.h.a(j2, this);
    }

    @Override // defpackage.y68
    public boolean i() {
        return ordinal() >= 15 && ordinal() <= 27;
    }

    @Override // defpackage.y68
    public boolean k(u68 u68Var) {
        return u68Var.y(this);
    }

    @Override // defpackage.y68
    public <R extends t68> R l(R r2, long j2) {
        return (R) r2.i(this, j2);
    }

    @Override // defpackage.y68
    public d78 t(u68 u68Var) {
        return u68Var.t(this);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.e;
    }

    @Override // defpackage.y68
    public d78 w() {
        return this.h;
    }

    @Override // defpackage.y68
    public long x(u68 u68Var) {
        return u68Var.D(this);
    }

    @Override // defpackage.y68
    public boolean y() {
        return ordinal() < 15;
    }
}
