package defpackage;

import defpackage.a37;
import defpackage.i47;
import defpackage.iv5;
import defpackage.qx5;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: Add missing generic type declarations: [RespT] */
/* loaded from: classes.dex */
public class xv5<RespT> extends a37.a<RespT> {
    public final /* synthetic */ kw5 a;
    public final /* synthetic */ a37[] b;
    public final /* synthetic */ aw5 c;

    public xv5(aw5 aw5Var, kw5 kw5Var, a37[] a37VarArr) {
        this.c = aw5Var;
        this.a = kw5Var;
        this.b = a37VarArr;
    }

    @Override // a37.a
    public void a(final x47 x47Var, i47 i47Var) {
        try {
            final iv5.c cVar = (iv5.c) this.a;
            cVar.a.a(new Runnable(cVar, x47Var) { // from class: mv5
                public final iv5.c e;
                public final x47 f;

                {
                    this.e = cVar;
                    this.f = x47Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    iv5.c cVar2 = this.e;
                    x47 x47Var2 = this.f;
                    if (x47Var2.f()) {
                        qx5.a(qx5.a.DEBUG, iv5.this.getClass().getSimpleName(), "(%x) Stream closed.", Integer.valueOf(System.identityHashCode(iv5.this)));
                    } else {
                        qx5.a(qx5.a.WARN, iv5.this.getClass().getSimpleName(), "(%x) Stream closed with status: %s.", Integer.valueOf(System.identityHashCode(iv5.this)), x47Var2);
                    }
                    iv5 iv5Var = iv5.this;
                    bx5.c(iv5Var.d(), "Can't handle server close on non-started stream!", new Object[0]);
                    iv5Var.a(tw5.Error, x47Var2);
                }
            });
        } catch (Throwable th) {
            this.c.a.c(th);
        }
    }

    @Override // a37.a
    public void b(final i47 i47Var) {
        try {
            final iv5.c cVar = (iv5.c) this.a;
            cVar.a.a(new Runnable(cVar, i47Var) { // from class: jv5
                public final iv5.c e;
                public final i47 f;

                {
                    this.e = cVar;
                    this.f = i47Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Set<String> setUnmodifiableSet;
                    iv5.c cVar2 = this.e;
                    i47 i47Var2 = this.f;
                    HashMap map = new HashMap();
                    if (i47Var2.e()) {
                        setUnmodifiableSet = Collections.emptySet();
                    } else {
                        HashSet hashSet = new HashSet(i47Var2.b);
                        for (int i = 0; i < i47Var2.b; i++) {
                            hashSet.add(new String(i47Var2.g(i), 0));
                        }
                        setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
                    }
                    for (String str : setUnmodifiableSet) {
                        if (qv5.d.contains(str.toLowerCase(Locale.ENGLISH))) {
                            map.put(str, (String) i47Var2.d(i47.f.a(str, i47.c)));
                        }
                    }
                    if (map.isEmpty()) {
                        return;
                    }
                    qx5.a(qx5.a.DEBUG, iv5.this.getClass().getSimpleName(), "(%x) Stream received headers: %s", Integer.valueOf(System.identityHashCode(iv5.this)), map);
                }
            });
        } catch (Throwable th) {
            this.c.a.c(th);
        }
    }

    @Override // a37.a
    public void c(final RespT respt) {
        try {
            final iv5.c cVar = (iv5.c) this.a;
            cVar.a.a(new Runnable(cVar, respt) { // from class: kv5
                public final iv5.c e;
                public final Object f;

                {
                    this.e = cVar;
                    this.f = respt;
                }

                @Override // java.lang.Runnable
                public void run() {
                    iv5.c cVar2 = this.e;
                    Object obj = this.f;
                    qx5.a(qx5.a.DEBUG, iv5.this.getClass().getSimpleName(), "(%x) Stream received: %s", Integer.valueOf(System.identityHashCode(iv5.this)), obj);
                    iv5.this.f(obj);
                }
            });
            this.b[0].c(1);
        } catch (Throwable th) {
            this.c.a.c(th);
        }
    }

    @Override // a37.a
    public void d() {
    }
}
