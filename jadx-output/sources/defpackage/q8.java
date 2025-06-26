package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class q8 extends Drawable implements Drawable.Callback, p8, o8 {
    public static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
    public int e;
    public PorterDuff.Mode f;
    public boolean g;
    public s8 h;
    public boolean i;
    public Drawable j;

    public q8(s8 s8Var, Resources resources) {
        Drawable.ConstantState constantState;
        this.h = s8Var;
        if (s8Var == null || (constantState = s8Var.b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    @Override // defpackage.p8
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            s8 s8Var = this.h;
            if (s8Var != null) {
                s8Var.b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // defpackage.p8
    public final Drawable b() {
        return this.j;
    }

    public boolean c() {
        throw null;
    }

    public final boolean d(int[] iArr) {
        if (!c()) {
            return false;
        }
        s8 s8Var = this.h;
        ColorStateList colorStateList = s8Var.c;
        PorterDuff.Mode mode = s8Var.d;
        if (colorStateList == null || mode == null) {
            this.g = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.g || colorForState != this.e || mode != this.f) {
                setColorFilter(colorForState, mode);
                this.e = colorForState;
                this.f = mode;
                this.g = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.j.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        s8 s8Var = this.h;
        return changingConfigurations | (s8Var != null ? s8Var.getChangingConfigurations() : 0) | this.j.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        s8 s8Var = this.h;
        if (s8Var == null) {
            return null;
        }
        if (!(s8Var.b != null)) {
            return null;
        }
        s8Var.a = getChangingConfigurations();
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.j.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.j.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.j.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.j.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.j.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.j.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.j.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.j.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.j.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.j.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        s8 s8Var;
        ColorStateList colorStateList = (!c() || (s8Var = this.h) == null) ? null : s8Var.c;
        return (colorStateList != null && colorStateList.isStateful()) || this.j.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.j.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            this.h = new s8(this.h);
            Drawable drawable = this.j;
            if (drawable != null) {
                drawable.mutate();
            }
            s8 s8Var = this.h;
            if (s8Var != null) {
                Drawable drawable2 = this.j;
                s8Var.b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.j.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.j.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.j.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.j.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.j.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.j.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return d(iArr) || this.j.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.j.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public q8(Drawable drawable) {
        this.h = new s8(this.h);
        a(drawable);
    }
}
