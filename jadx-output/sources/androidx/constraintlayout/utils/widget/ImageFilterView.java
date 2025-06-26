package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R$styleable;

/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {
    public c g;
    public boolean h;
    public float i;
    public float j;
    public float k;
    public Path l;
    public ViewOutlineProvider m;
    public RectF n;
    public Drawable[] o;
    public LayerDrawable p;

    public class a extends ViewOutlineProvider {
        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), (Math.min(r3, r4) * ImageFilterView.this.j) / 2.0f);
        }
    }

    public class b extends ViewOutlineProvider {
        public b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.k);
        }
    }

    public static class c {
        public float[] a = new float[20];
        public ColorMatrix b = new ColorMatrix();
        public ColorMatrix c = new ColorMatrix();
        public float d = 1.0f;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = 1.0f;

        public void a(ImageView imageView) {
            float f;
            boolean z;
            float f2;
            float fLog;
            float f3;
            this.b.reset();
            float f4 = this.e;
            boolean z2 = true;
            if (f4 != 1.0f) {
                float f5 = 1.0f - f4;
                float f6 = 0.2999f * f5;
                float f7 = 0.587f * f5;
                float f8 = f5 * 0.114f;
                float[] fArr = this.a;
                fArr[0] = f6 + f4;
                fArr[1] = f7;
                fArr[2] = f8;
                fArr[3] = 0.0f;
                fArr[4] = 0.0f;
                fArr[5] = f6;
                fArr[6] = f7 + f4;
                fArr[7] = f8;
                fArr[8] = 0.0f;
                fArr[9] = 0.0f;
                fArr[10] = f6;
                fArr[11] = f7;
                fArr[12] = f8 + f4;
                fArr[13] = 0.0f;
                fArr[14] = 0.0f;
                fArr[15] = 0.0f;
                fArr[16] = 0.0f;
                fArr[17] = 0.0f;
                f = 1.0f;
                fArr[18] = 1.0f;
                fArr[19] = 0.0f;
                this.b.set(fArr);
                z = true;
            } else {
                f = 1.0f;
                z = false;
            }
            float f9 = this.f;
            if (f9 != f) {
                this.c.setScale(f9, f9, f9, f);
                this.b.postConcat(this.c);
                z = true;
            }
            float f10 = this.g;
            if (f10 != f) {
                if (f10 <= 0.0f) {
                    f10 = 0.01f;
                }
                float f11 = (5000.0f / f10) / 100.0f;
                if (f11 > 66.0f) {
                    double d = f11 - 60.0f;
                    float fPow = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                    fLog = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
                    f3 = fPow;
                } else {
                    fLog = (((float) Math.log(f11)) * 99.4708f) - 161.11957f;
                    f3 = 255.0f;
                }
                float fLog2 = f11 < 66.0f ? f11 > 19.0f ? (((float) Math.log(f11 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
                float fMin = Math.min(255.0f, Math.max(f3, 0.0f));
                float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
                float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
                float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
                float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
                float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
                float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
                float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
                float[] fArr2 = this.a;
                fArr2[0] = fMin / fMin4;
                fArr2[1] = 0.0f;
                fArr2[2] = 0.0f;
                fArr2[3] = 0.0f;
                fArr2[4] = 0.0f;
                fArr2[5] = 0.0f;
                fArr2[6] = fMin2 / fMin5;
                fArr2[7] = 0.0f;
                fArr2[8] = 0.0f;
                fArr2[9] = 0.0f;
                fArr2[10] = 0.0f;
                fArr2[11] = 0.0f;
                fArr2[12] = fMin6;
                fArr2[13] = 0.0f;
                fArr2[14] = 0.0f;
                fArr2[15] = 0.0f;
                fArr2[16] = 0.0f;
                fArr2[17] = 0.0f;
                f2 = 1.0f;
                fArr2[18] = 1.0f;
                fArr2[19] = 0.0f;
                this.c.set(fArr2);
                this.b.postConcat(this.c);
                z = true;
            } else {
                f2 = 1.0f;
            }
            float f12 = this.d;
            if (f12 != f2) {
                float[] fArr3 = this.a;
                fArr3[0] = f12;
                fArr3[1] = 0.0f;
                fArr3[2] = 0.0f;
                fArr3[3] = 0.0f;
                fArr3[4] = 0.0f;
                fArr3[5] = 0.0f;
                fArr3[6] = f12;
                fArr3[7] = 0.0f;
                fArr3[8] = 0.0f;
                fArr3[9] = 0.0f;
                fArr3[10] = 0.0f;
                fArr3[11] = 0.0f;
                fArr3[12] = f12;
                fArr3[13] = 0.0f;
                fArr3[14] = 0.0f;
                fArr3[15] = 0.0f;
                fArr3[16] = 0.0f;
                fArr3[17] = 0.0f;
                fArr3[18] = 1.0f;
                fArr3[19] = 0.0f;
                this.c.set(fArr3);
                this.b.postConcat(this.c);
            } else {
                z2 = z;
            }
            if (z2) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.g = new c();
        this.h = true;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = Float.NaN;
        c(null);
    }

    private void setOverlay(boolean z) {
        this.h = z;
    }

    public final void c(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
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
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.h));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.o = drawableArr;
                drawableArr[0] = getDrawable();
                this.o[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.o);
                this.p = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.i * 255.0f));
                super.setImageDrawable(this.p);
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

    public float getBrightness() {
        return this.g.d;
    }

    public float getContrast() {
        return this.g.f;
    }

    public float getCrossfade() {
        return this.i;
    }

    public float getRound() {
        return this.k;
    }

    public float getRoundPercent() {
        return this.j;
    }

    public float getSaturation() {
        return this.g.e;
    }

    public float getWarmth() {
        return this.g.g;
    }

    public void setBrightness(float f) {
        c cVar = this.g;
        cVar.d = f;
        cVar.a(this);
    }

    public void setContrast(float f) {
        c cVar = this.g;
        cVar.f = f;
        cVar.a(this);
    }

    public void setCrossfade(float f) {
        this.i = f;
        if (this.o != null) {
            if (!this.h) {
                this.p.getDrawable(0).setAlpha((int) ((1.0f - this.i) * 255.0f));
            }
            this.p.getDrawable(1).setAlpha((int) (this.i * 255.0f));
            super.setImageDrawable(this.p);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.k = f;
            float f2 = this.j;
            this.j = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.k != f;
        this.k = f;
        if (f != 0.0f) {
            if (this.l == null) {
                this.l = new Path();
            }
            if (this.n == null) {
                this.n = new RectF();
            }
            if (this.m == null) {
                b bVar = new b();
                this.m = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.n.set(0.0f, 0.0f, getWidth(), getHeight());
            this.l.reset();
            Path path = this.l;
            RectF rectF = this.n;
            float f3 = this.k;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z = this.j != f;
        this.j = f;
        if (f != 0.0f) {
            if (this.l == null) {
                this.l = new Path();
            }
            if (this.n == null) {
                this.n = new RectF();
            }
            if (this.m == null) {
                a aVar = new a();
                this.m = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.j) / 2.0f;
            this.n.set(0.0f, 0.0f, width, height);
            this.l.reset();
            this.l.addRoundRect(this.n, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        c cVar = this.g;
        cVar.e = f;
        cVar.a(this);
    }

    public void setWarmth(float f) {
        c cVar = this.g;
        cVar.g = f;
        cVar.a(this);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new c();
        this.h = true;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = Float.NaN;
        c(attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new c();
        this.h = true;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = Float.NaN;
        c(attributeSet);
    }
}
