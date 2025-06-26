package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import defpackage.jo;
import defpackage.kt7;
import defpackage.p78;
import defpackage.s78;
import defpackage.u78;
import defpackage.v78;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class GifTextureView extends TextureView {
    public static final ImageView.ScaleType[] k = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public ImageView.ScaleType e;
    public final Matrix f;
    public v78 g;
    public boolean h;
    public b i;
    public float j;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b extends Thread implements TextureView.SurfaceTextureListener {
        public final p78 e;
        public GifInfoHandle f;
        public IOException g;
        public long[] h;
        public final WeakReference<GifTextureView> i;

        public class a implements Runnable {
            public final /* synthetic */ GifTextureView e;

            public a(GifTextureView gifTextureView) {
                this.e = gifTextureView;
            }

            @Override // java.lang.Runnable
            public void run() {
                GifTextureView gifTextureView = this.e;
                GifInfoHandle gifInfoHandle = b.this.f;
                ImageView.ScaleType[] scaleTypeArr = GifTextureView.k;
                gifTextureView.c(gifInfoHandle);
            }
        }

        public b(GifTextureView gifTextureView) {
            super("GifRenderThread");
            this.e = new p78();
            this.f = GifInfoHandle.b;
            this.i = new WeakReference<>(gifTextureView);
        }

        public void a(GifTextureView gifTextureView) {
            this.e.a();
            gifTextureView.setSuperSurfaceTextureListener(null);
            GifInfoHandle gifInfoHandle = this.f;
            synchronized (gifInfoHandle) {
                GifInfoHandle.postUnbindSurface(gifInfoHandle.a);
            }
            interrupt();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            GifTextureView gifTextureView = this.i.get();
            if (gifTextureView != null) {
                GifInfoHandle gifInfoHandle = this.f;
                ImageView.ScaleType[] scaleTypeArr = GifTextureView.k;
                gifTextureView.c(gifInfoHandle);
            }
            this.e.b();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.e.a();
            GifInfoHandle gifInfoHandle = this.f;
            synchronized (gifInfoHandle) {
                GifInfoHandle.postUnbindSurface(gifInfoHandle.a);
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                GifTextureView gifTextureView = this.i.get();
                if (gifTextureView == null) {
                    return;
                }
                this.f = gifTextureView.g.a();
                GifTextureView gifTextureView2 = this.i.get();
                if (gifTextureView2 == null) {
                    this.f.e();
                    return;
                }
                gifTextureView2.setSuperSurfaceTextureListener(this);
                boolean zIsAvailable = gifTextureView2.isAvailable();
                p78 p78Var = this.e;
                synchronized (p78Var) {
                    if (zIsAvailable) {
                        p78Var.b();
                    } else {
                        p78Var.a();
                    }
                }
                if (zIsAvailable) {
                    gifTextureView2.post(new a(gifTextureView2));
                }
                this.f.f(gifTextureView2.j);
                while (!isInterrupted()) {
                    try {
                        p78 p78Var2 = this.e;
                        synchronized (p78Var2) {
                            while (!p78Var2.a) {
                                p78Var2.wait();
                            }
                        }
                        SurfaceTexture surfaceTexture = gifTextureView2.getSurfaceTexture();
                        if (surfaceTexture != null) {
                            Surface surface = new Surface(surfaceTexture);
                            try {
                                GifInfoHandle gifInfoHandle = this.f;
                                GifInfoHandle.bindSurface(gifInfoHandle.a, surface, this.h, gifTextureView2.isOpaque());
                            } finally {
                                surface.release();
                            }
                        }
                    } catch (InterruptedException unused) {
                    }
                }
                this.f.e();
                this.f = GifInfoHandle.b;
            } catch (IOException e) {
                this.g = e;
            }
        }
    }

    public GifTextureView(Context context) throws Resources.NotFoundException {
        super(context);
        this.e = ImageView.ScaleType.FIT_CENTER;
        this.f = new Matrix();
        this.j = 1.0f;
        b(null, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuperSurfaceTextureListener(b bVar) {
        super.setSurfaceTextureListener(bVar);
    }

    public final void b(AttributeSet attributeSet, int i, int i2) throws Resources.NotFoundException {
        v78 aVar;
        v78 v78Var;
        if (attributeSet != null) {
            int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
            if (attributeIntValue >= 0) {
                ImageView.ScaleType[] scaleTypeArr = k;
                if (attributeIntValue < scaleTypeArr.length) {
                    this.e = scaleTypeArr[attributeIntValue];
                }
            }
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.GifTextureView, i, i2);
            TypedValue typedValue = new TypedValue();
            if (!typedArrayObtainStyledAttributes.getValue(R$styleable.GifTextureView_gifSource, typedValue)) {
                v78Var = null;
            } else if (typedValue.resourceId != 0) {
                String resourceTypeName = typedArrayObtainStyledAttributes.getResources().getResourceTypeName(typedValue.resourceId);
                if (u78.a.contains(resourceTypeName)) {
                    aVar = new v78.b(typedArrayObtainStyledAttributes.getResources(), typedValue.resourceId);
                    v78Var = aVar;
                } else {
                    if (!"string".equals(resourceTypeName)) {
                        throw new IllegalArgumentException(jo.o("Expected string, drawable, mipmap or raw resource type. '", resourceTypeName, "' is not supported"));
                    }
                    aVar = new v78.a(typedArrayObtainStyledAttributes.getResources().getAssets(), typedValue.string.toString());
                    v78Var = aVar;
                }
            } else {
                aVar = new v78.a(typedArrayObtainStyledAttributes.getResources().getAssets(), typedValue.string.toString());
                v78Var = aVar;
            }
            this.g = v78Var;
            super.setOpaque(typedArrayObtainStyledAttributes.getBoolean(R$styleable.GifTextureView_isOpaque, false));
            typedArrayObtainStyledAttributes.recycle();
            this.h = u78.c(this, attributeSet, i, i2);
        } else {
            super.setOpaque(false);
        }
        if (isInEditMode()) {
            return;
        }
        kt7.l(getContext(), "pl_droidsonroids_gif_surface");
        b bVar = new b(this);
        this.i = bVar;
        if (this.g != null) {
            bVar.start();
        }
    }

    public final void c(GifInfoHandle gifInfoHandle) {
        Matrix matrix = new Matrix();
        float width = getWidth();
        float height = getHeight();
        float fC = gifInfoHandle.c() / width;
        float fA = gifInfoHandle.a() / height;
        RectF rectF = new RectF(0.0f, 0.0f, gifInfoHandle.c(), gifInfoHandle.a());
        RectF rectF2 = new RectF(0.0f, 0.0f, width, height);
        switch (a.a[this.e.ordinal()]) {
            case 1:
                matrix.setScale(fC, fA, width / 2.0f, height / 2.0f);
                break;
            case 2:
                float fMin = 1.0f / Math.min(fC, fA);
                matrix.setScale(fC * fMin, fMin * fA, width / 2.0f, height / 2.0f);
                break;
            case 3:
                float fMin2 = (((float) gifInfoHandle.c()) > width || ((float) gifInfoHandle.a()) > height) ? Math.min(1.0f / fC, 1.0f / fA) : 1.0f;
                matrix.setScale(fC * fMin2, fMin2 * fA, width / 2.0f, height / 2.0f);
                break;
            case 4:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
                matrix.preScale(fC, fA);
                break;
            case 5:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                matrix.preScale(fC, fA);
                break;
            case 6:
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                matrix.preScale(fC, fA);
                break;
            case 7:
                return;
            case 8:
                matrix.set(this.f);
                matrix.preScale(fC, fA);
                break;
        }
        super.setTransform(matrix);
    }

    public IOException getIOException() {
        int nativeErrorCode;
        b bVar = this.i;
        IOException iOException = bVar.g;
        if (iOException != null) {
            return iOException;
        }
        GifInfoHandle gifInfoHandle = bVar.f;
        synchronized (gifInfoHandle) {
            nativeErrorCode = GifInfoHandle.getNativeErrorCode(gifInfoHandle.a);
        }
        int i = GifIOException.e;
        if (nativeErrorCode == s78.NO_ERROR.f) {
            return null;
        }
        return new GifIOException(nativeErrorCode);
    }

    public ImageView.ScaleType getScaleType() {
        return this.e;
    }

    @Override // android.view.TextureView
    public TextureView.SurfaceTextureListener getSurfaceTextureListener() {
        return null;
    }

    @Override // android.view.TextureView
    public Matrix getTransform(Matrix matrix) {
        if (matrix == null) {
            matrix = new Matrix();
        }
        matrix.set(this.f);
        return matrix;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.i.a(this);
        super.onDetachedFromWindow();
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        this.i.h = gifViewSavedState.e[0];
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        long[] savedState;
        b bVar = this.i;
        GifInfoHandle gifInfoHandle = bVar.f;
        synchronized (gifInfoHandle) {
            savedState = GifInfoHandle.getSavedState(gifInfoHandle.a);
        }
        bVar.h = savedState;
        return new GifViewSavedState(super.onSaveInstanceState(), this.h ? this.i.h : null);
    }

    public void setFreezesAnimation(boolean z) {
        this.h = z;
    }

    public void setImageMatrix(Matrix matrix) {
        setTransform(matrix);
    }

    public synchronized void setInputSource(v78 v78Var) {
        this.i.a(this);
        this.g = v78Var;
        b bVar = new b(this);
        this.i = bVar;
        if (v78Var != null) {
            bVar.start();
        }
    }

    @Override // android.view.TextureView
    public void setOpaque(boolean z) {
        if (z != isOpaque()) {
            super.setOpaque(z);
            setInputSource(this.g);
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        this.e = scaleType;
        c(this.i.f);
    }

    public void setSpeed(float f) {
        this.j = f;
        this.i.f.f(f);
    }

    @Override // android.view.TextureView
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
    }

    @Override // android.view.TextureView
    public void setTransform(Matrix matrix) {
        this.f.set(matrix);
        c(this.i.f);
    }

    public GifTextureView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.e = ImageView.ScaleType.FIT_CENTER;
        this.f = new Matrix();
        this.j = 1.0f;
        b(attributeSet, 0, 0);
    }

    public GifTextureView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        this.e = ImageView.ScaleType.FIT_CENTER;
        this.f = new Matrix();
        this.j = 1.0f;
        b(attributeSet, i, 0);
    }
}
