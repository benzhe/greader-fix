package defpackage;

import defpackage.rn6;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class gp6 implements rn6.b {
    public final /* synthetic */ ip6 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ cw6 c;
    public final /* synthetic */ ep6 d;

    public gp6(ep6 ep6Var, ip6 ip6Var, long j, cw6 cw6Var) {
        this.d = ep6Var;
        this.a = ip6Var;
        this.b = j;
        this.c = cw6Var;
    }

    @Override // rn6.b
    public void a(List<ap6> list) throws Throwable {
        this.d.L(list, this.b, this.c, this.d.n() == 7 ? 2 : 1);
    }

    @Override // rn6.b
    public long b() {
        return 0L;
    }

    @Override // rn6.b
    public int c() {
        return 250;
    }

    @Override // rn6.b
    public boolean d() {
        return false;
    }

    @Override // rn6.b
    public boolean e() {
        return true;
    }

    @Override // rn6.b
    public boolean f() {
        return false;
    }

    @Override // rn6.b
    public Set<String> g() {
        return null;
    }

    @Override // rn6.b
    public String stream() {
        return this.a.f;
    }
}
