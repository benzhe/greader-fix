package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import defpackage.a3;
import defpackage.bb;
import defpackage.d0;
import defpackage.g8;
import defpackage.h2;
import defpackage.i2;
import defpackage.n8;
import defpackage.n9;
import defpackage.p0;
import defpackage.wa;
import defpackage.x2;
import defpackage.z1;
import defpackage.z2;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements bb, wa {
    public final z1 e;
    public final i2 f;
    public final h2 g;
    public Future<n9> h;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.a();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (wa.a) {
            return super.getAutoSizeMaxTextSize();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (wa.a) {
            return super.getAutoSizeMinTextSize();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (wa.a) {
            return super.getAutoSizeStepGranularity();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return Math.round(i2Var.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (wa.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        i2 i2Var = this.f;
        return i2Var != null ? i2Var.i.f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (wa.a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            return i2Var.i.a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        a3 a3Var = this.f.h;
        if (a3Var != null) {
            return a3Var.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        a3 a3Var = this.f.h;
        if (a3Var != null) {
            return a3Var.b;
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future<n9> future = this.h;
        if (future != null) {
            try {
                this.h = null;
                d0.h.b0(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        h2 h2Var;
        return (Build.VERSION.SDK_INT >= 28 || (h2Var = this.g) == null) ? super.getTextClassifier() : h2Var.a();
    }

    public n9.a getTextMetricsParamsCompat() {
        return d0.h.L(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d0.h.S(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        i2 i2Var = this.f;
        if (i2Var == null || wa.a) {
            return;
        }
        i2Var.i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future<n9> future = this.h;
        if (future != null) {
            try {
                this.h = null;
                d0.h.b0(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        i2 i2Var = this.f;
        if (i2Var == null || wa.a || !i2Var.d()) {
            return;
        }
        this.f.i.a();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.g(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.h(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) throws IllegalArgumentException {
        if (wa.a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.i(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d0.h.m0(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            d0.h.W(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            d0.h.X(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        d0.h.Z(this, i);
    }

    public void setPrecomputedText(n9 n9Var) {
        d0.h.b0(this, n9Var);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.i(mode);
        }
    }

    @Override // defpackage.bb
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f.j(colorStateList);
        this.f.b();
    }

    @Override // defpackage.bb
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f.k(mode);
        this.f.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        h2 h2Var;
        if (Build.VERSION.SDK_INT >= 28 || (h2Var = this.g) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            h2Var.b = textClassifier;
        }
    }

    public void setTextFuture(Future<n9> future) {
        this.h = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(n9.a aVar) {
        int i = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = aVar.b;
        int i2 = 1;
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                i2 = 2;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                i2 = 3;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                i2 = 4;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                i2 = 5;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                i2 = 6;
            } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                i2 = 7;
            }
        }
        setTextDirection(i2);
        if (i >= 23) {
            getPaint().set(aVar.a);
            setBreakStrategy(aVar.c);
            setHyphenationFrequency(aVar.d);
        } else {
            float textScaleX = aVar.a.getTextScaleX();
            getPaint().set(aVar.a);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = wa.a;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        i2 i2Var = this.f;
        if (i2Var == null || z || i2Var.d()) {
            return;
        }
        i2Var.i.f(i, f);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface typefaceCreate;
        if (typeface == null || i <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            n8 n8Var = g8.a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i);
        }
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        super.setTypeface(typeface, i);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        z1 z1Var = new z1(this);
        this.e = z1Var;
        z1Var.d(attributeSet, i);
        i2 i2Var = new i2(this);
        this.f = i2Var;
        i2Var.e(attributeSet, i);
        i2Var.b();
        this.g = new h2(this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? p0.b(context, i) : null, i2 != 0 ? p0.b(context, i2) : null, i3 != 0 ? p0.b(context, i3) : null, i4 != 0 ? p0.b(context, i4) : null);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? p0.b(context, i) : null, i2 != 0 ? p0.b(context, i2) : null, i3 != 0 ? p0.b(context, i3) : null, i4 != 0 ? p0.b(context, i4) : null);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }
}
