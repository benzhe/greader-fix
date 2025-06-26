package defpackage;

import defpackage.f57;
import defpackage.g97;
import defpackage.l47;
import defpackage.p47;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class f57<T extends f57<T>> extends g47<T> {
    public h87<? extends Executor> a;
    public h87<? extends Executor> b;
    public final List<b37> c;
    public final p47 d;
    public l47.c e;
    public final String f;
    public String g;
    public o37 h;
    public h37 i;
    public long j;
    public int k;
    public int l;
    public long m;
    public long n;
    public boolean o;
    public v37 p;
    public boolean q;
    public g97.b r;
    public int s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public static final Logger x = Logger.getLogger(f57.class.getName());
    public static final long y = TimeUnit.MINUTES.toMillis(30);
    public static final long z = TimeUnit.SECONDS.toMillis(1);
    public static final h87<? extends Executor> A = new z87(u67.m);
    public static final o37 B = o37.d;
    public static final h37 C = h37.b;

    public f57(String str) {
        p47 p47Var;
        h87<? extends Executor> h87Var = A;
        this.a = h87Var;
        this.b = h87Var;
        this.c = new ArrayList();
        Logger logger = p47.d;
        synchronized (p47.class) {
            if (p47.e == null) {
                ArrayList arrayList = new ArrayList();
                try {
                    arrayList.add(Class.forName("k67"));
                } catch (ClassNotFoundException e) {
                    p47.d.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e);
                }
                List<n47> listS1 = n56.s1(n47.class, Collections.unmodifiableList(arrayList), n47.class.getClassLoader(), new p47.b(null));
                if (listS1.isEmpty()) {
                    p47.d.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                }
                p47.e = new p47();
                for (n47 n47Var : listS1) {
                    p47.d.fine("Service loader found " + n47Var);
                    if (n47Var.c()) {
                        p47 p47Var2 = p47.e;
                        synchronized (p47Var2) {
                            c50.t(n47Var.c(), "isAvailable() returned false");
                            p47Var2.b.add(n47Var);
                        }
                    }
                }
                p47 p47Var3 = p47.e;
                synchronized (p47Var3) {
                    ArrayList arrayList2 = new ArrayList(p47Var3.b);
                    Collections.sort(arrayList2, Collections.reverseOrder(new o47(p47Var3)));
                    p47Var3.c = Collections.unmodifiableList(arrayList2);
                }
            }
            p47Var = p47.e;
        }
        this.d = p47Var;
        this.e = p47Var.a;
        this.g = "pick_first";
        this.h = B;
        this.i = C;
        this.j = y;
        this.k = 5;
        this.l = 5;
        this.m = 16777216L;
        this.n = 1048576L;
        this.p = v37.e;
        this.q = true;
        g97.b bVar = g97.h;
        this.r = g97.h;
        this.s = 4194304;
        this.t = true;
        this.u = true;
        this.v = true;
        this.w = true;
        c50.A(str, "target");
        this.f = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    @Override // defpackage.g47
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.f47 a() throws java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f57.a():f47");
    }

    public abstract b67 d();

    public int e() {
        return 443;
    }
}
