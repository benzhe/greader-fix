package defpackage;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class xb6 {
    public static final Map<String, xb6> d = new HashMap();
    public static final Executor e = new Executor() { // from class: wb6
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public final ExecutorService a;
    public final hc6 b;
    public e45<yb6> c = null;

    public static class b<TResult> implements b45<TResult>, a45, y35 {
        public final CountDownLatch a = new CountDownLatch(1);

        public b(a aVar) {
        }

        @Override // defpackage.y35
        public void b() {
            this.a.countDown();
        }

        @Override // defpackage.a45
        public void c(Exception exc) {
            this.a.countDown();
        }

        @Override // defpackage.b45
        public void onSuccess(TResult tresult) {
            this.a.countDown();
        }
    }

    public xb6(ExecutorService executorService, hc6 hc6Var) {
        this.a = executorService;
        this.b = hc6Var;
    }

    public static <TResult> TResult a(e45<TResult> e45Var, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        b bVar = new b(null);
        Executor executor = e;
        e45Var.g(executor, bVar);
        e45Var.e(executor, bVar);
        e45Var.a(executor, bVar);
        if (!bVar.a.await(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (e45Var.o()) {
            return e45Var.l();
        }
        throw new ExecutionException(e45Var.k());
    }

    public synchronized e45<yb6> b() {
        e45<yb6> e45Var = this.c;
        if (e45Var == null || (e45Var.n() && !this.c.o())) {
            ExecutorService executorService = this.a;
            final hc6 hc6Var = this.b;
            hc6Var.getClass();
            this.c = c50.i(executorService, new Callable(hc6Var) { // from class: vb6
                public final hc6 e;

                {
                    this.e = hc6Var;
                }

                @Override // java.util.concurrent.Callable
                public Object call() {
                    FileInputStream fileInputStreamOpenFileInput;
                    yb6 yb6VarA;
                    hc6 hc6Var2 = this.e;
                    synchronized (hc6Var2) {
                        FileInputStream fileInputStream = null;
                        yb6VarA = null;
                        try {
                            fileInputStreamOpenFileInput = hc6Var2.a.openFileInput(hc6Var2.b);
                        } catch (FileNotFoundException | JSONException unused) {
                            fileInputStreamOpenFileInput = null;
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            int iAvailable = fileInputStreamOpenFileInput.available();
                            byte[] bArr = new byte[iAvailable];
                            fileInputStreamOpenFileInput.read(bArr, 0, iAvailable);
                            yb6VarA = yb6.a(new JSONObject(new String(bArr, "UTF-8")));
                            fileInputStreamOpenFileInput.close();
                        } catch (FileNotFoundException | JSONException unused2) {
                            if (fileInputStreamOpenFileInput != null) {
                                fileInputStreamOpenFileInput.close();
                            }
                            return yb6VarA;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStreamOpenFileInput;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th;
                        }
                    }
                    return yb6VarA;
                }
            });
        }
        return this.c;
    }

    public e45<yb6> c(final yb6 yb6Var) {
        final boolean z = true;
        return c50.i(this.a, new Callable(this, yb6Var) { // from class: tb6
            public final xb6 e;
            public final yb6 f;

            {
                this.e = this;
                this.f = yb6Var;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                xb6 xb6Var = this.e;
                yb6 yb6Var2 = this.f;
                hc6 hc6Var = xb6Var.b;
                synchronized (hc6Var) {
                    FileOutputStream fileOutputStreamOpenFileOutput = hc6Var.a.openFileOutput(hc6Var.b, 0);
                    try {
                        fileOutputStreamOpenFileOutput.write(yb6Var2.toString().getBytes("UTF-8"));
                    } finally {
                        fileOutputStreamOpenFileOutput.close();
                    }
                }
                return null;
            }
        }).q(this.a, new d45(this, z, yb6Var) { // from class: ub6
            public final xb6 a;
            public final boolean b;
            public final yb6 c;

            {
                this.a = this;
                this.b = z;
                this.c = yb6Var;
            }

            @Override // defpackage.d45
            public e45 a(Object obj) {
                xb6 xb6Var = this.a;
                boolean z2 = this.b;
                yb6 yb6Var2 = this.c;
                Map<String, xb6> map = xb6.d;
                if (z2) {
                    synchronized (xb6Var) {
                        xb6Var.c = c50.X(yb6Var2);
                    }
                }
                return c50.X(yb6Var2);
            }
        });
    }
}
