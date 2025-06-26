package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.es2;
import defpackage.ex;
import defpackage.fx;
import defpackage.fz2;
import defpackage.is0;
import defpackage.ms0;
import defpackage.os3;
import defpackage.pd3;
import defpackage.pq2;
import defpackage.rn2;
import defpackage.rr2;
import defpackage.ws2;
import defpackage.y40;
import defpackage.zr0;
import java.io.File;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzf implements ws2, Runnable {
    public int h;
    public final boolean i;
    public final boolean j;
    public final Executor k;
    public final pq2 l;
    public Context m;
    public final Context n;
    public zzbar o;
    public final zzbar p;
    public final List<Object[]> e = new Vector();
    public final AtomicReference<ws2> f = new AtomicReference<>();
    public final AtomicReference<ws2> g = new AtomicReference<>();
    public CountDownLatch q = new CountDownLatch(1);

    public zzf(Context context, zzbar zzbarVar) {
        boolean z = true;
        this.m = context;
        this.n = context;
        this.o = zzbarVar;
        this.p = zzbarVar;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        this.k = executorServiceNewCachedThreadPool;
        pq2 pq2VarA = pq2.a(context, executorServiceNewCachedThreadPool);
        this.l = pq2VarA;
        this.j = ((Boolean) os3.j.f.a(y40.r1)).booleanValue();
        if (((Boolean) os3.j.f.a(y40.t1)).booleanValue()) {
            this.h = 2;
        } else {
            this.h = 1;
        }
        rr2 rr2Var = new rr2(this.m, pq2VarA);
        fx fxVar = new fx(this);
        es2 es2Var = new es2(this.m, rr2Var.b(), fxVar, ((Boolean) os3.j.f.a(y40.s1)).booleanValue());
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (es2.f) {
            pd3 pd3VarG = es2Var.g(1);
            if (pd3VarG == null) {
                es2Var.a(4025, jCurrentTimeMillis);
            } else {
                File fileH = es2Var.h(pd3VarG.E());
                if (!new File(fileH, "pcam.jar").exists()) {
                    es2Var.a(4026, jCurrentTimeMillis);
                } else if (new File(fileH, "pcbc").exists()) {
                    es2Var.a(5019, jCurrentTimeMillis);
                } else {
                    es2Var.a(4027, jCurrentTimeMillis);
                }
            }
            z = false;
        }
        this.i = z;
        if (((Boolean) os3.j.f.a(y40.H1)).booleanValue()) {
            ms0.a.execute(this);
            return;
        }
        zr0 zr0Var = os3.j.a;
        if (zr0.f()) {
            ms0.a.execute(this);
        } else {
            run();
        }
    }

    public static Context b(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final ws2 a() {
        return ((!this.j || this.i) ? this.h : 1) == 2 ? this.g.get() : this.f.get();
    }

    public final void c() {
        ws2 ws2VarA = a();
        if (this.e.isEmpty() || ws2VarA == null) {
            return;
        }
        for (Object[] objArr : this.e) {
            if (objArr.length == 1) {
                ws2VarA.zza((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                ws2VarA.zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.e.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = !((Boolean) os3.j.f.a(y40.F0)).booleanValue() && this.o.h;
            if (((!this.j || this.i) ? this.h : 1) == 1) {
                this.f.set(fz2.k(this.o.e, b(this.m), z, this.h));
                if (this.h == 2) {
                    this.k.execute(new ex(this, z));
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    this.g.set(rn2.b(this.o.e, b(this.m), z));
                } catch (NullPointerException e) {
                    this.h = 1;
                    this.f.set(fz2.k(this.o.e, b(this.m), z, this.h));
                    this.l.b(2031, System.currentTimeMillis() - jCurrentTimeMillis, e);
                }
            }
        } finally {
            this.q.countDown();
            this.m = null;
            this.o = null;
        }
    }

    @Override // defpackage.ws2
    public final String zza(Context context, String str, View view, Activity activity) throws InterruptedException {
        boolean z;
        ws2 ws2VarA;
        try {
            this.q.await();
            z = true;
        } catch (InterruptedException e) {
            is0.zzd("Interrupted during GADSignals creation.", e);
            z = false;
        }
        if (!z || (ws2VarA = a()) == null) {
            return "";
        }
        c();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return ws2VarA.zza(context, str, view, activity);
    }

    @Override // defpackage.ws2
    public final String zzb(Context context) throws InterruptedException {
        boolean z;
        ws2 ws2VarA;
        try {
            this.q.await();
            z = true;
        } catch (InterruptedException e) {
            is0.zzd("Interrupted during GADSignals creation.", e);
            z = false;
        }
        if (!z || (ws2VarA = a()) == null) {
            return "";
        }
        c();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return ws2VarA.zzb(context);
    }

    @Override // defpackage.ws2
    public final String zza(Context context, View view, Activity activity) {
        ws2 ws2VarA = a();
        return ws2VarA != null ? ws2VarA.zza(context, view, activity) : "";
    }

    @Override // defpackage.ws2
    public final void zzb(View view) {
        ws2 ws2VarA = a();
        if (ws2VarA != null) {
            ws2VarA.zzb(view);
        }
    }

    @Override // defpackage.ws2
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // defpackage.ws2
    public final void zza(MotionEvent motionEvent) {
        ws2 ws2VarA = a();
        if (ws2VarA != null) {
            c();
            ws2VarA.zza(motionEvent);
        } else {
            this.e.add(new Object[]{motionEvent});
        }
    }

    @Override // defpackage.ws2
    public final void zza(int i, int i2, int i3) {
        ws2 ws2VarA = a();
        if (ws2VarA != null) {
            c();
            ws2VarA.zza(i, i2, i3);
        } else {
            this.e.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        }
    }
}
