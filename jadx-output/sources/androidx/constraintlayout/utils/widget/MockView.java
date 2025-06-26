package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class MockView extends View {
    public Paint e;
    public Paint f;
    public Paint g;
    public boolean h;
    public boolean i;
    public String j;
    public Rect k;
    public int l;
    public int m;
    public int n;
    public int o;

    public MockView(Context context) {
        super(context);
        this.e = new Paint();
        this.f = new Paint();
        this.g = new Paint();
        this.h = true;
        this.i = true;
        this.j = null;
        this.k = new Rect();
        this.l = Color.argb(Base64.BASELENGTH, 0, 0, 0);
        this.m = Color.argb(Base64.BASELENGTH, 200, 200, 200);
        this.n = Color.argb(Base64.BASELENGTH, 50, 50, 50);
        this.o = 4;
        a(context, null);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MockView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.MockView_mock_label) {
                    this.j = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MockView_mock_showDiagonals) {
                    this.h = typedArrayObtainStyledAttributes.getBoolean(index, this.h);
                } else if (index == R$styleable.MockView_mock_diagonalsColor) {
                    this.l = typedArrayObtainStyledAttributes.getColor(index, this.l);
                } else if (index == R$styleable.MockView_mock_labelBackgroundColor) {
                    this.n = typedArrayObtainStyledAttributes.getColor(index, this.n);
                } else if (index == R$styleable.MockView_mock_labelColor) {
                    this.m = typedArrayObtainStyledAttributes.getColor(index, this.m);
                } else if (index == R$styleable.MockView_mock_showLabel) {
                    this.i = typedArrayObtainStyledAttributes.getBoolean(index, this.i);
                }
            }
        }
        if (this.j == null) {
            try {
                this.j = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.e.setColor(this.l);
        this.e.setAntiAlias(true);
        this.f.setColor(this.m);
        this.f.setAntiAlias(true);
        this.g.setColor(this.n);
        this.o = Math.round((getResources().getDisplayMetrics().xdpi / 160.0f) * this.o);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.h) {
            width--;
            height--;
            float f = width;
            float f2 = height;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.e);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.e);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.e);
            canvas.drawLine(f, 0.0f, f, f2, this.e);
            canvas.drawLine(f, f2, 0.0f, f2, this.e);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.e);
        }
        String str = this.j;
        if (str == null || !this.i) {
            return;
        }
        this.f.getTextBounds(str, 0, str.length(), this.k);
        float fWidth = (width - this.k.width()) / 2.0f;
        float fHeight = ((height - this.k.height()) / 2.0f) + this.k.height();
        this.k.offset((int) fWidth, (int) fHeight);
        Rect rect = this.k;
        int i = rect.left;
        int i2 = this.o;
        rect.set(i - i2, rect.top - i2, rect.right + i2, rect.bottom + i2);
        canvas.drawRect(this.k, this.g);
        canvas.drawText(this.j, fWidth, fHeight, this.f);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new Paint();
        this.f = new Paint();
        this.g = new Paint();
        this.h = true;
        this.i = true;
        this.j = null;
        this.k = new Rect();
        this.l = Color.argb(Base64.BASELENGTH, 0, 0, 0);
        this.m = Color.argb(Base64.BASELENGTH, 200, 200, 200);
        this.n = Color.argb(Base64.BASELENGTH, 50, 50, 50);
        this.o = 4;
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new Paint();
        this.f = new Paint();
        this.g = new Paint();
        this.h = true;
        this.i = true;
        this.j = null;
        this.k = new Rect();
        this.l = Color.argb(Base64.BASELENGTH, 0, 0, 0);
        this.m = Color.argb(Base64.BASELENGTH, 200, 200, 200);
        this.n = Color.argb(Base64.BASELENGTH, 50, 50, 50);
        this.o = 4;
        a(context, attributeSet);
    }
}
