package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzti;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class cv0 implements ae3, ze3, ti3, sk3<ek3>, sl3 {
    public static int x;
    public static int y;
    public final Context e;
    public final dv0 f;
    public final oe3 g;
    public final oe3 h;
    public final uj3 i;
    public final fu0 j;
    public de3 k;
    public ByteBuffer l;
    public boolean m;
    public final WeakReference<iu0> n;
    public mv0 o;
    public int p;
    public int q;
    public long r;
    public final String s;
    public final int t;
    public final ArrayList<kk3> u;
    public volatile zu0 v;
    public Set<WeakReference<xu0>> w = new HashSet();

    public cv0(Context context, fu0 fu0Var, iu0 iu0Var) {
        this.e = context;
        this.j = fu0Var;
        this.n = new WeakReference<>(iu0Var);
        dv0 dv0Var = new dv0();
        this.f = dv0Var;
        wh3 wh3Var = wh3.a;
        ms2 ms2Var = zzj.zzegq;
        ml3 ml3Var = new ml3(context, wh3Var, ms2Var, this);
        this.g = ml3Var;
        pf3 pf3Var = new pf3(wh3Var, ms2Var, this);
        this.h = pf3Var;
        tj3 tj3Var = new tj3();
        this.i = tj3Var;
        if (zzd.zzyz()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(strValueOf);
            zzd.zzed(sb.toString());
        }
        x++;
        de3 de3Var = new de3(new oe3[]{pf3Var, ml3Var}, tj3Var, dv0Var);
        this.k = de3Var;
        de3Var.f.add(this);
        this.p = 0;
        this.r = 0L;
        this.q = 0;
        this.u = new ArrayList<>();
        this.v = null;
        this.s = (iu0Var == null || iu0Var.t0() == null) ? "" : iu0Var.t0();
        this.t = iu0Var != null ? iu0Var.O() : 0;
        if (((Boolean) os3.j.f.a(y40.l)).booleanValue()) {
            this.k.e.L = true;
        }
        if (iu0Var != null && iu0Var.C() > 0) {
            this.k.e.M = iu0Var.C();
        }
        if (iu0Var == null || iu0Var.M() <= 0) {
            return;
        }
        this.k.e.N = iu0Var.M();
    }

    @Override // defpackage.ae3
    public final void a(pe3 pe3Var) {
    }

    @Override // defpackage.ae3
    public final void b(se3 se3Var, Object obj) {
    }

    @Override // defpackage.ae3
    public final void c(boolean z, int i) {
        mv0 mv0Var = this.o;
        if (mv0Var != null) {
            mv0Var.i(i);
        }
    }

    @Override // defpackage.ae3
    public final void d(nj3 nj3Var, ak3 ak3Var) {
    }

    @Override // defpackage.sk3
    public final /* bridge */ /* synthetic */ void e(ek3 ek3Var) {
    }

    @Override // defpackage.sk3
    public final void f(ek3 ek3Var, jk3 jk3Var) {
        ek3 ek3Var2 = ek3Var;
        if (ek3Var2 instanceof kk3) {
            this.u.add((kk3) ek3Var2);
            return;
        }
        if (ek3Var2 instanceof zu0) {
            this.v = (zu0) ek3Var2;
            final iu0 iu0Var = this.n.get();
            if (((Boolean) os3.j.f.a(y40.l1)).booleanValue() && iu0Var != null && this.v.l) {
                final HashMap map = new HashMap();
                map.put("gcacheHit", String.valueOf(this.v.n));
                map.put("gcacheDownloaded", String.valueOf(this.v.o));
                zzj.zzegq.post(new Runnable(iu0Var, map) { // from class: fv0
                    public final iu0 e;
                    public final Map f;

                    {
                        this.e = iu0Var;
                        this.f = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.x("onGcacheInfoEvent", this.f);
                    }
                });
            }
        }
    }

    public final void finalize() throws Throwable {
        x--;
        if (zzd.zzyz()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(strValueOf);
            zzd.zzed(sb.toString());
        }
    }

    @Override // defpackage.ae3
    public final void g(yd3 yd3Var) {
        mv0 mv0Var = this.o;
        if (mv0Var != null) {
            mv0Var.d("onPlayerError", yd3Var);
        }
    }

    @Override // defpackage.sk3
    public final /* synthetic */ void h(ek3 ek3Var, int i) {
        this.p += i;
    }

    @Override // defpackage.ae3
    public final void i(boolean z) {
    }

    @Override // defpackage.ae3
    public final void j() {
    }

    public final long k() throws NumberFormatException {
        long j;
        char c;
        boolean z;
        if (n()) {
            final zu0 zu0Var = this.v;
            if (zu0Var.k == null) {
                return -1L;
            }
            if (zu0Var.r.get() != -1) {
                return zu0Var.r.get();
            }
            synchronized (zu0Var) {
                if (zu0Var.q == null) {
                    zu0Var.q = ms0.a.y(new Callable(zu0Var) { // from class: bv0
                        public final zu0 e;

                        {
                            this.e = zu0Var;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            long jW1;
                            zu0 zu0Var2 = this.e;
                            Objects.requireNonNull(zu0Var2);
                            io3 io3VarZzlb = zzr.zzlb();
                            zzti zztiVar = zu0Var2.k;
                            synchronized (io3VarZzlb.b) {
                                jW1 = -2;
                                if (io3VarZzlb.e != null) {
                                    if (io3VarZzlb.c.q()) {
                                        try {
                                            jW1 = io3VarZzlb.e.w1(zztiVar);
                                        } catch (RemoteException e) {
                                            is0.zzc("Unable to call into cache service.", e);
                                        }
                                    }
                                }
                            }
                            return Long.valueOf(jW1);
                        }
                    });
                }
            }
            if (!zu0Var.q.isDone()) {
                return -1L;
            }
            try {
                zu0Var.r.compareAndSet(-1L, zu0Var.q.get().longValue());
                return zu0Var.r.get();
            } catch (InterruptedException | ExecutionException unused) {
                return -1L;
            }
        }
        while (!this.u.isEmpty()) {
            long j2 = this.r;
            Map<String, List<String>> mapA = this.u.remove(0).a();
            if (mapA != null) {
                for (Map.Entry<String, List<String>> entry : mapA.entrySet()) {
                    if (entry != null) {
                        try {
                            if (entry.getKey() == null) {
                                continue;
                            } else {
                                String key = entry.getKey();
                                if ("content-length" != key) {
                                    if (14 == key.length()) {
                                        for (int i = 0; i < 14; i++) {
                                            if ("content-length".charAt(i) == key.charAt(i) || ((c = (char) ((r9 | ' ') - 97)) < 26 && c == ((char) ((r10 | ' ') - 97)))) {
                                            }
                                        }
                                    }
                                    z = false;
                                    if (z && entry.getValue() != null && entry.getValue().get(0) != null) {
                                        j = Long.parseLong(entry.getValue().get(0));
                                        break;
                                    }
                                }
                                z = true;
                                if (z) {
                                    continue;
                                }
                            }
                        } catch (NumberFormatException unused2) {
                        }
                    }
                }
                j = 0;
            } else {
                j = 0;
            }
            this.r = j2 + j;
        }
        return this.r;
    }

    public final void l() {
        de3 de3Var = this.k;
        if (de3Var != null) {
            de3Var.f.remove(this);
            de3 de3Var2 = this.k;
            ee3 ee3Var = de3Var2.e;
            synchronized (ee3Var) {
                if (!ee3Var.v) {
                    ee3Var.j.sendEmptyMessage(6);
                    while (!ee3Var.v) {
                        try {
                            ee3Var.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    ee3Var.k.quit();
                }
            }
            de3Var2.d.removeCallbacksAndMessages(null);
            this.k = null;
            y--;
        }
    }

    public final void m(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zi3 aj3Var;
        if (this.k == null) {
            return;
        }
        this.l = byteBuffer;
        this.m = z;
        if (uriArr.length == 1) {
            aj3Var = o(uriArr[0], str);
        } else {
            zi3[] zi3VarArr = new zi3[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                zi3VarArr[i] = o(uriArr[i], str);
            }
            aj3Var = new aj3(zi3VarArr);
        }
        de3 de3Var = this.k;
        if (!de3Var.o.a() || de3Var.p != null) {
            de3Var.o = se3.a;
            de3Var.p = null;
            Iterator<ae3> it = de3Var.f.iterator();
            while (it.hasNext()) {
                it.next().b(de3Var.o, de3Var.p);
            }
        }
        if (de3Var.i) {
            de3Var.i = false;
            de3Var.q = nj3.d;
            de3Var.r = de3Var.c;
            de3Var.b.b(null);
            Iterator<ae3> it2 = de3Var.f.iterator();
            while (it2.hasNext()) {
                it2.next().d(de3Var.q, de3Var.r);
            }
        }
        de3Var.m++;
        de3Var.e.j.obtainMessage(0, 1, 0, aj3Var).sendToTarget();
        y++;
    }

    public final boolean n() {
        return this.v != null && this.v.m;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.zi3 o(android.net.Uri r10, final java.lang.String r11) {
        /*
            r9 = this;
            vi3 r8 = new vi3
            boolean r0 = r9.m
            if (r0 == 0) goto L22
            java.nio.ByteBuffer r0 = r9.l
            int r0 = r0.limit()
            if (r0 <= 0) goto L22
            java.nio.ByteBuffer r11 = r9.l
            int r11 = r11.limit()
            byte[] r11 = new byte[r11]
            java.nio.ByteBuffer r0 = r9.l
            r0.get(r11)
            ev0 r0 = new ev0
            r0.<init>(r11)
        L20:
            r2 = r0
            goto L87
        L22:
            o40<java.lang.Boolean> r0 = defpackage.y40.n1
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L46
            o40<java.lang.Boolean> r0 = defpackage.y40.l1
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L4c
        L46:
            fu0 r0 = r9.j
            boolean r0 = r0.i
            if (r0 != 0) goto L4e
        L4c:
            r0 = 1
            goto L4f
        L4e:
            r0 = 0
        L4f:
            fu0 r1 = r9.j
            int r2 = r1.h
            if (r2 <= 0) goto L5b
            hv0 r2 = new hv0
            r2.<init>(r9, r11, r0)
            goto L60
        L5b:
            gv0 r2 = new gv0
            r2.<init>(r9, r11, r0)
        L60:
            boolean r11 = r1.i
            if (r11 == 0) goto L6a
            jv0 r11 = new jv0
            r11.<init>(r9, r2)
            r2 = r11
        L6a:
            java.nio.ByteBuffer r11 = r9.l
            if (r11 == 0) goto L87
            int r11 = r11.limit()
            if (r11 <= 0) goto L87
            java.nio.ByteBuffer r11 = r9.l
            int r11 = r11.limit()
            byte[] r11 = new byte[r11]
            java.nio.ByteBuffer r0 = r9.l
            r0.get(r11)
            iv0 r0 = new iv0
            r0.<init>(r2, r11)
            goto L20
        L87:
            o40<java.lang.Boolean> r11 = defpackage.y40.k
            os3 r0 = defpackage.os3.j
            u40 r0 = r0.f
            java.lang.Object r11 = r0.a(r11)
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L9c
            jg3 r11 = defpackage.lv0.a
            goto L9e
        L9c:
            jg3 r11 = defpackage.kv0.a
        L9e:
            r3 = r11
            fu0 r11 = r9.j
            int r4 = r11.j
            ms2 r5 = com.google.android.gms.ads.internal.util.zzj.zzegq
            int r7 = r11.f
            r0 = r8
            r1 = r10
            r6 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cv0.o(android.net.Uri, java.lang.String):zi3");
    }

    public final void p(boolean z) {
        if (this.k == null) {
            return;
        }
        for (int i = 0; i < this.k.a.length; i++) {
            uj3 uj3Var = this.i;
            boolean z2 = !z;
            if (uj3Var.c.get(i) != z2) {
                uj3Var.c.put(i, z2);
                ck3 ck3Var = uj3Var.a;
                if (ck3Var != null) {
                    ((ee3) ck3Var).j.sendEmptyMessage(10);
                }
            }
        }
    }

    public final long q() {
        if (n() && this.v.n) {
            return Math.min(this.p, this.v.p);
        }
        return 0L;
    }
}
