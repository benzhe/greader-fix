package defpackage;

import defpackage.ex5;
import defpackage.js5;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class js5 {
    public static final long c;
    public static final long d;
    public final is5 a;
    public final a b;

    public static class a {
        public final long a;

        public a(long j, int i, int i2) {
            this.a = j;
        }
    }

    public static class b {
        public b(boolean z, int i, int i2, int i3) {
        }
    }

    public static class c {
        public static final /* synthetic */ int c = 0;
        public final PriorityQueue<Long> a;
        public final int b;

        public c(int i) {
            this.b = i;
            this.a = new PriorityQueue<>(i, new Comparator() { // from class: ks5
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    Long l = (Long) obj2;
                    int i2 = js5.c.c;
                    return l.compareTo((Long) obj);
                }
            });
        }

        public void a(Long l) {
            if (this.a.size() < this.b) {
                this.a.add(l);
                return;
            }
            if (l.longValue() < this.a.peek().longValue()) {
                this.a.poll();
                this.a.add(l);
            }
        }
    }

    public class d implements rr5 {
        public final ex5 a;
        public final fs5 b;
        public boolean c = false;

        public d(ex5 ex5Var, fs5 fs5Var) {
            this.a = ex5Var;
            this.b = fs5Var;
        }

        public final void a() {
            this.a.b(ex5.d.GARBAGE_COLLECTION, this.c ? js5.d : js5.c, new Runnable(this) { // from class: ls5
                public final js5.d e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    js5.d dVar = this.e;
                    final fs5 fs5Var = dVar.b;
                    final js5 js5Var = js5.this;
                    dVar.c = true;
                    dVar.a();
                }
            });
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        c = timeUnit.toMillis(1L);
        d = timeUnit.toMillis(5L);
    }

    public js5(is5 is5Var, a aVar) {
        this.a = is5Var;
        this.b = aVar;
    }
}
