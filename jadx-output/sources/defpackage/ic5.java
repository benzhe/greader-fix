package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import defpackage.pa5;
import defpackage.q85;
import java.util.Objects;

/* loaded from: classes.dex */
public class ic5 extends la5 implements q85.b {
    public CharSequence C;
    public final Context D;
    public final Paint.FontMetrics E;
    public final q85 F;
    public final View.OnLayoutChangeListener G;
    public final Rect H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public float O;
    public float P;
    public float Q;
    public float R;

    public class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            ic5 ic5Var = ic5.this;
            Objects.requireNonNull(ic5Var);
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            ic5Var.N = iArr[0];
            view.getWindowVisibleDisplayFrame(ic5Var.H);
        }
    }

    public ic5(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = new Paint.FontMetrics();
        q85 q85Var = new q85(this);
        this.F = q85Var;
        this.G = new a();
        this.H = new Rect();
        this.O = 1.0f;
        this.P = 1.0f;
        this.Q = 0.5f;
        this.R = 1.0f;
        this.D = context;
        q85Var.a.density = context.getResources().getDisplayMetrics().density;
        q85Var.a.setTextAlign(Paint.Align.CENTER);
    }

    public final float F() {
        int i;
        if (((this.H.right - getBounds().right) - this.N) - this.L < 0) {
            i = ((this.H.right - getBounds().right) - this.N) - this.L;
        } else {
            if (((this.H.left - getBounds().left) - this.N) + this.L <= 0) {
                return 0.0f;
            }
            i = ((this.H.left - getBounds().left) - this.N) + this.L;
        }
        return i;
    }

    public final ja5 G() {
        float f = -F();
        float fWidth = ((float) (getBounds().width() - (Math.sqrt(2.0d) * this.M))) / 2.0f;
        return new ma5(new ka5(this.M), Math.min(Math.max(f, -fWidth), fWidth));
    }

    @Override // q85.b
    public void a() {
        invalidateSelf();
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        float F = F();
        float f = (float) (-((Math.sqrt(2.0d) * this.M) - this.M));
        canvas.scale(this.O, this.P, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.Q) + getBounds().top);
        canvas.translate(F, f);
        super.draw(canvas);
        if (this.C != null) {
            float fCenterY = getBounds().centerY();
            this.F.a.getFontMetrics(this.E);
            Paint.FontMetrics fontMetrics = this.E;
            int i = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            q85 q85Var = this.F;
            if (q85Var.f != null) {
                q85Var.a.drawableState = getState();
                q85 q85Var2 = this.F;
                q85Var2.f.c(this.D, q85Var2.a, q85Var2.b);
                this.F.a.setAlpha((int) (this.R * 255.0f));
            }
            CharSequence charSequence = this.C;
            canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), i, this.F.a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.F.a.getTextSize(), this.K);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        float f = this.I * 2;
        CharSequence charSequence = this.C;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.F.a(charSequence.toString())), this.J);
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        pa5 pa5Var = this.e.a;
        Objects.requireNonNull(pa5Var);
        pa5.b bVar = new pa5.b(pa5Var);
        bVar.k = G();
        this.e.a = bVar.a();
        invalidateSelf();
    }

    @Override // defpackage.la5, android.graphics.drawable.Drawable, q85.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }
}
