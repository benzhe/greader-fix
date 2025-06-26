package androidx.work;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import defpackage.ie5;
import defpackage.wm;

/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    public wm<ListenableWorker.a> i;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.i.j(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.i.k(th);
            }
        }
    }

    @Keep
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.a doWork();

    @Override // androidx.work.ListenableWorker
    public final ie5<ListenableWorker.a> startWork() {
        this.i = new wm<>();
        getBackgroundExecutor().execute(new a());
        return this.i;
    }
}
