package defpackage;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class e2 {
    public static final int[] c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    public final ProgressBar a;
    public Bitmap b;

    public e2(ProgressBar progressBar) {
        this.a = progressBar;
    }

    public void a(AttributeSet attributeSet, int i) {
        c3 c3VarR = c3.r(this.a.getContext(), attributeSet, c, i, 0);
        Drawable drawableH = c3VarR.h(0);
        if (drawableH != null) {
            ProgressBar progressBar = this.a;
            if (drawableH instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawableH;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable drawableB = b(animationDrawable.getFrame(i2), true);
                    drawableB.setLevel(10000);
                    animationDrawable2.addFrame(drawableB, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                drawableH = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(drawableH);
        }
        Drawable drawableH2 = c3VarR.h(1);
        if (drawableH2 != null) {
            this.a.setProgressDrawable(b(drawableH2, false));
        }
        c3VarR.b.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable b(Drawable drawable, boolean z) {
        if (drawable instanceof p8) {
            p8 p8Var = (p8) drawable;
            Drawable drawableB = p8Var.b();
            if (drawableB != null) {
                p8Var.a(b(drawableB, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = b(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.b == null) {
                    this.b = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
