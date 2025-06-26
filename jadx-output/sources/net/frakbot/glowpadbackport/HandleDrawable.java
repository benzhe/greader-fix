package net.frakbot.glowpadbackport;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;

/* loaded from: classes2.dex */
public class HandleDrawable extends DrawableImpl {
    private static final String COLOR_ACTIVE_OVELAY = "#66000000";
    private static final String COLOR_FOCUSED_OVELAY = "#33000000";
    private int mHandleSize;
    private final int mResourceId;

    public HandleDrawable(Resources resources, int i, int i2, int i3, int i4) throws Resources.NotFoundException {
        this.mHandleSize = 0;
        this.mResourceId = i;
        this.mHandleSize = i4;
        if (i2 == 0) {
            setDrawable(resources, i);
        } else {
            setDrawable(resources, i, i2, i3, i4);
        }
    }

    public Drawable createDrawable(Resources resources, int i, int i2, int i3, int i4) {
        Drawable drawable = i == 0 ? null : resources.getDrawable(i);
        if (drawable instanceof StateListDrawable) {
            return drawable.mutate();
        }
        if (drawable == null) {
            return null;
        }
        if (i3 != 0) {
            drawable.setColorFilter(i3, PorterDuff.Mode.SRC_IN);
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i2);
        shapeDrawable.setPadding(1, 1, 1, 1);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{resources.getDrawable(this.mHandleSize == 0 ? R.drawable.shadow : R.drawable.shadow_mini), shapeDrawable, drawable});
        layerDrawable.setLayerInset(1, i4, i4, i4, i4);
        return layerDrawable.mutate();
    }

    public int getResourceId() {
        return this.mResourceId;
    }

    public void setDrawable(Resources resources, int i) {
        if (i == 0) {
            return;
        }
        Drawable drawable = i == 0 ? null : resources.getDrawable(i);
        this.mDrawable = drawable != null ? drawable.mutate() : null;
        resizeDrawables();
        setState(DrawableImpl.STATE_INACTIVE);
    }

    public void setDrawable(Resources resources, int i, int i2, int i3, int i4) throws Resources.NotFoundException {
        if (i == 0) {
            return;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.fab_shadow_size);
        int dimensionPixelSize2 = (dimensionPixelSize * 2) + resources.getDimensionPixelSize(i4 == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
        this.mDrawable = createDrawable(resources, i, i2, i3, dimensionPixelSize);
        resizeDrawables(dimensionPixelSize2, dimensionPixelSize2);
        setState(DrawableImpl.STATE_INACTIVE);
    }

    public HandleDrawable(HandleDrawable handleDrawable) {
        this.mHandleSize = 0;
        this.mResourceId = handleDrawable.mResourceId;
        Drawable drawable = handleDrawable.mDrawable;
        this.mDrawable = drawable != null ? drawable.mutate() : null;
        resizeDrawables();
        setState(DrawableImpl.STATE_INACTIVE);
    }
}
