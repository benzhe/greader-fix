package defpackage;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import defpackage.v65;

/* loaded from: classes.dex */
public interface w65 extends v65.a {

    public static class b implements TypeEvaluator<e> {
        public static final TypeEvaluator<e> b = new b();
        public final e a = new e(null);

        @Override // android.animation.TypeEvaluator
        public e evaluate(float f, e eVar, e eVar2) {
            e eVar3 = eVar;
            e eVar4 = eVar2;
            e eVar5 = this.a;
            float fR0 = c50.r0(eVar3.a, eVar4.a, f);
            float fR02 = c50.r0(eVar3.b, eVar4.b, f);
            float fR03 = c50.r0(eVar3.c, eVar4.c, f);
            eVar5.a = fR0;
            eVar5.b = fR02;
            eVar5.c = fR03;
            return this.a;
        }
    }

    public static class c extends Property<w65, e> {
        public static final Property<w65, e> a = new c("circularReveal");

        public c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        public e get(w65 w65Var) {
            return w65Var.getRevealInfo();
        }

        @Override // android.util.Property
        public void set(w65 w65Var, e eVar) {
            w65Var.setRevealInfo(eVar);
        }
    }

    public static class d extends Property<w65, Integer> {
        public static final Property<w65, Integer> a = new d("circularRevealScrimColor");

        public d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public Integer get(w65 w65Var) {
            return Integer.valueOf(w65Var.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public void set(w65 w65Var, Integer num) {
            w65Var.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {
        public float a;
        public float b;
        public float c;

        public e() {
        }

        public e(a aVar) {
        }

        public e(float f, float f2, float f3) {
            this.a = f;
            this.b = f2;
            this.c = f3;
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(e eVar);
}
