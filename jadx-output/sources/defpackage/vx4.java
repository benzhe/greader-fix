package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class vx4 {
    public long A;
    public long B;
    public String C;
    public boolean D;
    public long E;
    public long F;
    public final rx4 a;
    public final String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public long g;
    public long h;
    public long i;
    public String j;
    public long k;
    public String l;
    public long m;
    public long n;
    public boolean o;
    public long p;
    public boolean q;
    public String r;
    public Boolean s;
    public long t;
    public List<String> u;
    public String v;
    public long w;
    public long x;
    public long y;
    public long z;

    public vx4(rx4 rx4Var, String str) {
        Objects.requireNonNull(rx4Var, "null reference");
        bi.g(str);
        this.a = rx4Var;
        this.b = str;
        rx4Var.m().d();
    }

    public final void A(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.c, str);
        this.c = str;
    }

    public final String B() {
        this.a.m().d();
        return this.d;
    }

    public final void C(String str) {
        this.a.m().d();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ p25.G(this.d, str);
        this.d = str;
    }

    public final String D() {
        this.a.m().d();
        return this.r;
    }

    public final void E(String str) {
        this.a.m().d();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ p25.G(this.r, str);
        this.r = str;
    }

    public final String F() {
        this.a.m().d();
        return this.v;
    }

    public final void G(String str) {
        this.a.m().d();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ p25.G(this.v, str);
        this.v = str;
    }

    public final String H() {
        this.a.m().d();
        return this.e;
    }

    public final void I(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.e, str);
        this.e = str;
    }

    public final String J() {
        this.a.m().d();
        return this.f;
    }

    public final void K(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.f, str);
        this.f = str;
    }

    public final long L() {
        this.a.m().d();
        return this.h;
    }

    public final void M(long j) {
        this.a.m().d();
        this.D |= this.h != j;
        this.h = j;
    }

    public final long N() {
        this.a.m().d();
        return this.i;
    }

    public final void O(long j) {
        this.a.m().d();
        this.D |= this.i != j;
        this.i = j;
    }

    public final String P() {
        this.a.m().d();
        return this.j;
    }

    public final void Q(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.j, str);
        this.j = str;
    }

    public final long R() {
        this.a.m().d();
        return this.k;
    }

    public final void S(long j) {
        this.a.m().d();
        this.D |= this.k != j;
        this.k = j;
    }

    public final String T() {
        this.a.m().d();
        return this.l;
    }

    public final void U(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.l, str);
        this.l = str;
    }

    public final long V() {
        this.a.m().d();
        return this.m;
    }

    public final void a(long j) {
        this.a.m().d();
        this.D |= this.m != j;
        this.m = j;
    }

    public final long b() {
        this.a.m().d();
        return this.n;
    }

    public final void c(long j) {
        this.a.m().d();
        this.D |= this.n != j;
        this.n = j;
    }

    public final long d() {
        this.a.m().d();
        return this.t;
    }

    public final void e(long j) {
        this.a.m().d();
        this.D |= this.t != j;
        this.t = j;
    }

    public final boolean f() {
        this.a.m().d();
        return this.o;
    }

    public final void g(boolean z) {
        this.a.m().d();
        this.D |= this.o != z;
        this.o = z;
    }

    public final void h(long j) {
        bi.b(j >= 0);
        this.a.m().d();
        this.D = (this.g != j) | this.D;
        this.g = j;
    }

    public final long i() {
        this.a.m().d();
        return this.g;
    }

    public final long j() {
        this.a.m().d();
        return this.E;
    }

    public final void k(long j) {
        this.a.m().d();
        this.D |= this.E != j;
        this.E = j;
    }

    public final long l() {
        this.a.m().d();
        return this.F;
    }

    public final void m(long j) {
        this.a.m().d();
        this.D |= this.F != j;
        this.F = j;
    }

    public final void n() {
        this.a.m().d();
        long j = this.g + 1;
        if (j > 2147483647L) {
            this.a.a().i.b("Bundle index overflow. appId", qw4.t(this.b));
            j = 0;
        }
        this.D = true;
        this.g = j;
    }

    public final String o() {
        this.a.m().d();
        String str = this.C;
        p(null);
        return str;
    }

    public final void p(String str) {
        this.a.m().d();
        this.D |= !p25.G(this.C, str);
        this.C = str;
    }

    public final long q() {
        this.a.m().d();
        return this.p;
    }

    public final void r(long j) {
        this.a.m().d();
        this.D |= this.p != j;
        this.p = j;
    }

    public final boolean s() {
        this.a.m().d();
        return this.q;
    }

    public final void t(boolean z) {
        this.a.m().d();
        this.D |= this.q != z;
        this.q = z;
    }

    public final Boolean u() {
        this.a.m().d();
        return this.s;
    }

    public final void v(Boolean bool) {
        this.a.m().d();
        boolean z = this.D;
        Boolean bool2 = this.s;
        this.D = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.s = bool;
    }

    public final List<String> w() {
        this.a.m().d();
        return this.u;
    }

    public final void x(List<String> list) {
        this.a.m().d();
        List<String> list2 = this.u;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.D = true;
        this.u = list != null ? new ArrayList(list) : null;
    }

    public final String y() {
        this.a.m().d();
        return this.b;
    }

    public final String z() {
        this.a.m().d();
        return this.c;
    }
}
