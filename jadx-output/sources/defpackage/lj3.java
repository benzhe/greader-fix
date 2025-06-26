package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class lj3 extends se3 {
    public static final Object e = new Object();
    public final long b;
    public final long c;
    public final boolean d;

    public lj3(long j, boolean z) {
        this.b = j;
        this.c = j;
        this.d = z;
    }

    @Override // defpackage.se3
    public final te3 d(int i, te3 te3Var, boolean z, long j) {
        c50.r3(i, 1);
        long j2 = this.c;
        Objects.requireNonNull(te3Var);
        te3Var.a = j2;
        return te3Var;
    }

    @Override // defpackage.se3
    public final ue3 e(int i, ue3 ue3Var, boolean z) {
        c50.r3(i, 1);
        Object obj = z ? e : null;
        long j = this.b;
        ue3Var.a = obj;
        ue3Var.b = obj;
        ue3Var.c = j;
        return ue3Var;
    }

    @Override // defpackage.se3
    public final int f(Object obj) {
        return e.equals(obj) ? 0 : -1;
    }

    @Override // defpackage.se3
    public final int g() {
        return 1;
    }

    @Override // defpackage.se3
    public final int h() {
        return 1;
    }
}
