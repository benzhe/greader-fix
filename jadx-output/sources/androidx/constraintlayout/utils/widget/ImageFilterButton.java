package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.R$styleable;

/* loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {
    public ImageFilterView.c g;
    public float h;
    public float i;
    public float j;
    public Path k;
    public ViewOutlineProvider l;
    public RectF m;
    public Drawable[] n;
    public LayerDrawable o;
    public boolean p;

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), (Math.min(r3, r4) * ImageFilterButton.this.i) / 2.0f);
        }
    }

    public class b extends ViewOutlineProvider {
        public b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.j);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        this.g = new ImageFilterView.c();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = Float.NaN;
        this.p = true;
        a(null);
    }

    private void setOverlay(boolean z) {
        this.p = z;
    }

    public final void a(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.h = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.p));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.n = drawableArr;
                drawableArr[0] = getDrawable();
                this.n[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.n);
                this.o = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.h * 255.0f));
                super.setImageDrawable(this.o);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (0 != 0) {
            canvas.restore();
        }
    }

    public float getContrast() {
        return this.g.f;
    }

    public float getCrossfade() {
        return this.h;
    }

    public float getRound() {
        return this.j;
    }

    public float getRoundPercent() {
        return this.i;
    }

    public float getSaturation() {
        return this.g.e;
    }

    public float getWarmth() {
        return this.g.g;
    }

    public void setBrightness(float f) {
        ImageFilterView.c cVar = this.g;
        cVar.d = f;
        cVar.a(this);
    }

    public void setContrast(float f) {
        ImageFilterView.c cVar = this.g;
        cVar.f = f;
        cVar.a(this);
    }

    public void setCrossfade(float f) {
        this.h = f;
        if (this.n != null) {
            if (!this.p) {
                this.o.getDrawable(0).setAlpha((int) ((1.0f - this.h) * 255.0f));
            }
            this.o.getDrawable(1).setAlpha((int) (this.h * 255.0f));
            super.setImageDrawable(this.o);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.j = f;
            float f2 = this.i;
            this.i = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.j != f;
        this.j = f;
        if (f != 0.0f) {
            if (this.k == null) {
                this.k = new Path();
            }
            if (this.m == null) {
                this.m = new RectF();
            }
            if (this.l == null) {
                b bVar = new b();
                this.l = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.k.reset();
            Path path = this.k;
            RectF rectF = this.m;
            float f3 = this.j;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z = this.i != f;
        this.i = f;
        if (f != 0.0f) {
            if (this.k == null) {
                this.k = new Path();
            }
            if (this.m == null) {
                this.m = new RectF();
            }
            if (this.l == null) {
                a aVar = new a();
                this.l = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.i) / 2.0f;
            this.m.set(0.0f, 0.0f, width, height);
            this.k.reset();
            this.k.addRoundRect(this.m, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        ImageFilterView.c cVar = this.g;
        cVar.e = f;
        cVar.a(this);
    }

    public void setWarmth(float f) {
        ImageFilterView.c cVar = this.g;
        cVar.g = f;
        cVar.a(this);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ImageFilterView.c();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = Float.NaN;
        this.p = true;
        a(attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ImageFilterView.c();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = Float.NaN;
        this.p = true;
        a(attributeSet);
    }
}
