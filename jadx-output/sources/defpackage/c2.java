package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;

/* loaded from: classes.dex */
public class c2 {
    public final ImageView a;
    public a3 b;
    public a3 c;

    public c2(ImageView imageView) {
        this.a = imageView;
    }

    public void a() {
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            m2.b(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 && i == 21) {
                if (this.c == null) {
                    this.c = new a3();
                }
                a3 a3Var = this.c;
                a3Var.a = null;
                a3Var.d = false;
                a3Var.b = null;
                a3Var.c = false;
                ColorStateList imageTintList = this.a.getImageTintList();
                if (imageTintList != null) {
                    a3Var.d = true;
                    a3Var.a = imageTintList;
                }
                PorterDuff.Mode imageTintMode = this.a.getImageTintMode();
                if (imageTintMode != null) {
                    a3Var.c = true;
                    a3Var.b = imageTintMode;
                }
                if (a3Var.d || a3Var.c) {
                    b2.f(drawable, a3Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            a3 a3Var2 = this.b;
            if (a3Var2 != null) {
                b2.f(drawable, a3Var2, this.a.getDrawableState());
            }
        }
    }

    public void b(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int iM;
        Context context = this.a.getContext();
        int[] iArr = R$styleable.AppCompatImageView;
        c3 c3VarR = c3.r(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.a;
        ha.r(imageView, imageView.getContext(), iArr, attributeSet, c3VarR.b, i, 0);
        try {
            Drawable drawable3 = this.a.getDrawable();
            if (drawable3 == null && (iM = c3VarR.m(R$styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable3 = p0.b(this.a.getContext(), iM)) != null) {
                this.a.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                m2.b(drawable3);
            }
            int i2 = R$styleable.AppCompatImageView_tint;
            if (c3VarR.p(i2)) {
                ImageView imageView2 = this.a;
                ColorStateList colorStateListC = c3VarR.c(i2);
                int i3 = Build.VERSION.SDK_INT;
                imageView2.setImageTintList(colorStateListC);
                if (i3 == 21 && (drawable2 = imageView2.getDrawable()) != null && imageView2.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView2.getDrawableState());
                    }
                    imageView2.setImageDrawable(drawable2);
                }
            }
            int i4 = R$styleable.AppCompatImageView_tintMode;
            if (c3VarR.p(i4)) {
                ImageView imageView3 = this.a;
                PorterDuff.Mode modeD = m2.d(c3VarR.j(i4, -1), null);
                int i5 = Build.VERSION.SDK_INT;
                imageView3.setImageTintMode(modeD);
                if (i5 == 21 && (drawable = imageView3.getDrawable()) != null && imageView3.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView3.getDrawableState());
                    }
                    imageView3.setImageDrawable(drawable);
                }
            }
            c3VarR.b.recycle();
        } catch (Throwable th) {
            c3VarR.b.recycle();
            throw th;
        }
    }

    public void c(int i) {
        if (i != 0) {
            Drawable drawableB = p0.b(this.a.getContext(), i);
            if (drawableB != null) {
                m2.b(drawableB);
            }
            this.a.setImageDrawable(drawableB);
        } else {
            this.a.setImageDrawable(null);
        }
        a();
    }

    public void d(ColorStateList colorStateList) {
        if (this.b == null) {
            this.b = new a3();
        }
        a3 a3Var = this.b;
        a3Var.a = colorStateList;
        a3Var.d = true;
        a();
    }

    public void e(PorterDuff.Mode mode) {
        if (this.b == null) {
            this.b = new a3();
        }
        a3 a3Var = this.b;
        a3Var.b = mode;
        a3Var.c = true;
        a();
    }
}
