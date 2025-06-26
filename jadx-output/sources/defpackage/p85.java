package defpackage;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import java.lang.reflect.Constructor;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p85 {
    public static boolean j;
    public static Constructor<StaticLayout> k;
    public static Object l;
    public CharSequence a;
    public final TextPaint b;
    public final int c;
    public int d;
    public boolean h;
    public Layout.Alignment e = Layout.Alignment.ALIGN_NORMAL;
    public int f = Integer.MAX_VALUE;
    public boolean g = true;
    public TextUtils.TruncateAt i = null;

    public static class a extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        public a(Throwable th) {
            StringBuilder sbZ = jo.z("Error thrown initializing StaticLayout ");
            sbZ.append(th.getMessage());
            super(sbZ.toString(), th);
        }
    }

    public p85(CharSequence charSequence, TextPaint textPaint, int i) {
        this.a = charSequence;
        this.b = textPaint;
        this.c = i;
        this.d = charSequence.length();
    }

    public StaticLayout a() throws NoSuchMethodException, SecurityException, a {
        if (this.a == null) {
            this.a = "";
        }
        int iMax = Math.max(0, this.c);
        CharSequence charSequenceEllipsize = this.a;
        if (this.f == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.b, iMax, this.i);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.d);
        this.d = iMin;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            if (this.h) {
                this.e = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, this.b, iMax);
            builderObtain.setAlignment(this.e);
            builderObtain.setIncludePad(this.g);
            builderObtain.setTextDirection(this.h ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.i;
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(this.f);
            return builderObtain.build();
        }
        if (!j) {
            try {
                l = this.h && i >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                k = declaredConstructor;
                declaredConstructor.setAccessible(true);
                j = true;
            } catch (Exception e) {
                throw new a(e);
            }
        }
        try {
            Constructor<StaticLayout> constructor = k;
            Objects.requireNonNull(constructor);
            Object obj = l;
            Objects.requireNonNull(obj);
            return constructor.newInstance(charSequenceEllipsize, 0, Integer.valueOf(this.d), this.b, Integer.valueOf(iMax), this.e, obj, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.g), null, Integer.valueOf(iMax), Integer.valueOf(this.f));
        } catch (Exception e2) {
            throw new a(e2);
        }
    }
}
