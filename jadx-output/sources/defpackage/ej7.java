package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class ej7 {
    public static final zb7 a;
    public static final zb7 b;
    public static final zb7 c;

    public static final class a {
        public static final zb7 a = new vh7();
    }

    public static final class b implements Callable<zb7> {
        @Override // java.util.concurrent.Callable
        public zb7 call() throws Exception {
            return a.a;
        }
    }

    public static final class c implements Callable<zb7> {
        @Override // java.util.concurrent.Callable
        public zb7 call() throws Exception {
            return d.a;
        }
    }

    public static final class d {
        public static final zb7 a = new wh7();
    }

    public static final class e {
        public static final zb7 a = new xh7();
    }

    public static final class f implements Callable<zb7> {
        @Override // java.util.concurrent.Callable
        public zb7 call() throws Exception {
            return e.a;
        }
    }

    public static final class g {
        public static final zb7 a = new di7();
    }

    public static final class h implements Callable<zb7> {
        @Override // java.util.concurrent.Callable
        public zb7 call() throws Exception {
            return g.a;
        }
    }

    static {
        n56.q(new h());
        a = n56.q(new b());
        b = n56.q(new c());
        ei7 ei7Var = ei7.a;
        ei7 ei7Var2 = ei7.a;
        c = n56.q(new f());
    }
}
