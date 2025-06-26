package defpackage;

/* loaded from: classes.dex */
public final class vs4 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ long f;
    public final /* synthetic */ xu4 g;

    public vs4(xu4 xu4Var, String str, long j) {
        this.g = xu4Var;
        this.e = str;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xu4 xu4Var = this.g;
        String str = this.e;
        long j = this.f;
        xu4Var.d();
        bi.g(str);
        Integer num = xu4Var.c.get(str);
        if (num == null) {
            xu4Var.a.a().f.b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        a05 a05VarP = xu4Var.a.y().p(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            xu4Var.c.put(str, Integer.valueOf(iIntValue));
            return;
        }
        xu4Var.c.remove(str);
        Long l = xu4Var.b.get(str);
        if (l == null) {
            xu4Var.a.a().f.a("First ad unit exposure time was never set");
        } else {
            long jLongValue = l.longValue();
            xu4Var.b.remove(str);
            xu4Var.k(str, j - jLongValue, a05VarP);
        }
        if (xu4Var.c.isEmpty()) {
            long j2 = xu4Var.d;
            if (j2 == 0) {
                xu4Var.a.a().f.a("First ad exposure time was never set");
            } else {
                xu4Var.i(j - j2, a05VarP);
                xu4Var.d = 0L;
            }
        }
    }
}
