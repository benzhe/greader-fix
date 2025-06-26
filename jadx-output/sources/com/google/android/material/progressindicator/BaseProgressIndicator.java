package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.f95;
import defpackage.fc5;
import defpackage.g95;
import defpackage.l95;
import defpackage.o95;
import defpackage.oi;
import defpackage.p95;
import defpackage.r95;
import defpackage.t85;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class BaseProgressIndicator<S extends g95> extends ProgressBar {
    public static final int q = R$style.Widget_MaterialComponents_ProgressIndicator;
    public S e;
    public int f;
    public boolean g;
    public boolean h;
    public final int i;
    public f95 j;
    public boolean k;
    public int l;
    public final Runnable m;
    public final Runnable n;
    public final oi o;
    public final oi p;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            if (baseProgressIndicator.i > 0) {
                SystemClock.uptimeMillis();
            }
            baseProgressIndicator.setVisibility(0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            int i = BaseProgressIndicator.q;
            boolean z = false;
            ((o95) baseProgressIndicator.getCurrentDrawable()).h(false, false, true);
            if ((baseProgressIndicator.getProgressDrawable() == null || !baseProgressIndicator.getProgressDrawable().isVisible()) && (baseProgressIndicator.getIndeterminateDrawable() == null || !baseProgressIndicator.getIndeterminateDrawable().isVisible())) {
                z = true;
            }
            if (z) {
                baseProgressIndicator.setVisibility(4);
            }
            Objects.requireNonNull(BaseProgressIndicator.this);
        }
    }

    public class c extends oi {
        public c() {
        }

        @Override // defpackage.oi
        public void a(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator.this.setProgressCompat(0, false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f, baseProgressIndicator.g);
        }
    }

    public class d extends oi {
        public d() {
        }

        @Override // defpackage.oi
        public void a(Drawable drawable) {
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            if (baseProgressIndicator.k) {
                return;
            }
            baseProgressIndicator.setVisibility(baseProgressIndicator.l);
        }
    }

    public BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(fc5.a(context, attributeSet, i, q), attributeSet, i);
        this.k = false;
        this.l = 4;
        this.m = new a();
        this.n = new b();
        this.o = new c();
        this.p = new d();
        Context context2 = getContext();
        this.e = (S) b(context2, attributeSet);
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.BaseProgressIndicator, i, i2, new int[0]);
        typedArrayD.getInt(R$styleable.BaseProgressIndicator_showDelay, -1);
        this.i = Math.min(typedArrayD.getInt(R$styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayD.recycle();
        this.j = new f95();
        this.h = true;
    }

    private p95<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().p;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().p;
    }

    public void a(boolean z) {
        if (this.h) {
            ((o95) getCurrentDrawable()).h(c(), false, z);
        }
    }

    public abstract S b(Context context, AttributeSet attributeSet);

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c() {
        /*
            r4 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = defpackage.ha.a
            boolean r0 = r4.isAttachedToWindow()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L34
            int r0 = r4.getWindowVisibility()
            if (r0 != 0) goto L34
            r0 = r4
        L11:
            int r3 = r0.getVisibility()
            if (r3 == 0) goto L18
            goto L26
        L18:
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L28
            int r0 = r4.getWindowVisibility()
            if (r0 != 0) goto L26
        L24:
            r0 = 1
            goto L2d
        L26:
            r0 = 0
            goto L2d
        L28:
            boolean r3 = r0 instanceof android.view.View
            if (r3 != 0) goto L31
            goto L24
        L2d:
            if (r0 == 0) goto L34
            r1 = 1
            goto L34
        L31:
            android.view.View r0 = (android.view.View) r0
            goto L11
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.BaseProgressIndicator.c():boolean");
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.e.f;
    }

    public int[] getIndicatorColor() {
        return this.e.c;
    }

    public int getShowAnimationBehavior() {
        return this.e.e;
    }

    public int getTrackColor() {
        return this.e.d;
    }

    public int getTrackCornerRadius() {
        return this.e.b;
    }

    public int getTrackThickness() {
        return this.e.a;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().q.d(this.o);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().g(this.p);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().g(this.p);
        }
        if (c()) {
            if (this.i > 0) {
                SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.n);
        removeCallbacks(this.m);
        ((o95) getCurrentDrawable()).d();
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().j(this.p);
            getIndeterminateDrawable().q.g();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().j(this.p);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        int iSave = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        p95<S> currentDrawingDelegate = getCurrentDrawingDelegate();
        if (currentDrawingDelegate == null) {
            return;
        }
        int iE = currentDrawingDelegate.e();
        int iD = currentDrawingDelegate.d();
        setMeasuredDimension(iE < 0 ? getMeasuredWidth() : iE + getPaddingLeft() + getPaddingRight(), iD < 0 ? getMeasuredHeight() : iD + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a(i == 0);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        a(false);
    }

    public void setAnimatorDurationScaleProvider(f95 f95Var) {
        this.j = f95Var;
        if (getProgressDrawable() != null) {
            getProgressDrawable().g = f95Var;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().g = f95Var;
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.e.f = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        if (z == isIndeterminate()) {
            return;
        }
        if (c() && z) {
            throw new IllegalStateException("Cannot switch to indeterminate mode while the progress indicator is visible.");
        }
        o95 o95Var = (o95) getCurrentDrawable();
        if (o95Var != null) {
            o95Var.d();
        }
        super.setIndeterminate(z);
        o95 o95Var2 = (o95) getCurrentDrawable();
        if (o95Var2 != null) {
            o95Var2.h(c(), false, false);
        }
        this.k = false;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof r95)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((o95) drawable).d();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{c50.Y(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.e.c = iArr;
        getIndeterminateDrawable().q.c();
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i, false);
    }

    public void setProgressCompat(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f = i;
            this.g = z;
            this.k = true;
            if (!getIndeterminateDrawable().isVisible() || this.j.a(getContext().getContentResolver()) == 0.0f) {
                this.o.a(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().q.e();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof l95)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            l95 l95Var = (l95) drawable;
            l95Var.d();
            super.setProgressDrawable(l95Var);
            l95Var.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.e.e = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        S s = this.e;
        if (s.d != i) {
            s.d = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        S s = this.e;
        if (s.b != i) {
            s.b = Math.min(i, s.a / 2);
        }
    }

    public void setTrackThickness(int i) {
        S s = this.e;
        if (s.a != i) {
            s.a = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.l = i;
    }

    @Override // android.widget.ProgressBar
    public r95<S> getIndeterminateDrawable() {
        return (r95) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    public l95<S> getProgressDrawable() {
        return (l95) super.getProgressDrawable();
    }
}
