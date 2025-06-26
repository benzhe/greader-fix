package defpackage;

import android.graphics.Paint;
import android.graphics.Path;

/* loaded from: classes.dex */
public class ca5 {
    public static final int[] i = new int[3];
    public static final float[] j = {0.0f, 0.5f, 1.0f};
    public static final int[] k = new int[4];
    public static final float[] l = {0.0f, 0.0f, 0.5f, 1.0f};
    public final Paint b;
    public final Paint c;
    public int d;
    public int e;
    public int f;
    public final Path g = new Path();
    public Paint h = new Paint();
    public final Paint a = new Paint();

    public ca5() {
        a(-16777216);
        this.h.setColor(0);
        Paint paint = new Paint(4);
        this.b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.c = new Paint(paint);
    }

    public void a(int i2) {
        this.d = d8.h(i2, 68);
        this.e = d8.h(i2, 20);
        this.f = d8.h(i2, 0);
        this.a.setColor(this.d);
    }
}
