package defpackage;

/* loaded from: classes2.dex */
public final class z68 {
    public static final a78<z48> a = new a();
    public static final a78<j58> b = new b();
    public static final a78<b78> c = new c();
    public static final a78<z48> d = new d();
    public static final a78<a58> e = new e();
    public static final a78<p48> f = new f();
    public static final a78<r48> g = new g();

    public class a implements a78<z48> {
        @Override // defpackage.a78
        public z48 a(u68 u68Var) {
            return (z48) u68Var.w(this);
        }
    }

    public class b implements a78<j58> {
        @Override // defpackage.a78
        public j58 a(u68 u68Var) {
            return (j58) u68Var.w(this);
        }
    }

    public class c implements a78<b78> {
        @Override // defpackage.a78
        public b78 a(u68 u68Var) {
            return (b78) u68Var.w(this);
        }
    }

    public class d implements a78<z48> {
        @Override // defpackage.a78
        public z48 a(u68 u68Var) {
            z48 z48Var = (z48) u68Var.w(z68.a);
            return z48Var != null ? z48Var : (z48) u68Var.w(z68.e);
        }
    }

    public class e implements a78<a58> {
        @Override // defpackage.a78
        public a58 a(u68 u68Var) {
            q68 q68Var = q68.L;
            if (u68Var.y(q68Var)) {
                return a58.Q(u68Var.k(q68Var));
            }
            return null;
        }
    }

    public class f implements a78<p48> {
        @Override // defpackage.a78
        public p48 a(u68 u68Var) {
            q68 q68Var = q68.C;
            if (u68Var.y(q68Var)) {
                return p48.e0(u68Var.D(q68Var));
            }
            return null;
        }
    }

    public class g implements a78<r48> {
        @Override // defpackage.a78
        public r48 a(u68 u68Var) {
            q68 q68Var = q68.j;
            if (u68Var.y(q68Var)) {
                return r48.O(u68Var.D(q68Var));
            }
            return null;
        }
    }
}
