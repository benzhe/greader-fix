package defpackage;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class ks7 extends Drawable {
    public b a;
    public final Paint b = new Paint();

    public static final class b extends Drawable.ConstantState {
        public int a;
        public int b;
        public int c;

        public b(b bVar) {
            if (bVar != null) {
                this.a = bVar.a;
                this.b = bVar.b;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.c;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ks7(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ks7(this, null);
        }
    }

    public ks7(int i) {
        b bVar = new b(null);
        this.a = bVar;
        if (bVar.a == i && bVar.b == i) {
            return;
        }
        invalidateSelf();
        b bVar2 = this.a;
        bVar2.b = i;
        bVar2.a = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i = this.a.b;
        if ((i >>> 24) != 0) {
            this.b.setColor(i);
            canvas.drawRect(getBounds(), this.b);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.a.b >>> 24;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.a.c;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.a.c = getChangingConfigurations();
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i = this.a.b >>> 24;
        if (i != 0) {
            return i != 255 ? -3 : -1;
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        b bVar = this.a;
        int i2 = bVar.a;
        int i3 = bVar.b;
        int i4 = ((((i2 >>> 24) * (i + (i >> 7))) >> 8) << 24) | ((i2 << 8) >>> 8);
        bVar.b = i4;
        if (i3 != i4) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public ks7(b bVar, a aVar) {
        this.a = new b(bVar);
    }
}
