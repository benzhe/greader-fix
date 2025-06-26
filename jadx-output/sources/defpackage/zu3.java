package defpackage;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zu3 {
    public final Date a;
    public final String b;
    public final List<String> c;
    public final int d;
    public final Set<String> e;
    public final Location f;
    public final boolean g;
    public final Bundle h;
    public final Map<Class<? extends NetworkExtras>, NetworkExtras> i;
    public final String j;
    public final String k;
    public final SearchAdRequest l;
    public final int m;
    public final Set<String> n;
    public final Bundle o;
    public final Set<String> p;
    public final boolean q;
    public final AdInfo r;
    public final int s;
    public final String t;
    public final int u;

    public zu3(cv3 cv3Var, SearchAdRequest searchAdRequest) {
        this.a = cv3Var.g;
        this.b = cv3Var.h;
        this.c = cv3Var.i;
        this.d = cv3Var.j;
        this.e = Collections.unmodifiableSet(cv3Var.a);
        this.f = cv3Var.k;
        this.g = cv3Var.l;
        this.h = cv3Var.b;
        this.i = Collections.unmodifiableMap(cv3Var.c);
        this.j = cv3Var.m;
        this.k = cv3Var.n;
        this.l = searchAdRequest;
        this.m = cv3Var.o;
        this.n = Collections.unmodifiableSet(cv3Var.d);
        this.o = cv3Var.e;
        this.p = Collections.unmodifiableSet(cv3Var.f);
        this.q = cv3Var.p;
        this.r = cv3Var.q;
        this.s = cv3Var.r;
        this.t = cv3Var.s;
        this.u = cv3Var.t;
    }

    public final Bundle a(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.h.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final boolean b(Context context) {
        RequestConfiguration requestConfiguration = gv3.g().g;
        zr0 zr0Var = os3.j.a;
        String strH = zr0.h(context);
        return this.n.contains(strH) || requestConfiguration.getTestDeviceIds().contains(strH);
    }

    public final List<String> c() {
        return new ArrayList(this.c);
    }
}
