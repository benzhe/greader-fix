package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import defpackage.u7;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    public final Paint A;
    public final Rect B;
    public int C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public float H;
    public float I;
    public int J;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            PagerTabStrip.this.e.setCurrentItem(r2.getCurrentItem() - 1);
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            ViewPager viewPager = PagerTabStrip.this.e;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void c(int i, float f, boolean z) {
        Rect rect = this.B;
        int height = getHeight();
        int left = this.g.getLeft() - this.z;
        int right = this.g.getRight() + this.z;
        int i2 = height - this.v;
        rect.set(left, i2, right, height);
        super.c(i, f, z);
        this.C = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.g.getLeft() - this.z, i2, this.g.getRight() + this.z, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.D;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.y);
    }

    public int getTabIndicatorColor() {
        return this.u;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.g.getLeft() - this.z;
        int right = this.g.getRight() + this.z;
        int i = height - this.v;
        this.A.setColor((this.C << 24) | (this.u & 16777215));
        float f = height;
        canvas.drawRect(left, i, right, f, this.A);
        if (this.D) {
            this.A.setColor((-16777216) | (this.u & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.F, getWidth() - getPaddingRight(), f, this.A);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int action = motionEvent.getAction();
        if (action != 0 && this.G) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.H = x;
            this.I = y;
            this.G = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x - this.H) > this.J || Math.abs(y - this.I) > this.J)) {
                this.G = true;
            }
        } else if (x < this.g.getLeft() - this.z) {
            ViewPager viewPager = this.e;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x > this.g.getRight() + this.z) {
            ViewPager viewPager2 = this.e;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        if (this.E) {
            return;
        }
        this.D = (i & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.E) {
            return;
        }
        this.D = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.E) {
            return;
        }
        this.D = i == 0;
    }

    public void setDrawFullUnderline(boolean z) {
        this.D = z;
        this.E = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.w;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }

    public void setTabIndicatorColor(int i) {
        this.u = i;
        this.A.setColor(i);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i) {
        setTabIndicatorColor(u7.b(getContext(), i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        int i2 = this.x;
        if (i < i2) {
            i = i2;
        }
        super.setTextSpacing(i);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.A = paint;
        this.B = new Rect();
        this.C = Base64.BASELENGTH;
        this.D = false;
        this.E = false;
        int i = this.r;
        this.u = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.v = (int) ((3.0f * f) + 0.5f);
        this.w = (int) ((6.0f * f) + 0.5f);
        this.x = (int) (64.0f * f);
        this.z = (int) ((16.0f * f) + 0.5f);
        this.F = (int) ((1.0f * f) + 0.5f);
        this.y = (int) ((f * 32.0f) + 0.5f);
        this.J = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f.setFocusable(true);
        this.f.setOnClickListener(new a());
        this.h.setFocusable(true);
        this.h.setOnClickListener(new b());
        if (getBackground() == null) {
            this.D = true;
        }
    }
}
