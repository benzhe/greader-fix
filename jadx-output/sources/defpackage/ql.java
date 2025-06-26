package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ql<T> {
    public static final String f = vj.e("ConstraintTracker");
    public final xm a;
    public final Context b;
    public final Object c = new Object();
    public final Set<bl<T>> d = new LinkedHashSet();
    public T e;

    public class a implements Runnable {
        public final /* synthetic */ List e;

        public a(List list) {
            this.e = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((bl) it.next()).a(ql.this.e);
            }
        }
    }

    public ql(Context context, xm xmVar) {
        this.b = context.getApplicationContext();
        this.a = xmVar;
    }

    public abstract T a();

    public void b(bl<T> blVar) {
        synchronized (this.c) {
            if (this.d.remove(blVar) && this.d.isEmpty()) {
                e();
            }
        }
    }

    public void c(T t) {
        synchronized (this.c) {
            T t2 = this.e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.e = t;
                ((ym) this.a).c.execute(new a(new ArrayList(this.d)));
            }
        }
    }

    public abstract void d();

    public abstract void e();
}
