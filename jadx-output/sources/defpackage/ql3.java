package defpackage;

import android.content.Context;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class ql3 {
    public final pl3 a;
    public final boolean b;
    public final long c;
    public final long d;
    public long e;
    public long f;
    public long g;
    public boolean h;
    public long i;
    public long j;
    public long k;

    public ql3(Context context) {
        double refreshRate = ((WindowManager) context.getSystemService("window")).getDefaultDisplay() != null ? r6.getDefaultDisplay().getRefreshRate() : -1.0d;
        boolean z = refreshRate != -1.0d;
        this.b = z;
        if (!z) {
            this.a = null;
            this.c = -1L;
            this.d = -1L;
        } else {
            this.a = pl3.j;
            long j = (long) (1.0E9d / refreshRate);
            this.c = j;
            this.d = (j * 80) / 100;
        }
    }

    public final boolean a(long j, long j2) {
        return Math.abs((j2 - this.i) - (j - this.j)) > 20000000;
    }
}
