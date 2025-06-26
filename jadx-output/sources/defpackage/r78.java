package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.TypedValue;
import android.widget.MediaController;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public class r78 extends Drawable implements Animatable, MediaController.MediaPlayerControl {
    public final ScheduledThreadPoolExecutor e;
    public volatile boolean f;
    public long g;
    public final Rect h;
    public final Paint i;
    public final Bitmap j;
    public final GifInfoHandle k;
    public final ConcurrentLinkedQueue<o78> l;
    public ColorStateList m;
    public PorterDuffColorFilter n;
    public PorterDuff.Mode o;
    public final boolean p;
    public final w78 q;
    public final y78 r;
    public final Rect s;
    public ScheduledFuture<?> t;
    public int u;
    public int v;

    public class a extends z78 {
        public final /* synthetic */ int f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(r78 r78Var, int i) {
            super(r78Var);
            this.f = i;
        }

        @Override // defpackage.z78
        public void a() {
            r78 r78Var = r78.this;
            GifInfoHandle gifInfoHandle = r78Var.k;
            int i = this.f;
            Bitmap bitmap = r78Var.j;
            synchronized (gifInfoHandle) {
                GifInfoHandle.seekToTime(gifInfoHandle.a, i, bitmap);
            }
            this.e.q.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r78(Resources resources, int i) throws Resources.NotFoundException, IOException {
        this(new GifInfoHandle(resources.openRawResourceFd(i), false), null, null, true);
        int i2 = 0;
        List<String> list = u78.a;
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        int i3 = typedValue.density;
        if (i3 == 0) {
            i2 = 160;
        } else if (i3 != 65535) {
            i2 = i3;
        }
        int i4 = resources.getDisplayMetrics().densityDpi;
        float f = (i2 <= 0 || i4 <= 0) ? 1.0f : i4 / i2;
        this.v = (int) (this.k.a() * f);
        this.u = (int) (this.k.c() * f);
    }

    public boolean a() {
        return this.k.d();
    }

    public void b(long j) {
        if (this.p) {
            this.g = 0L;
            this.q.sendEmptyMessageAtTime(-1, 0L);
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.q.removeMessages(-1);
        this.t = this.e.schedule(this.r, Math.max(j, 0L), TimeUnit.MILLISECONDS);
    }

    public final PorterDuffColorFilter c(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.k.b() > 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.k.b() > 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        if (this.n == null || this.i.getColorFilter() != null) {
            z = false;
        } else {
            this.i.setColorFilter(this.n);
            z = true;
        }
        canvas.drawBitmap(this.j, this.s, this.h, this.i);
        if (z) {
            this.i.setColorFilter(null);
        }
        if (this.p && this.f) {
            long j = this.g;
            if (j != Long.MIN_VALUE) {
                long jMax = Math.max(0L, j - SystemClock.uptimeMillis());
                this.g = Long.MIN_VALUE;
                this.e.remove(this.r);
                this.t = this.e.schedule(this.r, jMax, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.i.getAlpha();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.i.getColorFilter();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        int currentPosition;
        GifInfoHandle gifInfoHandle = this.k;
        synchronized (gifInfoHandle) {
            currentPosition = GifInfoHandle.getCurrentPosition(gifInfoHandle.a);
        }
        return currentPosition;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        int duration;
        GifInfoHandle gifInfoHandle = this.k;
        synchronized (gifInfoHandle) {
            duration = GifInfoHandle.getDuration(gifInfoHandle.a);
        }
        return duration;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.v;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.u;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.f;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.m) != null && colorStateList.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.h.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.m;
        if (colorStateList == null || (mode = this.o) == null) {
            return false;
        }
        this.n = c(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.e.execute(new a(this, i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.i.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.i.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z) {
        this.i.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.i.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.m = colorStateList;
        this.n = c(colorStateList, this.o);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.o = mode;
        this.n = c(this.m, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!this.p) {
            if (z) {
                if (z2) {
                    this.e.execute(new q78(this, this));
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        long jRestoreRemainder;
        synchronized (this) {
            if (this.f) {
                return;
            }
            this.f = true;
            GifInfoHandle gifInfoHandle = this.k;
            synchronized (gifInfoHandle) {
                jRestoreRemainder = GifInfoHandle.restoreRemainder(gifInfoHandle.a);
            }
            b(jRestoreRemainder);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            if (this.f) {
                this.f = false;
                ScheduledFuture<?> scheduledFuture = this.t;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.q.removeMessages(-1);
                GifInfoHandle gifInfoHandle = this.k;
                synchronized (gifInfoHandle) {
                    GifInfoHandle.saveRemainder(gifInfoHandle.a);
                }
            }
        }
    }

    public String toString() {
        int nativeErrorCode;
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[4];
        objArr[0] = Integer.valueOf(this.k.c());
        objArr[1] = Integer.valueOf(this.k.a());
        objArr[2] = Integer.valueOf(this.k.b());
        GifInfoHandle gifInfoHandle = this.k;
        synchronized (gifInfoHandle) {
            nativeErrorCode = GifInfoHandle.getNativeErrorCode(gifInfoHandle.a);
        }
        objArr[3] = Integer.valueOf(nativeErrorCode);
        return String.format(locale, "GIF: size: %dx%d, frames: %d, error: %d", objArr);
    }

    public r78(GifInfoHandle gifInfoHandle, r78 r78Var, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z) {
        this.f = true;
        this.g = Long.MIN_VALUE;
        this.h = new Rect();
        this.i = new Paint(6);
        this.l = new ConcurrentLinkedQueue<>();
        y78 y78Var = new y78(this);
        this.r = y78Var;
        this.p = z;
        if (t78.e == null) {
            synchronized (t78.class) {
                if (t78.e == null) {
                    t78.e = new t78();
                }
            }
        }
        this.e = t78.e;
        this.k = gifInfoHandle;
        this.j = Bitmap.createBitmap(gifInfoHandle.c(), gifInfoHandle.a(), Bitmap.Config.ARGB_8888);
        this.s = new Rect(0, 0, gifInfoHandle.c(), gifInfoHandle.a());
        this.q = new w78(this);
        y78Var.a();
        this.u = gifInfoHandle.c();
        this.v = gifInfoHandle.a();
    }
}
