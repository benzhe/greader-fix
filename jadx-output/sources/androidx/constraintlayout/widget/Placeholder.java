package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.c6;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class Placeholder extends View {
    public int e;
    public View f;
    public int g;

    public Placeholder(Context context) {
        super(context);
        this.e = -1;
        this.f = null;
        this.g = 4;
        a(null);
    }

    public final void a(AttributeSet attributeSet) {
        super.setVisibility(this.g);
        this.e = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ConstraintLayout_placeholder_content) {
                    this.e = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                } else if (index == R$styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.g = typedArrayObtainStyledAttributes.getInt(index, this.g);
                }
            }
        }
    }

    public void b() {
        if (this.f == null) {
            return;
        }
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        ConstraintLayout.a aVar2 = (ConstraintLayout.a) this.f.getLayoutParams();
        aVar2.l0.e0 = 0;
        c6.a aVarO = aVar.l0.o();
        c6.a aVar3 = c6.a.FIXED;
        if (aVarO != aVar3) {
            aVar.l0.I(aVar2.l0.t());
        }
        if (aVar.l0.s() != aVar3) {
            aVar.l0.D(aVar2.l0.n());
        }
        aVar2.l0.e0 = 8;
    }

    public View getContent() {
        return this.f;
    }

    public int getEmptyVisibility() {
        return this.g;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(Base64.BASELENGTH, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((rect.height() / 2.0f) + (iHeight / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View viewFindViewById;
        if (this.e == i) {
            return;
        }
        View view = this.f;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.a) this.f.getLayoutParams()).a0 = false;
            this.f = null;
        }
        this.e = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.g = i;
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = -1;
        this.f = null;
        this.g = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = -1;
        this.f = null;
        this.g = 4;
        a(attributeSet);
    }
}
