package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.d0;
import defpackage.la5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class e85 {
    public static final TimeInterpolator F = i55.c;
    public static final int[] G = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] H = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    public static final int[] I = {R.attr.state_focused, R.attr.state_enabled};
    public static final int[] J = {R.attr.state_hovered, R.attr.state_enabled};
    public static final int[] K = {R.attr.state_enabled};
    public static final int[] L = new int[0];
    public ViewTreeObserver.OnPreDrawListener E;
    public pa5 a;
    public la5 b;
    public Drawable c;
    public z75 d;
    public Drawable e;
    public boolean f;
    public float h;
    public float i;
    public float j;
    public int k;
    public final o85 l;
    public o55 m;
    public o55 n;
    public Animator o;
    public o55 p;
    public o55 q;
    public float r;
    public int t;
    public ArrayList<Animator.AnimatorListener> v;
    public ArrayList<Animator.AnimatorListener> w;
    public ArrayList<e> x;
    public final FloatingActionButton y;
    public final da5 z;
    public boolean g = true;
    public float s = 1.0f;
    public int u = 0;
    public final Rect A = new Rect();
    public final RectF B = new RectF();
    public final RectF C = new RectF();
    public final Matrix D = new Matrix();

    public class a extends n55 {
        public a() {
        }

        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            e85.this.s = f;
            matrix.getValues(this.a);
            matrix2.getValues(this.b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.b;
                float f2 = fArr[i];
                float[] fArr2 = this.a;
                fArr[i] = ((f2 - fArr2[i]) * f) + fArr2[i];
            }
            this.c.setValues(this.b);
            return this.c;
        }
    }

    public class b extends h {
        public b(e85 e85Var) {
            super(null);
        }

        @Override // e85.h
        public float a() {
            return 0.0f;
        }
    }

    public class c extends h {
        public c() {
            super(null);
        }

        @Override // e85.h
        public float a() {
            e85 e85Var = e85.this;
            return e85Var.h + e85Var.i;
        }
    }

    public class d extends h {
        public d() {
            super(null);
        }

        @Override // e85.h
        public float a() {
            e85 e85Var = e85.this;
            return e85Var.h + e85Var.j;
        }
    }

    public interface e {
        void a();

        void b();
    }

    public interface f {
    }

    public class g extends h {
        public g() {
            super(null);
        }

        @Override // e85.h
        public float a() {
            return e85.this.h;
        }
    }

    public abstract class h extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        public boolean a;
        public float b;
        public float c;

        public h(c85 c85Var) {
        }

        public abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e85.this.x((int) this.c);
            this.a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.a) {
                la5 la5Var = e85.this.b;
                this.b = la5Var == null ? 0.0f : la5Var.e.o;
                this.c = a();
                this.a = true;
            }
            e85 e85Var = e85.this;
            float f = this.b;
            e85Var.x((int) ((valueAnimator.getAnimatedFraction() * (this.c - f)) + f));
        }
    }

    public e85(FloatingActionButton floatingActionButton, da5 da5Var) {
        this.y = floatingActionButton;
        this.z = da5Var;
        o85 o85Var = new o85();
        this.l = o85Var;
        o85Var.a(G, c(new d()));
        o85Var.a(H, c(new c()));
        o85Var.a(I, c(new c()));
        o85Var.a(J, c(new c()));
        o85Var.a(K, c(new g()));
        o85Var.a(L, c(new b(this)));
        this.r = floatingActionButton.getRotation();
    }

    public final void a(float f2, Matrix matrix) {
        matrix.reset();
        if (this.y.getDrawable() == null || this.t == 0) {
            return;
        }
        RectF rectF = this.B;
        RectF rectF2 = this.C;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i = this.t;
        rectF2.set(0.0f, 0.0f, i, i);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i2 = this.t;
        matrix.postScale(f2, f2, i2 / 2.0f, i2 / 2.0f);
    }

    public final AnimatorSet b(o55 o55Var, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        o55Var.f("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        o55Var.f("scale").a(objectAnimatorOfFloat2);
        int i = Build.VERSION.SDK_INT;
        if (i == 26) {
            objectAnimatorOfFloat2.setEvaluator(new f85(this));
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        o55Var.f("scale").a(objectAnimatorOfFloat3);
        if (i == 26) {
            objectAnimatorOfFloat3.setEvaluator(new f85(this));
        }
        arrayList.add(objectAnimatorOfFloat3);
        a(f4, this.D);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.y, new m55(), new a(), new Matrix(this.D));
        o55Var.f("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        c50.C0(animatorSet, arrayList);
        return animatorSet;
    }

    public final ValueAnimator c(h hVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(F);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(hVar);
        valueAnimator.addUpdateListener(hVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public float d() {
        throw null;
    }

    public void e(Rect rect) {
        int sizeDimension = this.f ? (this.k - this.y.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.g ? d() + this.j : 0.0f));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    public void f(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        throw null;
    }

    public boolean g() {
        return this.y.getVisibility() == 0 ? this.u == 1 : this.u != 2;
    }

    public boolean h() {
        return this.y.getVisibility() != 0 ? this.u == 2 : this.u != 1;
    }

    public void i() {
        throw null;
    }

    public void j() {
        throw null;
    }

    public void k(int[] iArr) {
        throw null;
    }

    public void l(float f2, float f3, float f4) {
        throw null;
    }

    public void m() {
        ArrayList<e> arrayList = this.x;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    public void n() {
        ArrayList<e> arrayList = this.x;
        if (arrayList != null) {
            Iterator<e> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    public boolean o() {
        throw null;
    }

    public final void p(float f2) {
        this.s = f2;
        Matrix matrix = this.D;
        a(f2, matrix);
        this.y.setImageMatrix(matrix);
    }

    public void q(ColorStateList colorStateList) {
        throw null;
    }

    public final void r(pa5 pa5Var) {
        this.a = pa5Var;
        la5 la5Var = this.b;
        if (la5Var != null) {
            la5Var.e.a = pa5Var;
            la5Var.invalidateSelf();
        }
        Object obj = this.c;
        if (obj instanceof ta5) {
            ((ta5) obj).setShapeAppearanceModel(pa5Var);
        }
        z75 z75Var = this.d;
        if (z75Var != null) {
            z75Var.o = pa5Var;
            z75Var.invalidateSelf();
        }
    }

    public boolean s() {
        throw null;
    }

    public final boolean t() {
        FloatingActionButton floatingActionButton = this.y;
        AtomicInteger atomicInteger = ha.a;
        return floatingActionButton.isLaidOut() && !this.y.isInEditMode();
    }

    public final boolean u() {
        return !this.f || this.y.getSizeDimension() >= this.k;
    }

    public void v() {
        throw null;
    }

    public final void w() {
        Rect rect = this.A;
        e(rect);
        d0.h.h(this.e, "Didn't initialize content background");
        if (s()) {
            InsetDrawable insetDrawable = new InsetDrawable(this.e, rect.left, rect.top, rect.right, rect.bottom);
            FloatingActionButton.b bVar = (FloatingActionButton.b) this.z;
            Objects.requireNonNull(bVar);
            super/*android.widget.ImageButton*/.setBackgroundDrawable(insetDrawable);
        } else {
            da5 da5Var = this.z;
            Drawable drawable = this.e;
            FloatingActionButton.b bVar2 = (FloatingActionButton.b) da5Var;
            Objects.requireNonNull(bVar2);
            if (drawable != null) {
                super/*android.widget.ImageButton*/.setBackgroundDrawable(drawable);
            }
        }
        da5 da5Var2 = this.z;
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        FloatingActionButton.b bVar3 = (FloatingActionButton.b) da5Var2;
        FloatingActionButton.this.q.set(i, i2, i3, i4);
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        int i5 = floatingActionButton.n;
        floatingActionButton.setPadding(i + i5, i2 + i5, i3 + i5, i4 + i5);
    }

    public void x(float f2) {
        la5 la5Var = this.b;
        if (la5Var != null) {
            la5.b bVar = la5Var.e;
            if (bVar.o != f2) {
                bVar.o = f2;
                la5Var.E();
            }
        }
    }
}
