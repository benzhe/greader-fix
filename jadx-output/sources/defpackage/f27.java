package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import defpackage.e27;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class f27 extends BitmapDrawable {
    public static final Paint h = new Paint();
    public final boolean a;
    public final float b;
    public final e27.d c;
    public Drawable d;
    public long e;
    public boolean f;
    public int g;

    public f27(Context context, Bitmap bitmap, Drawable drawable, e27.d dVar, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.g = Base64.BASELENGTH;
        this.a = z2;
        this.b = context.getResources().getDisplayMetrics().density;
        this.c = dVar;
        if ((dVar == e27.d.MEMORY || z) ? false : true) {
            this.d = drawable;
            this.f = true;
            this.e = SystemClock.uptimeMillis();
        }
    }

    public static Path a(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(ImageView imageView, Context context, Bitmap bitmap, e27.d dVar, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new f27(context, bitmap, drawable, dVar, z, z2));
    }

    public static void c(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.e) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f = false;
                this.d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.g * fUptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.g);
            }
        } else {
            super.draw(canvas);
        }
        if (this.a) {
            Paint paint = h;
            paint.setColor(-1);
            canvas.drawPath(a(0, 0, (int) (this.b * 16.0f)), paint);
            paint.setColor(this.c.e);
            canvas.drawPath(a(0, 0, (int) (this.b * 15.0f)), paint);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.g = i;
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
