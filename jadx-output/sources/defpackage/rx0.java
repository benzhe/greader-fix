package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaaz;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class rx0 extends vu3 {
    public final iu0 e;
    public final boolean g;
    public final boolean h;
    public int i;
    public xu3 j;
    public boolean k;
    public float m;
    public float n;
    public float o;
    public boolean p;
    public boolean q;
    public h90 r;
    public final Object f = new Object();
    public boolean l = true;

    public rx0(iu0 iu0Var, float f, boolean z, boolean z2) {
        this.e = iu0Var;
        this.m = f;
        this.g = z;
        this.h = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    @Override // defpackage.su3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean F0() {
        /*
            r2 = this;
            boolean r0 = r2.g5()
            java.lang.Object r1 = r2.f
            monitor-enter(r1)
            if (r0 != 0) goto L15
            boolean r0 = r2.q     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            boolean r0 = r2.h     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            r0 = 1
            goto L16
        L13:
            r0 = move-exception
            goto L18
        L15:
            r0 = 0
        L16:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            return r0
        L18:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rx0.F0():boolean");
    }

    @Override // defpackage.su3
    public final xu3 K4() throws RemoteException {
        xu3 xu3Var;
        synchronized (this.f) {
            xu3Var = this.j;
        }
        return xu3Var;
    }

    public final void X6(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.f) {
            z2 = (f2 == this.m && f3 == this.o) ? false : true;
            this.m = f2;
            this.n = f;
            z3 = this.l;
            this.l = z;
            i2 = this.i;
            this.i = i;
            float f4 = this.o;
            this.o = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.e.getView().invalidate();
            }
        }
        if (z2) {
            try {
                h90 h90Var = this.r;
                if (h90Var != null) {
                    h90Var.l6();
                }
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        Y6(i2, i, z3, z);
    }

    public final void Y6(final int i, final int i2, final boolean z, final boolean z2) {
        ms0.e.execute(new Runnable(this, i, i2, z, z2) { // from class: tx0
            public final rx0 e;
            public final int f;
            public final int g;
            public final boolean h;
            public final boolean i;

            {
                this.e = this;
                this.f = i;
                this.g = i2;
                this.h = z;
                this.i = z2;
            }

            /* JADX WARN: Removed duplicated region for block: B:49:0x0060 A[Catch: RemoteException -> 0x004a, all -> 0x007d, TryCatch #0 {RemoteException -> 0x004a, blocks: (B:35:0x0042, B:37:0x0046, B:41:0x004e, B:43:0x0052, B:45:0x0057, B:47:0x005b, B:49:0x0060, B:51:0x0064, B:52:0x0067, B:54:0x006e, B:56:0x0072), top: B:64:0x0042, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:59:0x007b A[Catch: all -> 0x007d, DONT_GENERATE, TryCatch #1 {, blocks: (B:8:0x0014, B:33:0x003e, B:35:0x0042, B:37:0x0046, B:41:0x004e, B:43:0x0052, B:45:0x0057, B:47:0x005b, B:49:0x0060, B:51:0x0064, B:52:0x0067, B:54:0x006e, B:56:0x0072, B:59:0x007b, B:58:0x0076), top: B:66:0x0014, inners: #0 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r12 = this;
                    rx0 r0 = r12.e
                    int r1 = r12.f
                    int r2 = r12.g
                    boolean r3 = r12.h
                    boolean r4 = r12.i
                    java.lang.Object r5 = r0.f
                    monitor-enter(r5)
                    r6 = 0
                    r7 = 1
                    if (r1 == r2) goto L13
                    r1 = 1
                    goto L14
                L13:
                    r1 = 0
                L14:
                    boolean r8 = r0.k     // Catch: java.lang.Throwable -> L7d
                    if (r8 != 0) goto L1c
                    if (r2 != r7) goto L1c
                    r9 = 1
                    goto L1d
                L1c:
                    r9 = 0
                L1d:
                    if (r1 == 0) goto L23
                    if (r2 != r7) goto L23
                    r10 = 1
                    goto L24
                L23:
                    r10 = 0
                L24:
                    if (r1 == 0) goto L2b
                    r11 = 2
                    if (r2 != r11) goto L2b
                    r11 = 1
                    goto L2c
                L2b:
                    r11 = 0
                L2c:
                    if (r1 == 0) goto L33
                    r1 = 3
                    if (r2 != r1) goto L33
                    r1 = 1
                    goto L34
                L33:
                    r1 = 0
                L34:
                    if (r3 == r4) goto L38
                    r2 = 1
                    goto L39
                L38:
                    r2 = 0
                L39:
                    if (r8 != 0) goto L3d
                    if (r9 == 0) goto L3e
                L3d:
                    r6 = 1
                L3e:
                    r0.k = r6     // Catch: java.lang.Throwable -> L7d
                    if (r9 == 0) goto L4c
                    xu3 r3 = r0.j     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    if (r3 == 0) goto L4c
                    r3.onVideoStart()     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    goto L4c
                L4a:
                    r0 = move-exception
                    goto L76
                L4c:
                    if (r10 == 0) goto L55
                    xu3 r3 = r0.j     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    if (r3 == 0) goto L55
                    r3.onVideoPlay()     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                L55:
                    if (r11 == 0) goto L5e
                    xu3 r3 = r0.j     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    if (r3 == 0) goto L5e
                    r3.onVideoPause()     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                L5e:
                    if (r1 == 0) goto L6c
                    xu3 r1 = r0.j     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    if (r1 == 0) goto L67
                    r1.X()     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                L67:
                    iu0 r1 = r0.e     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    r1.s()     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                L6c:
                    if (r2 == 0) goto L7b
                    xu3 r0 = r0.j     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    if (r0 == 0) goto L7b
                    r0.u0(r4)     // Catch: android.os.RemoteException -> L4a java.lang.Throwable -> L7d
                    goto L7b
                L76:
                    java.lang.String r1 = "#007 Could not call remote method."
                    defpackage.is0.zze(r1, r0)     // Catch: java.lang.Throwable -> L7d
                L7b:
                    monitor-exit(r5)     // Catch: java.lang.Throwable -> L7d
                    return
                L7d:
                    r0 = move-exception
                    monitor-exit(r5)     // Catch: java.lang.Throwable -> L7d
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.tx0.run():void");
            }
        });
    }

    public final void Z6(zzaaz zzaazVar) {
        boolean z = zzaazVar.e;
        boolean z2 = zzaazVar.f;
        boolean z3 = zzaazVar.g;
        synchronized (this.f) {
            this.p = z2;
            this.q = z3;
        }
        String str = z ? "1" : "0";
        String str2 = z2 ? "1" : "0";
        String str3 = z3 ? "1" : "0";
        f4 f4Var = new f4(3);
        f4Var.put("muteStart", str);
        f4Var.put("customControlsRequested", str2);
        f4Var.put("clickToExpandRequested", str3);
        a7("initialState", Collections.unmodifiableMap(f4Var));
    }

    public final void a7(String str, Map<String, String> map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        ms0.e.execute(new Runnable(this, map2) { // from class: qx0
            public final rx0 e;
            public final Map f;

            {
                this.e = this;
                this.f = map2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rx0 rx0Var = this.e;
                rx0Var.e.x("pubVideoCmd", this.f);
            }
        });
    }

    @Override // defpackage.su3
    public final void g2(boolean z) {
        a7(z ? "mute" : "unmute", null);
    }

    @Override // defpackage.su3
    public final boolean g5() {
        boolean z;
        synchronized (this.f) {
            z = this.g && this.p;
        }
        return z;
    }

    @Override // defpackage.su3
    public final float getAspectRatio() {
        float f;
        synchronized (this.f) {
            f = this.o;
        }
        return f;
    }

    @Override // defpackage.su3
    public final float getCurrentTime() {
        float f;
        synchronized (this.f) {
            f = this.n;
        }
        return f;
    }

    @Override // defpackage.su3
    public final float getDuration() {
        float f;
        synchronized (this.f) {
            f = this.m;
        }
        return f;
    }

    @Override // defpackage.su3
    public final int getPlaybackState() {
        int i;
        synchronized (this.f) {
            i = this.i;
        }
        return i;
    }

    @Override // defpackage.su3
    public final boolean m1() {
        boolean z;
        synchronized (this.f) {
            z = this.l;
        }
        return z;
    }

    @Override // defpackage.su3
    public final void n4(xu3 xu3Var) {
        synchronized (this.f) {
            this.j = xu3Var;
        }
    }

    @Override // defpackage.su3
    public final void pause() {
        a7("pause", null);
    }

    @Override // defpackage.su3
    public final void play() {
        a7("play", null);
    }

    @Override // defpackage.su3
    public final void stop() {
        a7("stop", null);
    }
}
