package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* loaded from: classes2.dex */
public class fr7 extends sp7 {
    public dr7 g;
    public final int h;
    public final int i;
    public final long j;
    public final String k;

    public fr7(int i, int i2, String str, int i3) {
        int i4 = (i3 & 1) != 0 ? nr7.b : i;
        int i5 = (i3 & 2) != 0 ? nr7.c : i2;
        String str2 = (i3 & 4) != 0 ? "DefaultDispatcher" : null;
        long j = nr7.d;
        this.h = i4;
        this.i = i5;
        this.j = j;
        this.k = str2;
        this.g = new dr7(i4, i5, j, str2);
    }

    @Override // defpackage.cp7
    public void t(rk7 rk7Var, Runnable runnable) {
        try {
            dr7 dr7Var = this.g;
            AtomicLongFieldUpdater atomicLongFieldUpdater = dr7.l;
            dr7Var.e(runnable, jr7.e, false);
        } catch (RejectedExecutionException unused) {
            gp7.m.Z(runnable);
        }
    }
}
