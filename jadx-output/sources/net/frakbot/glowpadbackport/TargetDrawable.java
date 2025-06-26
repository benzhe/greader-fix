package net.frakbot.glowpadbackport;

import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;

/* loaded from: classes2.dex */
public class TargetDrawable extends DrawableImpl {
    private static final String COLOR_ACTIVE_OVELAY = "#66000000";
    private static final String COLOR_FOCUSED_OVELAY = "#33000000";
    private int mHandleSize;
    private final int mResourceId;

    public TargetDrawable(Resources resources, int i, int i2, int i3) throws Resources.NotFoundException {
        this.mHandleSize = 0;
        this.mResourceId = i;
        this.mHandleSize = i3;
        if (i2 == 0) {
            setDrawable(resources, i);
        } else {
            setDrawable(resources, i, i2);
        }
    }

    public Drawable createDrawable(Resources resources, int i, int i2, int i3) throws Resources.NotFoundException {
        Drawable drawable = i == 0 ? null : resources.getDrawable(i);
        if (drawable instanceof StateListDrawable) {
            return drawable.mutate();
        }
        if (drawable == null) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i2);
        shapeDrawable.setPadding(1, 1, 1, 1);
        Drawable drawable2 = resources.getDrawable(this.mHandleSize == 0 ? R.drawable.shadow : R.drawable.shadow_mini);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        shapeDrawable2.setPadding(1, 1, 1, 1);
        shapeDrawable2.getPaint().setColor(Color.parseColor(COLOR_ACTIVE_OVELAY));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable2, shapeDrawable, shapeDrawable2, drawable});
        layerDrawable.setLayerInset(1, i3, i3, i3, i3);
        layerDrawable.setLayerInset(2, i3, i3, i3, i3);
        stateListDrawable.addState(DrawableImpl.STATE_ACTIVE, layerDrawable);
        shapeDrawable2.getPaint().setColor(Color.parseColor(COLOR_FOCUSED_OVELAY));
        LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{drawable2, shapeDrawable, shapeDrawable2, drawable});
        layerDrawable2.setLayerInset(1, i3, i3, i3, i3);
        layerDrawable2.setLayerInset(2, i3, i3, i3, i3);
        stateListDrawable.addState(DrawableImpl.STATE_FOCUSED, layerDrawable2);
        LayerDrawable layerDrawable3 = new LayerDrawable(new Drawable[]{drawable2, shapeDrawable, drawable});
        layerDrawable3.setLayerInset(1, i3, i3, i3, i3);
        stateListDrawable.addState(DrawableImpl.STATE_INACTIVE, layerDrawable3);
        return stateListDrawable.mutate();
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

    public void setDrawable(Resources resources, int i, int i2) throws Resources.NotFoundException {
        if (i == 0) {
            return;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.fab_shadow_size);
        int dimensionPixelSize2 = (dimensionPixelSize * 2) + resources.getDimensionPixelSize(this.mHandleSize == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
        this.mDrawable = createDrawable(resources, i, i2, dimensionPixelSize);
        resizeDrawables(dimensionPixelSize2, dimensionPixelSize2);
        setState(DrawableImpl.STATE_INACTIVE);
    }

    public TargetDrawable(TargetDrawable targetDrawable) {
        this.mHandleSize = 0;
        this.mResourceId = targetDrawable.mResourceId;
        Drawable drawable = targetDrawable.mDrawable;
        this.mDrawable = drawable != null ? drawable.mutate() : null;
        resizeDrawables();
        setState(DrawableImpl.STATE_INACTIVE);
    }
}
