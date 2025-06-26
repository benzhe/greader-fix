package defpackage;

/* loaded from: classes.dex */
public final class tq2 implements Runnable {
    public final /* synthetic */ pr2 e;

    public tq2(pr2 pr2Var) {
        this.e = pr2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        if (this.e.b != null) {
            return;
        }
        synchronized (pr2.c) {
            if (this.e.b != null) {
                return;
            }
            boolean z = false;
            try {
                zBooleanValue = y40.v1.a().booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    pr2.d = new ip3(this.e.a.a, "ADSHIELD");
                    z = zBooleanValue;
                } catch (Throwable unused2) {
                }
            } else {
                z = zBooleanValue;
            }
            this.e.b = Boolean.valueOf(z);
            pr2.c.open();
        }
    }
}
