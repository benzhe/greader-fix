package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes.dex */
public class i2 {
    public final TextView a;
    public a3 b;
    public a3 c;
    public a3 d;
    public a3 e;
    public a3 f;
    public a3 g;
    public a3 h;
    public final j2 i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public class a extends b8 {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;
        public final /* synthetic */ WeakReference c;

        public a(int i, int i2, WeakReference weakReference) {
            this.a = i;
            this.b = i2;
            this.c = weakReference;
        }

        @Override // defpackage.b8
        public void c(int i) {
        }

        @Override // defpackage.b8
        public void d(Typeface typeface) {
            int i;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.a) != -1) {
                typeface = Typeface.create(typeface, i, (this.b & 2) != 0);
            }
            i2 i2Var = i2.this;
            WeakReference weakReference = this.c;
            if (i2Var.m) {
                i2Var.l = typeface;
                TextView textView = (TextView) weakReference.get();
                if (textView != null) {
                    textView.setTypeface(typeface, i2Var.j);
                }
            }
        }
    }

    public i2(TextView textView) {
        this.a = textView;
        this.i = new j2(textView);
    }

    public static a3 c(Context context, b2 b2Var, int i) {
        ColorStateList colorStateListD = b2Var.d(context, i);
        if (colorStateListD == null) {
            return null;
        }
        a3 a3Var = new a3();
        a3Var.d = true;
        a3Var.a = colorStateListD;
        return a3Var;
    }

    public final void a(Drawable drawable, a3 a3Var) {
        if (drawable == null || a3Var == null) {
            return;
        }
        b2.f(drawable, a3Var, this.a.getDrawableState());
    }

    public void b() {
        if (this.b != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public boolean d() {
        j2 j2Var = this.i;
        return j2Var.i() && j2Var.a != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(android.util.AttributeSet r23, int r24) throws android.content.res.Resources.NotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 1159
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i2.e(android.util.AttributeSet, int):void");
    }

    public void f(Context context, int i) {
        String strN;
        ColorStateList colorStateListC;
        c3 c3Var = new c3(context, context.obtainStyledAttributes(i, R$styleable.TextAppearance));
        int i2 = R$styleable.TextAppearance_textAllCaps;
        if (c3Var.p(i2)) {
            this.a.setAllCaps(c3Var.a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = R$styleable.TextAppearance_android_textColor;
            if (c3Var.p(i4) && (colorStateListC = c3Var.c(i4)) != null) {
                this.a.setTextColor(colorStateListC);
            }
        }
        int i5 = R$styleable.TextAppearance_android_textSize;
        if (c3Var.p(i5) && c3Var.f(i5, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        l(context, c3Var);
        if (i3 >= 26) {
            int i6 = R$styleable.TextAppearance_fontVariationSettings;
            if (c3Var.p(i6) && (strN = c3Var.n(i6)) != null) {
                this.a.setFontVariationSettings(strN);
            }
        }
        c3Var.b.recycle();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.j);
        }
    }

    public void g(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        j2 j2Var = this.i;
        if (j2Var.i()) {
            DisplayMetrics displayMetrics = j2Var.j.getResources().getDisplayMetrics();
            j2Var.j(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (j2Var.g()) {
                j2Var.a();
            }
        }
    }

    public void h(int[] iArr, int i) throws IllegalArgumentException {
        j2 j2Var = this.i;
        if (j2Var.i()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = j2Var.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                j2Var.f = j2Var.b(iArrCopyOf);
                if (!j2Var.h()) {
                    StringBuilder sbZ = jo.z("None of the preset sizes is valid: ");
                    sbZ.append(Arrays.toString(iArr));
                    throw new IllegalArgumentException(sbZ.toString());
                }
            } else {
                j2Var.g = false;
            }
            if (j2Var.g()) {
                j2Var.a();
            }
        }
    }

    public void i(int i) throws IllegalArgumentException {
        j2 j2Var = this.i;
        if (j2Var.i()) {
            if (i == 0) {
                j2Var.a = 0;
                j2Var.d = -1.0f;
                j2Var.e = -1.0f;
                j2Var.c = -1.0f;
                j2Var.f = new int[0];
                j2Var.b = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException(jo.g("Unknown auto-size text type: ", i));
            }
            DisplayMetrics displayMetrics = j2Var.j.getResources().getDisplayMetrics();
            j2Var.j(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (j2Var.g()) {
                j2Var.a();
            }
        }
    }

    public void j(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new a3();
        }
        a3 a3Var = this.h;
        a3Var.a = colorStateList;
        a3Var.d = colorStateList != null;
        this.b = a3Var;
        this.c = a3Var;
        this.d = a3Var;
        this.e = a3Var;
        this.f = a3Var;
        this.g = a3Var;
    }

    public void k(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new a3();
        }
        a3 a3Var = this.h;
        a3Var.b = mode;
        a3Var.c = mode != null;
        this.b = a3Var;
        this.c = a3Var;
        this.d = a3Var;
        this.e = a3Var;
        this.f = a3Var;
        this.g = a3Var;
    }

    public final void l(Context context, c3 c3Var) {
        String strN;
        this.j = c3Var.j(R$styleable.TextAppearance_android_textStyle, this.j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int iJ = c3Var.j(R$styleable.TextAppearance_android_textFontWeight, -1);
            this.k = iJ;
            if (iJ != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        int i2 = R$styleable.TextAppearance_android_fontFamily;
        if (!c3Var.p(i2) && !c3Var.p(R$styleable.TextAppearance_fontFamily)) {
            int i3 = R$styleable.TextAppearance_android_typeface;
            if (c3Var.p(i3)) {
                this.m = false;
                int iJ2 = c3Var.j(i3, 1);
                if (iJ2 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (iJ2 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (iJ2 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i4 = R$styleable.TextAppearance_fontFamily;
        if (c3Var.p(i4)) {
            i2 = i4;
        }
        int i5 = this.k;
        int i6 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceI = c3Var.i(i2, this.j, new a(i5, i6, new WeakReference(this.a)));
                if (typefaceI != null) {
                    if (i < 28 || this.k == -1) {
                        this.l = typefaceI;
                    } else {
                        this.l = Typeface.create(Typeface.create(typefaceI, 0), this.k, (this.j & 2) != 0);
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (strN = c3Var.n(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
            this.l = Typeface.create(strN, this.j);
        } else {
            this.l = Typeface.create(Typeface.create(strN, 0), this.k, (this.j & 2) != 0);
        }
    }
}
