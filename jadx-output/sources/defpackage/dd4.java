package defpackage;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class dd4 extends ag4 {
    public final AtomicReference<Bundle> e = new AtomicReference<>();
    public boolean f;

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0002, code lost:
    
        r3 = r3.get("r");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> T b2(android.os.Bundle r3, java.lang.Class<T> r4) {
        /*
            if (r3 == 0) goto L31
            java.lang.String r0 = "r"
            java.lang.Object r3 = r3.get(r0)
            if (r3 == 0) goto L31
            java.lang.Object r3 = r4.cast(r3)     // Catch: java.lang.ClassCastException -> Lf
            goto L32
        Lf:
            r0 = move-exception
            java.lang.String r4 = r4.getCanonicalName()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getCanonicalName()
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            r1[r2] = r4
            r4 = 1
            r1[r4] = r3
            java.lang.String r3 = "Unexpected object type. Expected, Received: %s, %s"
            java.lang.String r3 = java.lang.String.format(r3, r1)
            java.lang.String r4 = "AM"
            android.util.Log.w(r4, r3, r0)
            throw r0
        L31:
            r3 = 0
        L32:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dd4.b2(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    public final String g0(long j) {
        return (String) b2(l0(j), String.class);
    }

    public final Bundle l0(long j) {
        Bundle bundle;
        synchronized (this.e) {
            if (!this.f) {
                try {
                    this.e.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.e.get();
        }
        return bundle;
    }

    @Override // defpackage.bg4
    public final void zzb(Bundle bundle) {
        synchronized (this.e) {
            try {
                this.e.set(bundle);
                this.f = true;
            } finally {
                this.e.notify();
            }
        }
    }
}
