package net.simonvt.menudrawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class BuildLayerFrameLayout extends FrameLayout {
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuildLayerFrameLayout buildLayerFrameLayout = BuildLayerFrameLayout.this;
            buildLayerFrameLayout.e = true;
            buildLayerFrameLayout.invalidate();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuildLayerFrameLayout buildLayerFrameLayout = BuildLayerFrameLayout.this;
            if (buildLayerFrameLayout.g) {
                if (buildLayerFrameLayout.getLayerType() != 2 || BuildLayerFrameLayout.this.h) {
                    BuildLayerFrameLayout buildLayerFrameLayout2 = BuildLayerFrameLayout.this;
                    buildLayerFrameLayout2.h = false;
                    buildLayerFrameLayout2.setLayerType(2, null);
                    BuildLayerFrameLayout.this.buildLayer();
                    BuildLayerFrameLayout.this.setLayerType(0, null);
                }
            }
        }
    }

    public BuildLayerFrameLayout(Context context) {
        super(context);
        this.f = true;
        this.h = true;
        Interpolator interpolator = MenuDrawer.b0;
        setLayerType(2, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.e) {
            Interpolator interpolator = MenuDrawer.b0;
            post(new b());
            this.e = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.g = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Interpolator interpolator = MenuDrawer.b0;
        if (this.f) {
            post(new a());
        }
    }

    public BuildLayerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = true;
        this.h = true;
        Interpolator interpolator = MenuDrawer.b0;
        setLayerType(2, null);
    }

    public BuildLayerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = true;
        this.h = true;
        Interpolator interpolator = MenuDrawer.b0;
        setLayerType(2, null);
    }
}
