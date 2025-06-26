package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.os.SystemClock;
import defpackage.xd;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ud<D> extends wd<D> {
    public final Executor i;
    public volatile ud<D>.a j;
    public volatile ud<D>.a k;
    public long l;

    public final class a extends xd<Void, Void, D> implements Runnable {
        public final CountDownLatch n = new CountDownLatch(1);

        public a() {
        }

        @Override // defpackage.xd
        public Object a(Void[] voidArr) {
            try {
                ud udVar = ud.this;
                Objects.requireNonNull(udVar);
                return ((vd) udVar).k();
            } catch (b9 e) {
                if (this.h.get()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // defpackage.xd
        public void b(D d) {
            try {
                ud.this.h(this, d);
            } finally {
                this.n.countDown();
            }
        }

        @Override // defpackage.xd
        public void c(D d) {
            try {
                ud udVar = ud.this;
                if (udVar.j != this) {
                    udVar.h(this, d);
                } else if (udVar.e) {
                    Cursor cursor = (Cursor) d;
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                } else {
                    udVar.h = false;
                    udVar.l = SystemClock.uptimeMillis();
                    udVar.j = null;
                    ((vd) udVar).j((Cursor) d);
                }
            } finally {
                this.n.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ud.this.i();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ud(Context context) {
        super(context);
        Executor executor = xd.l;
        this.l = -10000L;
        this.i = executor;
    }

    @Override // defpackage.wd
    @Deprecated
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.b(str, fileDescriptor, printWriter, strArr);
        if (this.j != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.j);
            printWriter.print(" waiting=");
            Objects.requireNonNull(this.j);
            printWriter.println(false);
        }
        if (this.k != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.k);
            printWriter.print(" waiting=");
            Objects.requireNonNull(this.k);
            printWriter.println(false);
        }
    }

    @Override // defpackage.wd
    public boolean c() {
        if (this.j == null) {
            return false;
        }
        if (!this.d) {
            this.g = true;
        }
        if (this.k != null) {
            Objects.requireNonNull(this.j);
            this.j = null;
            return false;
        }
        Objects.requireNonNull(this.j);
        ud<D>.a aVar = this.j;
        aVar.h.set(true);
        boolean zCancel = aVar.f.cancel(false);
        if (zCancel) {
            this.k = this.j;
            vd vdVar = (vd) this;
            synchronized (vdVar) {
                w8 w8Var = vdVar.t;
                if (w8Var != null) {
                    w8Var.a();
                }
            }
        }
        this.j = null;
        return zCancel;
    }

    @Override // defpackage.wd
    public void d() {
        c();
        this.j = new a();
        i();
    }

    public void h(ud<D>.a aVar, D d) {
        Cursor cursor = (Cursor) d;
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
        if (this.k == aVar) {
            if (this.h) {
                if (this.d) {
                    d();
                } else {
                    this.g = true;
                }
            }
            this.l = SystemClock.uptimeMillis();
            this.k = null;
            i();
        }
    }

    public void i() {
        if (this.k != null || this.j == null) {
            return;
        }
        Objects.requireNonNull(this.j);
        ud<D>.a aVar = this.j;
        Executor executor = this.i;
        if (aVar.g == xd.f.PENDING) {
            aVar.g = xd.f.RUNNING;
            aVar.e.e = null;
            executor.execute(aVar.f);
        } else {
            int iOrdinal = aVar.g.ordinal();
            if (iOrdinal == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (iOrdinal == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("We should never reach this state");
        }
    }
}
