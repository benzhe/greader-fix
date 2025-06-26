package defpackage;

import android.app.Application;
import android.util.DisplayMetrics;
import defpackage.d06;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class c16 implements e16 {
    public jj7<Application> a;
    public jj7<c06> b;
    public jj7<tz5> c;
    public jj7<DisplayMetrics> d;
    public jj7<f06> e;
    public jj7<f06> f;
    public jj7<f06> g;
    public jj7<f06> h;
    public jj7<f06> i;
    public jj7<f06> j;
    public jj7<f06> k;
    public jj7<f06> l;

    public c16(f16 f16Var, j16 j16Var, a aVar) {
        jj7 g16Var = new g16(f16Var);
        Object obj = rz5.c;
        this.a = g16Var instanceof rz5 ? g16Var : new rz5(g16Var);
        jj7 jj7Var = d06.a.a;
        this.b = jj7Var instanceof rz5 ? jj7Var : new rz5(jj7Var);
        jj7 uz5Var = new uz5(this.a);
        this.c = uz5Var instanceof rz5 ? uz5Var : new rz5(uz5Var);
        o16 o16Var = new o16(j16Var, this.a);
        this.d = o16Var;
        this.e = new s16(j16Var, o16Var);
        this.f = new p16(j16Var, o16Var);
        this.g = new q16(j16Var, o16Var);
        this.h = new r16(j16Var, o16Var);
        this.i = new m16(j16Var, o16Var);
        this.j = new n16(j16Var, o16Var);
        this.k = new l16(j16Var, o16Var);
        this.l = new k16(j16Var, o16Var);
    }

    @Override // defpackage.e16
    public c06 a() {
        return this.b.get();
    }

    @Override // defpackage.e16
    public Application b() {
        return this.a.get();
    }

    @Override // defpackage.e16
    public Map<String, jj7<f06>> c() {
        sz5 sz5Var = new sz5(8);
        sz5Var.a.put("IMAGE_ONLY_PORTRAIT", this.e);
        sz5Var.a.put("IMAGE_ONLY_LANDSCAPE", this.f);
        sz5Var.a.put("MODAL_LANDSCAPE", this.g);
        sz5Var.a.put("MODAL_PORTRAIT", this.h);
        sz5Var.a.put("CARD_LANDSCAPE", this.i);
        sz5Var.a.put("CARD_PORTRAIT", this.j);
        sz5Var.a.put("BANNER_PORTRAIT", this.k);
        sz5Var.a.put("BANNER_LANDSCAPE", this.l);
        return sz5Var.a.size() != 0 ? Collections.unmodifiableMap(sz5Var.a) : Collections.emptyMap();
    }

    @Override // defpackage.e16
    public tz5 d() {
        return this.c.get();
    }
}
