package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.R$color;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class h85 extends e85 {

    public static class a extends la5 {
        public a(pa5 pa5Var) {
            super(pa5Var);
        }

        @Override // defpackage.la5, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public h85(FloatingActionButton floatingActionButton, da5 da5Var) {
        super(floatingActionButton, da5Var);
    }

    @Override // defpackage.e85
    public float d() {
        return this.y.getElevation();
    }

    @Override // defpackage.e85
    public void e(Rect rect) {
        if (FloatingActionButton.this.p) {
            super.e(rect);
        } else if (u()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.k - this.y.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // defpackage.e85
    public void f(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable layerDrawable;
        pa5 pa5Var = this.a;
        Objects.requireNonNull(pa5Var);
        a aVar = new a(pa5Var);
        this.b = aVar;
        aVar.setTintList(colorStateList);
        if (mode != null) {
            this.b.setTintMode(mode);
        }
        this.b.q(this.y.getContext());
        if (i > 0) {
            Context context = this.y.getContext();
            pa5 pa5Var2 = this.a;
            Objects.requireNonNull(pa5Var2);
            z75 z75Var = new z75(pa5Var2);
            int iB = u7.b(context, R$color.design_fab_stroke_top_outer_color);
            int iB2 = u7.b(context, R$color.design_fab_stroke_top_inner_color);
            int iB3 = u7.b(context, R$color.design_fab_stroke_end_inner_color);
            int iB4 = u7.b(context, R$color.design_fab_stroke_end_outer_color);
            z75Var.i = iB;
            z75Var.j = iB2;
            z75Var.k = iB3;
            z75Var.l = iB4;
            float f = i;
            if (z75Var.h != f) {
                z75Var.h = f;
                z75Var.b.setStrokeWidth(f * 1.3333f);
                z75Var.n = true;
                z75Var.invalidateSelf();
            }
            z75Var.b(colorStateList);
            this.d = z75Var;
            z75 z75Var2 = this.d;
            Objects.requireNonNull(z75Var2);
            la5 la5Var = this.b;
            Objects.requireNonNull(la5Var);
            layerDrawable = new LayerDrawable(new Drawable[]{z75Var2, la5Var});
        } else {
            this.d = null;
            layerDrawable = this.b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(ba5.c(colorStateList2), layerDrawable, null);
        this.c = rippleDrawable;
        this.e = rippleDrawable;
    }

    @Override // defpackage.e85
    public void i() {
    }

    @Override // defpackage.e85
    public void j() {
        w();
    }

    @Override // defpackage.e85
    public void k(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.y.isEnabled()) {
                this.y.setElevation(0.0f);
                this.y.setTranslationZ(0.0f);
                return;
            }
            this.y.setElevation(this.h);
            if (this.y.isPressed()) {
                this.y.setTranslationZ(this.j);
            } else if (this.y.isFocused() || this.y.isHovered()) {
                this.y.setTranslationZ(this.i);
            } else {
                this.y.setTranslationZ(0.0f);
            }
        }
    }

    @Override // defpackage.e85
    public void l(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.y.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(e85.G, y(f, f3));
            stateListAnimator.addState(e85.H, y(f, f2));
            stateListAnimator.addState(e85.I, y(f, f2));
            stateListAnimator.addState(e85.J, y(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.y;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(e85.F);
            stateListAnimator.addState(e85.K, animatorSet);
            stateListAnimator.addState(e85.L, y(0.0f, 0.0f));
            this.y.setStateListAnimator(stateListAnimator);
        }
        if (s()) {
            w();
        }
    }

    @Override // defpackage.e85
    public boolean o() {
        return false;
    }

    @Override // defpackage.e85
    public void q(ColorStateList colorStateList) {
        Drawable drawable = this.c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(ba5.c(colorStateList));
        } else if (drawable != null) {
            drawable.setTintList(ba5.c(colorStateList));
        }
    }

    @Override // defpackage.e85
    public boolean s() {
        return FloatingActionButton.this.p || !u();
    }

    @Override // defpackage.e85
    public void v() {
    }

    public final Animator y(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(e85.F);
        return animatorSet;
    }
}
