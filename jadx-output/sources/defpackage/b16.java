package defpackage;

import android.view.LayoutInflater;

/* loaded from: classes.dex */
public final class b16 implements d16 {
    public jj7<f06> a;
    public jj7<LayoutInflater> b;
    public jj7<j96> c;
    public jj7<t06> d;
    public jj7<v06> e;
    public jj7<o06> f;
    public jj7<r06> g;

    public static final class b {
        public t16 a;

        public b(a aVar) {
        }

        public d16 a() {
            c50.v(this.a, t16.class);
            return new b16(this.a, null);
        }
    }

    public b16(t16 t16Var, a aVar) {
        jj7 u16Var = new u16(t16Var);
        Object obj = rz5.c;
        this.a = u16Var instanceof rz5 ? u16Var : new rz5(u16Var);
        jj7 w16Var = new w16(t16Var);
        w16Var = w16Var instanceof rz5 ? w16Var : new rz5(w16Var);
        this.b = w16Var;
        v16 v16Var = new v16(t16Var);
        this.c = v16Var;
        jj7 u06Var = new u06(this.a, w16Var, v16Var);
        this.d = u06Var instanceof rz5 ? u06Var : new rz5(u06Var);
        jj7 w06Var = new w06(this.a, this.b, this.c);
        this.e = w06Var instanceof rz5 ? w06Var : new rz5(w06Var);
        jj7 p06Var = new p06(this.a, this.b, this.c);
        this.f = p06Var instanceof rz5 ? p06Var : new rz5(p06Var);
        jj7 s06Var = new s06(this.a, this.b, this.c);
        this.g = s06Var instanceof rz5 ? s06Var : new rz5(s06Var);
    }

    public static b a() {
        return new b(null);
    }
}
