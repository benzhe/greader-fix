package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.a3;
import defpackage.c2;
import defpackage.x2;
import defpackage.z1;
import defpackage.z2;

/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    public final z1 e;
    public final c2 f;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.a();
        }
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        a3 a3Var;
        c2 c2Var = this.f;
        if (c2Var == null || (a3Var = c2Var.b) == null) {
            return null;
        }
        return a3Var.a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        a3 a3Var;
        c2 c2Var = this.f;
        if (c2Var == null || (a3Var = c2Var.b) == null) {
            return null;
        }
        return a3Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return ((this.f.a.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.c(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.d(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        c2 c2Var = this.f;
        if (c2Var != null) {
            c2Var.e(mode);
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        z1 z1Var = new z1(this);
        this.e = z1Var;
        z1Var.d(attributeSet, i);
        c2 c2Var = new c2(this);
        this.f = c2Var;
        c2Var.b(attributeSet, i);
    }
}
