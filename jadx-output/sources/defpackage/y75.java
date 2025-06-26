package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class y75 implements i85 {
    public final Context a;
    public final ExtendedFloatingActionButton b;
    public final ArrayList<Animator.AnimatorListener> c = new ArrayList<>();
    public final x75 d;
    public o55 e;
    public o55 f;

    public class a extends Property<ExtendedFloatingActionButton, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
            return Float.valueOf(i55.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton2.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton2.J.getColorForState(extendedFloatingActionButton2.getDrawableState(), y75.this.b.J.getDefaultColor()))));
        }

        @Override // android.util.Property
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
            Float f2 = f;
            int colorForState = extendedFloatingActionButton2.J.getColorForState(extendedFloatingActionButton2.getDrawableState(), y75.this.b.J.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (i55.a(0.0f, Color.alpha(colorForState) / 255.0f, f2.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f2.floatValue() == 1.0f) {
                extendedFloatingActionButton2.l(extendedFloatingActionButton2.J);
            } else {
                extendedFloatingActionButton2.l(colorStateListValueOf);
            }
        }
    }

    public y75(ExtendedFloatingActionButton extendedFloatingActionButton, x75 x75Var) {
        this.b = extendedFloatingActionButton;
        this.a = extendedFloatingActionButton.getContext();
        this.d = x75Var;
    }

    @Override // defpackage.i85
    public void a() {
        this.d.a = null;
    }

    @Override // defpackage.i85
    public void e() {
        this.d.a = null;
    }

    @Override // defpackage.i85
    public AnimatorSet f() {
        return h(i());
    }

    public AnimatorSet h(o55 o55Var) {
        ArrayList arrayList = new ArrayList();
        if (o55Var.g("opacity")) {
            arrayList.add(o55Var.d("opacity", this.b, View.ALPHA));
        }
        if (o55Var.g("scale")) {
            arrayList.add(o55Var.d("scale", this.b, View.SCALE_Y));
            arrayList.add(o55Var.d("scale", this.b, View.SCALE_X));
        }
        if (o55Var.g("width")) {
            arrayList.add(o55Var.d("width", this.b, ExtendedFloatingActionButton.L));
        }
        if (o55Var.g("height")) {
            arrayList.add(o55Var.d("height", this.b, ExtendedFloatingActionButton.M));
        }
        if (o55Var.g("paddingStart")) {
            arrayList.add(o55Var.d("paddingStart", this.b, ExtendedFloatingActionButton.N));
        }
        if (o55Var.g("paddingEnd")) {
            arrayList.add(o55Var.d("paddingEnd", this.b, ExtendedFloatingActionButton.O));
        }
        if (o55Var.g("labelOpacity")) {
            arrayList.add(o55Var.d("labelOpacity", this.b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        c50.C0(animatorSet, arrayList);
        return animatorSet;
    }

    public final o55 i() {
        o55 o55Var = this.f;
        if (o55Var != null) {
            return o55Var;
        }
        if (this.e == null) {
            this.e = o55.b(this.a, b());
        }
        o55 o55Var2 = this.e;
        Objects.requireNonNull(o55Var2);
        return o55Var2;
    }

    @Override // defpackage.i85
    public void onAnimationStart(Animator animator) {
        x75 x75Var = this.d;
        Animator animator2 = x75Var.a;
        if (animator2 != null) {
            animator2.cancel();
        }
        x75Var.a = animator;
    }
}
