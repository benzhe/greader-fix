package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import defpackage.bi;
import defpackage.d00;
import defpackage.jo;
import defpackage.qy;
import defpackage.ry;
import defpackage.sy;
import defpackage.tv3;
import defpackage.ty;
import defpackage.uy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends ty> extends ry<R> {
    public static final ThreadLocal<Boolean> k = new d00();
    public final Object a;
    public final a<R> b;
    public final CountDownLatch c;
    public final ArrayList<ry.a> d;
    public final AtomicReference<Object> e;
    public R f;
    public Status g;
    public volatile boolean h;
    public boolean i;
    public boolean j;

    @KeepName
    public b mResultGuardian;

    public static class a<R extends ty> extends tv3 {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("BasePendingResult", jo.M(45, "Don't know how to handle message: ", i), new Exception());
                    return;
                } else {
                    ((BasePendingResult) message.obj).f(Status.j);
                    return;
                }
            }
            Pair pair = (Pair) message.obj;
            uy uyVar = (uy) pair.first;
            ty tyVar = (ty) pair.second;
            try {
                uyVar.a(tyVar);
            } catch (RuntimeException e) {
                BasePendingResult.e(tyVar);
                throw e;
            }
        }
    }

    public final class b {
        public b(d00 d00Var) {
        }

        public final void finalize() throws Throwable {
            BasePendingResult.e(BasePendingResult.this.f);
            super.finalize();
        }
    }

    @Deprecated
    public BasePendingResult() {
        this.a = new Object();
        this.c = new CountDownLatch(1);
        this.d = new ArrayList<>();
        this.e = new AtomicReference<>();
        this.j = false;
        this.b = new a<>(Looper.getMainLooper());
        new WeakReference(null);
    }

    public static void e(ty tyVar) {
        if (tyVar instanceof sy) {
            try {
                ((sy) tyVar).release();
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(tyVar);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 18);
                sb.append("Unable to release ");
                sb.append(strValueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    public abstract R a(Status status);

    public final boolean b() {
        return this.c.getCount() == 0;
    }

    public final void c(R r) {
        synchronized (this.a) {
            if (this.i) {
                e(r);
                return;
            }
            b();
            boolean z = true;
            bi.m(!b(), "Results have already been set");
            if (this.h) {
                z = false;
            }
            bi.m(z, "Result has already been consumed");
            d(r);
        }
    }

    public final void d(R r) {
        this.f = r;
        this.c.countDown();
        this.g = this.f.d0();
        if (this.f instanceof sy) {
            this.mResultGuardian = new b(null);
        }
        ArrayList<ry.a> arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            ry.a aVar = arrayList.get(i);
            i++;
            aVar.a(this.g);
        }
        this.d.clear();
    }

    public final void f(Status status) {
        synchronized (this.a) {
            if (!b()) {
                c(a(status));
                this.i = true;
            }
        }
    }

    public BasePendingResult(qy qyVar) {
        this.a = new Object();
        this.c = new CountDownLatch(1);
        this.d = new ArrayList<>();
        this.e = new AtomicReference<>();
        this.j = false;
        this.b = new a<>(qyVar != null ? qyVar.a() : Looper.getMainLooper());
        new WeakReference(qyVar);
    }
}
