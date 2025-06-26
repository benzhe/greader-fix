package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class r8 extends q8 {
    public static Method l;

    public r8(Drawable drawable) {
        super(drawable);
        e();
    }

    @Override // defpackage.q8
    public boolean c() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.j;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    public final void e() {
        if (l == null) {
            try {
                l = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.j.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.j.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.j;
        if (drawable != null && (method = l) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.j.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.j.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // defpackage.q8, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // defpackage.q8, android.graphics.drawable.Drawable
    public void setTint(int i) {
        if (c()) {
            super.setTint(i);
        } else {
            this.j.setTint(i);
        }
    }

    @Override // defpackage.q8, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (!c()) {
            this.j.setTintList(colorStateList);
        } else {
            this.h.c = colorStateList;
            d(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (!c()) {
            this.j.setTintMode(mode);
        } else {
            this.h.d = mode;
            d(getState());
        }
    }

    public r8(s8 s8Var, Resources resources) {
        super(s8Var, resources);
        e();
    }
}
