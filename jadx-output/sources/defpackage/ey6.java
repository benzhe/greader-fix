package defpackage;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.noinnion.android.reader.widget.SlidingTabLayout;

/* loaded from: classes2.dex */
public class ey6 extends LinearLayout {
    public final int e;
    public final Paint f;
    public final int g;
    public final Paint h;
    public final int i;
    public int j;
    public float k;
    public SlidingTabLayout.d l;
    public final b m;

    public static class b implements SlidingTabLayout.d {
        public int[] a;

        public b(a aVar) {
        }

        @Override // com.noinnion.android.reader.widget.SlidingTabLayout.d
        public final int a(int i) {
            int[] iArr = this.a;
            return iArr[i % iArr.length];
        }
    }

    public ey6(Context context) {
        super(context, null);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int i = typedValue.data;
        int iArgb = Color.argb(38, Color.red(i), Color.green(i), Color.blue(i));
        this.i = iArgb;
        b bVar = new b(null);
        this.m = bVar;
        bVar.a = new int[]{-13388315};
        this.e = (int) (0.0f * f);
        Paint paint = new Paint();
        this.f = paint;
        paint.setColor(iArgb);
        this.g = (int) (f * 3.0f);
        this.h = new Paint();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.d dVar = this.l;
        if (dVar == null) {
            dVar = this.m;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.j);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int iA = dVar.a(this.j);
            if (this.k > 0.0f && this.j < getChildCount() - 1) {
                if (iA != dVar.a(this.j + 1)) {
                    float f = this.k;
                    float f2 = 1.0f - f;
                    iA = Color.rgb((int) ((Color.red(iA) * f2) + (Color.red(r3) * f)), (int) ((Color.green(iA) * f2) + (Color.green(r3) * f)), (int) ((Color.blue(iA) * f2) + (Color.blue(r3) * f)));
                }
                View childAt2 = getChildAt(this.j + 1);
                float left2 = this.k * childAt2.getLeft();
                float f3 = this.k;
                left = (int) (((1.0f - f3) * left) + left2);
                right = (int) (((1.0f - this.k) * right) + (f3 * childAt2.getRight()));
            }
            this.h.setColor(iA);
            canvas.drawRect(left, height - this.g, right, height, this.h);
        }
        canvas.drawRect(0.0f, height - this.e, getWidth(), height, this.f);
    }
}
