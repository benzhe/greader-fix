package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class z1 {
    public final View a;
    public a3 d;
    public a3 e;
    public a3 f;
    public int c = -1;
    public final b2 b = b2.a();

    public z1(View view) {
        this.a = view;
    }

    public void a() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 ? i == 21 : this.d != null) {
                if (this.f == null) {
                    this.f = new a3();
                }
                a3 a3Var = this.f;
                a3Var.a = null;
                a3Var.d = false;
                a3Var.b = null;
                a3Var.c = false;
                View view = this.a;
                AtomicInteger atomicInteger = ha.a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    a3Var.d = true;
                    a3Var.a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = this.a.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    a3Var.c = true;
                    a3Var.b = backgroundTintMode;
                }
                if (a3Var.d || a3Var.c) {
                    b2.f(background, a3Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            a3 a3Var2 = this.e;
            if (a3Var2 != null) {
                b2.f(background, a3Var2, this.a.getDrawableState());
                return;
            }
            a3 a3Var3 = this.d;
            if (a3Var3 != null) {
                b2.f(background, a3Var3, this.a.getDrawableState());
            }
        }
    }

    public ColorStateList b() {
        a3 a3Var = this.e;
        if (a3Var != null) {
            return a3Var.a;
        }
        return null;
    }

    public PorterDuff.Mode c() {
        a3 a3Var = this.e;
        if (a3Var != null) {
            return a3Var.b;
        }
        return null;
    }

    public void d(AttributeSet attributeSet, int i) {
        Context context = this.a.getContext();
        int[] iArr = R$styleable.ViewBackgroundHelper;
        c3 c3VarR = c3.r(context, attributeSet, iArr, i, 0);
        View view = this.a;
        ha.r(view, view.getContext(), iArr, attributeSet, c3VarR.b, i, 0);
        try {
            int i2 = R$styleable.ViewBackgroundHelper_android_background;
            if (c3VarR.p(i2)) {
                this.c = c3VarR.m(i2, -1);
                ColorStateList colorStateListD = this.b.d(this.a.getContext(), this.c);
                if (colorStateListD != null) {
                    g(colorStateListD);
                }
            }
            int i3 = R$styleable.ViewBackgroundHelper_backgroundTint;
            if (c3VarR.p(i3)) {
                View view2 = this.a;
                ColorStateList colorStateListC = c3VarR.c(i3);
                int i4 = Build.VERSION.SDK_INT;
                view2.setBackgroundTintList(colorStateListC);
                if (i4 == 21) {
                    Drawable background = view2.getBackground();
                    boolean z = (view2.getBackgroundTintList() == null && view2.getBackgroundTintMode() == null) ? false : true;
                    if (background != null && z) {
                        if (background.isStateful()) {
                            background.setState(view2.getDrawableState());
                        }
                        view2.setBackground(background);
                    }
                }
            }
            int i5 = R$styleable.ViewBackgroundHelper_backgroundTintMode;
            if (c3VarR.p(i5)) {
                View view3 = this.a;
                PorterDuff.Mode modeD = m2.d(c3VarR.j(i5, -1), null);
                int i6 = Build.VERSION.SDK_INT;
                view3.setBackgroundTintMode(modeD);
                if (i6 == 21) {
                    Drawable background2 = view3.getBackground();
                    boolean z2 = (view3.getBackgroundTintList() == null && view3.getBackgroundTintMode() == null) ? false : true;
                    if (background2 != null && z2) {
                        if (background2.isStateful()) {
                            background2.setState(view3.getDrawableState());
                        }
                        view3.setBackground(background2);
                    }
                }
            }
            c3VarR.b.recycle();
        } catch (Throwable th) {
            c3VarR.b.recycle();
            throw th;
        }
    }

    public void e() {
        this.c = -1;
        g(null);
        a();
    }

    public void f(int i) {
        this.c = i;
        b2 b2Var = this.b;
        g(b2Var != null ? b2Var.d(this.a.getContext(), i) : null);
        a();
    }

    public void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new a3();
            }
            a3 a3Var = this.d;
            a3Var.a = colorStateList;
            a3Var.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new a3();
        }
        a3 a3Var = this.e;
        a3Var.a = colorStateList;
        a3Var.d = true;
        a();
    }

    public void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new a3();
        }
        a3 a3Var = this.e;
        a3Var.b = mode;
        a3Var.c = true;
        a();
    }
}
