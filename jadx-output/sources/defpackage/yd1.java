package defpackage;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class yd1 {
    public final Set<sf1<er3>> a;
    public final Set<sf1<ca1>> b;
    public final Set<sf1<va1>> c;
    public final Set<sf1<xb1>> d;
    public final Set<sf1<ob1>> e;
    public final Set<sf1<da1>> f;
    public final Set<sf1<ra1>> g;
    public final Set<sf1<AdMetadataListener>> h;
    public final Set<sf1<AppEventListener>> i;
    public final Set<sf1<hc1>> j;
    public final Set<sf1<zzp>> k;
    public final Set<sf1<sc1>> l;
    public final mi2 m;
    public ba1 n;
    public v22 o;

    public static class a {
        public Set<sf1<sc1>> a = new HashSet();
        public Set<sf1<er3>> b = new HashSet();
        public Set<sf1<ca1>> c = new HashSet();
        public Set<sf1<va1>> d = new HashSet();
        public Set<sf1<xb1>> e = new HashSet();
        public Set<sf1<ob1>> f = new HashSet();
        public Set<sf1<da1>> g = new HashSet();
        public Set<sf1<AdMetadataListener>> h = new HashSet();
        public Set<sf1<AppEventListener>> i = new HashSet();
        public Set<sf1<ra1>> j = new HashSet();
        public Set<sf1<hc1>> k = new HashSet();
        public Set<sf1<zzp>> l = new HashSet();
        public mi2 m;

        public final a a(AppEventListener appEventListener, Executor executor) {
            this.i.add(new sf1<>(appEventListener, executor));
            return this;
        }

        public final a b(ca1 ca1Var, Executor executor) {
            this.c.add(new sf1<>(ca1Var, executor));
            return this;
        }

        public final a c(da1 da1Var, Executor executor) {
            this.g.add(new sf1<>(da1Var, executor));
            return this;
        }

        public final a d(ob1 ob1Var, Executor executor) {
            this.f.add(new sf1<>(ob1Var, executor));
            return this;
        }

        public final a e(hc1 hc1Var, Executor executor) {
            this.k.add(new sf1<>(hc1Var, executor));
            return this;
        }

        public final a f(sc1 sc1Var, Executor executor) {
            this.a.add(new sf1<>(sc1Var, executor));
            return this;
        }

        public final a g(er3 er3Var, Executor executor) {
            this.b.add(new sf1<>(er3Var, executor));
            return this;
        }

        public final yd1 h() {
            return new yd1(this, null);
        }
    }

    public yd1(a aVar, ae1 ae1Var) {
        this.a = aVar.b;
        this.c = aVar.d;
        this.d = aVar.e;
        this.b = aVar.c;
        this.e = aVar.f;
        this.f = aVar.g;
        this.g = aVar.j;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.k;
        this.m = aVar.m;
        this.k = aVar.l;
        this.l = aVar.a;
    }
}
