package defpackage;

/* loaded from: classes.dex */
public final class ji3 implements jj3 {
    public final jj3[] e;

    public ji3(jj3[] jj3VarArr) {
        this.e = jj3VarArr;
    }

    @Override // defpackage.jj3
    public final long a() {
        long jMin = Long.MAX_VALUE;
        for (jj3 jj3Var : this.e) {
            long jA = jj3Var.a();
            if (jA != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jA);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // defpackage.jj3
    public final boolean b(long j) {
        boolean zB;
        boolean z = false;
        do {
            long jA = a();
            if (jA == Long.MIN_VALUE) {
                break;
            }
            zB = false;
            for (jj3 jj3Var : this.e) {
                if (jj3Var.a() == jA) {
                    zB |= jj3Var.b(j);
                }
            }
            z |= zB;
        } while (zB);
        return z;
    }
}
