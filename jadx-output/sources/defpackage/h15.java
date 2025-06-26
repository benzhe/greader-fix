package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import com.google.android.gms.measurement.internal.zzaa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class h15 extends ww4 {
    public final g15 c;
    public hw4 d;
    public volatile Boolean e;
    public final is4 f;
    public final y15 g;
    public final List<Runnable> h;
    public final is4 i;

    public h15(rx4 rx4Var) {
        super(rx4Var);
        this.h = new ArrayList();
        this.g = new y15(rx4Var.n);
        this.c = new g15(this);
        this.f = new q05(this, rx4Var);
        this.i = new s05(this, rx4Var);
    }

    public static void q(h15 h15Var, ComponentName componentName) {
        h15Var.d();
        if (h15Var.d != null) {
            h15Var.d = null;
            h15Var.a.a().n.b("Disconnected from device MeasurementService", componentName);
            h15Var.d();
            h15Var.i();
        }
    }

    @Override // defpackage.ww4
    public final boolean h() {
        return false;
    }

    public final void i() {
        d();
        f();
        if (w()) {
            return;
        }
        if (l()) {
            g15 g15Var = this.c;
            g15Var.c.d();
            Context context = g15Var.c.a.a;
            synchronized (g15Var) {
                if (g15Var.a) {
                    g15Var.c.a.a().n.a("Connection attempt already in progress");
                    return;
                }
                if (g15Var.b != null && (g15Var.b.isConnecting() || g15Var.b.isConnected())) {
                    g15Var.c.a.a().n.a("Already awaiting connection attempt");
                    return;
                }
                g15Var.b = new mw4(context, Looper.getMainLooper(), g15Var, g15Var);
                g15Var.c.a.a().n.a("Connecting to remote service");
                g15Var.a = true;
                Objects.requireNonNull(g15Var.b, "null reference");
                g15Var.b.checkAvailabilityAndConnect();
                return;
            }
        }
        if (this.a.g.A()) {
            return;
        }
        rx4 rx4Var = this.a;
        c35 c35Var = rx4Var.f;
        List<ResolveInfo> listQueryIntentServices = rx4Var.a.getPackageManager().queryIntentServices(new Intent().setClassName(this.a.a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0) {
            this.a.a().f.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        rx4 rx4Var2 = this.a;
        Context context2 = rx4Var2.a;
        c35 c35Var2 = rx4Var2.f;
        intent.setComponent(new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementService"));
        g15 g15Var2 = this.c;
        g15Var2.c.d();
        Context context3 = g15Var2.c.a.a;
        x10 x10VarB = x10.b();
        synchronized (g15Var2) {
            if (g15Var2.a) {
                g15Var2.c.a.a().n.a("Connection attempt already in progress");
                return;
            }
            g15Var2.c.a.a().n.a("Using local app measurement service");
            g15Var2.a = true;
            x10VarB.a(context3, intent, g15Var2.c.c, 129);
        }
    }

    public final Boolean k() {
        return this.e;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean l() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h15.l():boolean");
    }

    public final void n() {
        d();
        f();
        g15 g15Var = this.c;
        if (g15Var.b != null && (g15Var.b.isConnected() || g15Var.b.isConnecting())) {
            g15Var.b.disconnect();
        }
        g15Var.b = null;
        try {
            x10.b().c(this.a.a, this.c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.d = null;
    }

    public final boolean p() {
        d();
        f();
        if (this.a.g.s(null, ew4.G0)) {
            return !l() || this.a.t().M() >= ew4.H0.a(null).intValue();
        }
        return false;
    }

    public final boolean r() {
        c35 c35Var = this.a.f;
        return true;
    }

    public final void s() {
        d();
        y15 y15Var = this.g;
        y15Var.b = y15Var.a.b();
        is4 is4Var = this.f;
        cs4 cs4Var = this.a.g;
        is4Var.b(ew4.J.a(null).longValue());
    }

    public final void t(Runnable runnable) throws IllegalStateException {
        d();
        if (w()) {
            runnable.run();
            return;
        }
        int size = this.h.size();
        rx4 rx4Var = this.a;
        cs4 cs4Var = rx4Var.g;
        if (size >= 1000) {
            rx4Var.a().f.a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.h.add(runnable);
        this.i.b(DateUtils.MILLIS_PER_MINUTE);
        i();
    }

    public final void u() {
        d();
        this.a.a().n.b("Processing queued up service tasks", Integer.valueOf(this.h.size()));
        Iterator<Runnable> it = this.h.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e) {
                this.a.a().f.b("Task exception while flushing queue", e);
            }
        }
        this.h.clear();
        this.i.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0175 A[PHI: r3
      0x0175: PHI (r3v29 p25) = (r3v31 p25), (r3v32 p25), (r3v33 p25) binds: [B:35:0x0129, B:37:0x012f, B:46:0x0168] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0168 -> B:47:0x0175). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzp v(boolean r37) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h15.v(boolean):com.google.android.gms.measurement.internal.zzp");
    }

    public final boolean w() {
        d();
        f();
        return this.d != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x0256 A[Catch: all -> 0x02b9, TRY_ENTER, TryCatch #8 {all -> 0x02b9, blocks: (B:30:0x00c9, B:32:0x00cf, B:34:0x00dc, B:36:0x00e2, B:40:0x00f8, B:42:0x00fd, B:140:0x0256, B:142:0x025c, B:143:0x025f, B:159:0x0294, B:151:0x027f, B:51:0x011c, B:52:0x011f, B:50:0x0117, B:55:0x0125, B:57:0x0139, B:64:0x0152, B:65:0x0156, B:66:0x0159, B:62:0x014c, B:68:0x015c, B:70:0x0170, B:77:0x0189, B:78:0x018d, B:79:0x0190, B:75:0x0183, B:82:0x0194, B:83:0x01a2, B:90:0x01c0, B:92:0x01cc, B:94:0x01dc, B:95:0x01e9), top: B:219:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02a9 A[PHI: r5 r7 r12 r16 r17
      0x02a9: PHI (r5v17 android.database.sqlite.SQLiteDatabase) = 
      (r5v14 android.database.sqlite.SQLiteDatabase)
      (r5v15 android.database.sqlite.SQLiteDatabase)
      (r5v18 android.database.sqlite.SQLiteDatabase)
     binds: [B:147:0x0273, B:162:0x02a7, B:155:0x0289] A[DONT_GENERATE, DONT_INLINE]
      0x02a9: PHI (r7v17 java.lang.String) = (r7v12 java.lang.String), (r7v14 java.lang.String), (r7v18 java.lang.String) binds: [B:147:0x0273, B:162:0x02a7, B:155:0x0289] A[DONT_GENERATE, DONT_INLINE]
      0x02a9: PHI (r12v8 int) = (r12v4 int), (r12v4 int), (r12v9 int) binds: [B:147:0x0273, B:162:0x02a7, B:155:0x0289] A[DONT_GENERATE, DONT_INLINE]
      0x02a9: PHI (r16v7 java.lang.String) = (r16v4 java.lang.String), (r16v5 java.lang.String), (r16v8 java.lang.String) binds: [B:147:0x0273, B:162:0x02a7, B:155:0x0289] A[DONT_GENERATE, DONT_INLINE]
      0x02a9: PHI (r17v13 int) = (r17v10 int), (r17v11 int), (r17v14 int) binds: [B:147:0x0273, B:162:0x02a7, B:155:0x0289] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x02ac A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(defpackage.hw4 r28, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r29, com.google.android.gms.measurement.internal.zzp r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h15.x(hw4, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, com.google.android.gms.measurement.internal.zzp):void");
    }

    public final void y(zzaa zzaaVar) throws IllegalStateException {
        boolean zN;
        d();
        f();
        rx4 rx4Var = this.a;
        c35 c35Var = rx4Var.f;
        kw4 kw4VarV = rx4Var.v();
        byte[] bArrL = kw4VarV.a.t().L(zzaaVar);
        if (bArrL.length > 131072) {
            kw4VarV.a.a().g.a("Conditional user property too long for local database. Sending directly to service");
            zN = false;
        } else {
            zN = kw4VarV.n(2, bArrL);
        }
        t(new x05(this, v(true), zN, new zzaa(zzaaVar), zzaaVar));
    }

    public final void z(AtomicReference<String> atomicReference) {
        d();
        f();
        t(new l05(this, atomicReference, v(false)));
    }
}
