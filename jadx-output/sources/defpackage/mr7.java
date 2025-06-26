package defpackage;

/* loaded from: classes2.dex */
public final class mr7 extends kr7 {
    public final Runnable g;

    public mr7(Runnable runnable, long j, lr7 lr7Var) {
        super(j, lr7Var);
        this.g = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.g.run();
        } finally {
            this.f.e();
        }
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Task[");
        sbZ.append(n56.F0(this.g));
        sbZ.append('@');
        sbZ.append(n56.L0(this.g));
        sbZ.append(", ");
        sbZ.append(this.e);
        sbZ.append(", ");
        sbZ.append(this.f);
        sbZ.append(']');
        return sbZ.toString();
    }
}
