package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import defpackage.f07;
import defpackage.gz6;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class iz6 {
    public final Resources a;
    public final Executor b;
    public final Executor c;
    public final boolean d;
    public final boolean e;
    public final int f;
    public final int g;
    public final wz6 h;
    public final bz6 i;
    public final ty6 j;
    public final f07 k;
    public final b07 l;
    public final gz6 m;
    public final f07 n;
    public final f07 o;

    public static class b {
        public Context a;
        public b07 o;
        public Executor b = null;
        public Executor c = null;
        public boolean d = false;
        public boolean e = false;
        public int f = 3;
        public int g = 3;
        public boolean h = false;
        public wz6 i = wz6.FIFO;
        public int j = 0;
        public bz6 k = null;
        public ty6 l = null;
        public az6 m = null;
        public f07 n = null;
        public gz6 p = null;

        public b(Context context) {
            this.a = context.getApplicationContext();
        }

        public iz6 a() throws IOException {
            ty6 vy6Var;
            if (this.b == null) {
                this.b = n56.J(this.f, this.g, this.i);
            } else {
                this.d = true;
            }
            if (this.c == null) {
                this.c = n56.J(this.f, this.g, this.i);
            } else {
                this.e = true;
            }
            if (this.l == null) {
                if (this.m == null) {
                    this.m = new az6();
                }
                Context context = this.a;
                az6 az6Var = this.m;
                int i = this.j;
                File fileD0 = n56.D0(context, false);
                File file = new File(fileD0, "uil-images");
                File file2 = (file.exists() || file.mkdir()) ? file : fileD0;
                if (i > 0) {
                    try {
                        vy6Var = new xy6(n56.M0(context, "uil-images"), file2, az6Var, 0L, i);
                    } catch (IOException e) {
                        p07.c(e);
                    }
                    this.l = vy6Var;
                } else {
                    vy6Var = new vy6(n56.D0(context, true), file2, az6Var);
                    this.l = vy6Var;
                }
            }
            if (this.k == null) {
                Context context2 = this.a;
                ActivityManager activityManager = (ActivityManager) context2.getSystemService("activity");
                int memoryClass = activityManager.getMemoryClass();
                if ((context2.getApplicationInfo().flags & 1048576) != 0) {
                    memoryClass = activityManager.getLargeMemoryClass();
                }
                this.k = new dz6((memoryClass * 1048576) / 8);
            }
            if (this.h) {
                this.k = new cz6(this.k, new q07());
            }
            if (this.n == null) {
                this.n = new e07(this.a);
            }
            if (this.o == null) {
                this.o = new a07(false);
            }
            if (this.p == null) {
                this.p = new gz6.b().b();
            }
            return new iz6(this, null);
        }

        public b b(ty6 ty6Var) {
            if (this.j > 0) {
                p07.e("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
            }
            if (this.m != null) {
                p07.e("diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
            }
            this.l = ty6Var;
            return this;
        }

        public b c(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("maxFileCount must be a positive number");
            }
            if (this.l != null) {
                p07.e("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
            }
            this.j = i;
            return this;
        }

        public b d(wz6 wz6Var) {
            if (this.b != null || this.c != null) {
                p07.e("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
            }
            this.i = wz6Var;
            return this;
        }

        public b e(int i) {
            if (this.b != null || this.c != null) {
                p07.e("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
            }
            this.f = i;
            return this;
        }

        public b f(int i) {
            if (this.b != null || this.c != null) {
                p07.e("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
            }
            if (i < 1) {
                this.g = 1;
            } else if (i > 10) {
                this.g = 10;
            } else {
                this.g = i;
            }
            return this;
        }
    }

    public static class c implements f07 {
        public final f07 a;

        public c(f07 f07Var) {
            this.a = f07Var;
        }

        @Override // defpackage.f07
        public InputStream a(String str, Object obj) throws IOException {
            int iOrdinal = f07.a.k(str).ordinal();
            if (iOrdinal == 0 || iOrdinal == 1) {
                throw new IllegalStateException();
            }
            return this.a.a(str, obj);
        }
    }

    public static class d implements f07 {
        public final f07 a;

        public d(f07 f07Var) {
            this.a = f07Var;
        }

        @Override // defpackage.f07
        public InputStream a(String str, Object obj) throws IOException {
            InputStream inputStreamA = this.a.a(str, obj);
            int iOrdinal = f07.a.k(str).ordinal();
            return (iOrdinal == 0 || iOrdinal == 1) ? new sz6(inputStreamA) : inputStreamA;
        }
    }

    public iz6(b bVar, a aVar) {
        this.a = bVar.a.getResources();
        this.b = bVar.b;
        this.c = bVar.c;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.i;
        this.j = bVar.l;
        this.i = bVar.k;
        this.m = bVar.p;
        f07 f07Var = bVar.n;
        this.k = f07Var;
        this.l = bVar.o;
        this.d = bVar.d;
        this.e = bVar.e;
        this.n = new c(f07Var);
        this.o = new d(f07Var);
        p07.a = false;
    }
}
