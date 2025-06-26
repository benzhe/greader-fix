package com.google.android.material.slider;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.slider.BaseSlider;
import defpackage.c50;
import defpackage.d0;
import defpackage.d8;
import defpackage.fb;
import defpackage.fc5;
import defpackage.ha;
import defpackage.ha5;
import defpackage.i55;
import defpackage.ic5;
import defpackage.jo;
import defpackage.k85;
import defpackage.la5;
import defpackage.p0;
import defpackage.pa5;
import defpackage.sa;
import defpackage.t85;
import defpackage.u85;
import defpackage.ua5;
import defpackage.v85;
import defpackage.va5;
import defpackage.wa5;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends ua5<S>, T extends va5<S>> extends View {
    public static final String f0 = BaseSlider.class.getSimpleName();
    public static final int g0 = R$style.Widget_MaterialComponents_Slider;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public float F;
    public MotionEvent G;
    public wa5 H;
    public boolean I;
    public float J;
    public float K;
    public ArrayList<Float> L;
    public int M;
    public int N;
    public float O;
    public float[] P;
    public boolean Q;
    public int R;
    public boolean S;
    public boolean T;
    public ColorStateList U;
    public ColorStateList V;
    public ColorStateList W;
    public ColorStateList a0;
    public ColorStateList b0;
    public final la5 c0;
    public float d0;
    public final Paint e;
    public int e0;
    public final Paint f;
    public final Paint g;
    public final Paint h;
    public final Paint i;
    public final Paint j;
    public final e k;
    public final AccessibilityManager l;
    public BaseSlider<S, L, T>.d m;
    public final f n;
    public final List<ic5> o;
    public final List<L> p;
    public final List<T> q;
    public boolean r;
    public ValueAnimator s;
    public ValueAnimator t;
    public final int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();
        public float e;
        public float f;
        public ArrayList<Float> g;
        public float h;
        public boolean i;

        public static class a implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        public SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.e);
            parcel.writeFloat(this.f);
            parcel.writeList(this.g);
            parcel.writeFloat(this.h);
            parcel.writeBooleanArray(new boolean[]{this.i});
        }

        public SliderState(Parcel parcel, a aVar) {
            super(parcel);
            this.e = parcel.readFloat();
            this.f = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.g = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.h = parcel.readFloat();
            this.i = parcel.createBooleanArray()[0];
        }
    }

    public class a implements f {
        public final /* synthetic */ AttributeSet a;
        public final /* synthetic */ int b;

        public a(AttributeSet attributeSet, int i) {
            this.a = attributeSet;
            this.b = i;
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            for (ic5 ic5Var : BaseSlider.this.o) {
                ic5Var.Q = 1.2f;
                ic5Var.O = fFloatValue;
                ic5Var.P = fFloatValue;
                TimeInterpolator timeInterpolator = i55.a;
                float fA = 1.0f;
                if (fFloatValue < 0.19f) {
                    fA = 0.0f;
                } else if (fFloatValue <= 1.0f) {
                    fA = i55.a(0.0f, 1.0f, (fFloatValue - 0.19f) / 0.81f);
                }
                ic5Var.R = fA;
                ic5Var.invalidateSelf();
            }
            BaseSlider baseSlider = BaseSlider.this;
            AtomicInteger atomicInteger = ha.a;
            baseSlider.postInvalidateOnAnimation();
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Iterator<ic5> it = BaseSlider.this.o.iterator();
            while (it.hasNext()) {
                ((u85) c50.d0(BaseSlider.this)).a.remove(it.next());
            }
        }
    }

    public class d implements Runnable {
        public int e = -1;

        public d(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.k.y(this.e, 4);
        }
    }

    public static class e extends fb {
        public final BaseSlider<?, ?, ?> q;
        public Rect r;

        public e(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.r = new Rect();
            this.q = baseSlider;
        }

        @Override // defpackage.fb
        public int o(float f, float f2) {
            for (int i = 0; i < this.q.getValues().size(); i++) {
                this.q.v(i, this.r);
                if (this.r.contains((int) f, (int) f2)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // defpackage.fb
        public void p(List<Integer> list) {
            for (int i = 0; i < this.q.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // defpackage.fb
        public boolean t(int i, int i2, Bundle bundle) {
            if (!this.q.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    float f = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
                    BaseSlider<?, ?, ?> baseSlider = this.q;
                    String str = BaseSlider.f0;
                    if (baseSlider.t(i, f)) {
                        this.q.w();
                        this.q.postInvalidate();
                        q(i);
                        return true;
                    }
                }
                return false;
            }
            BaseSlider<?, ?, ?> baseSlider2 = this.q;
            String str2 = BaseSlider.f0;
            float fB = baseSlider2.b(20);
            if (i2 == 8192) {
                fB = -fB;
            }
            if (this.q.k()) {
                fB = -fB;
            }
            if (!this.q.t(i, d0.h.k(this.q.getValues().get(i).floatValue() + fB, this.q.getValueFrom(), this.q.getValueTo()))) {
                return false;
            }
            this.q.w();
            this.q.postInvalidate();
            q(i);
            return true;
        }

        @Override // defpackage.fb
        public void v(int i, sa saVar) {
            saVar.a(sa.a.o);
            List<Float> values = this.q.getValues();
            float fFloatValue = values.get(i).floatValue();
            float valueFrom = this.q.getValueFrom();
            float valueTo = this.q.getValueTo();
            if (this.q.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    saVar.a.addAction(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                }
                if (fFloatValue < valueTo) {
                    saVar.a.addAction(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
                }
            }
            saVar.a.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, valueFrom, valueTo, fFloatValue));
            saVar.a.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (this.q.getContentDescription() != null) {
                sb.append(this.q.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                sb.append(i == this.q.getValues().size() + (-1) ? this.q.getContext().getString(R$string.material_slider_range_end) : i == 0 ? this.q.getContext().getString(R$string.material_slider_range_start) : "");
                sb.append(this.q.h(fFloatValue));
            }
            saVar.a.setContentDescription(sb.toString());
            this.q.v(i, this.r);
            saVar.a.setBoundsInParent(this.r);
        }
    }

    public interface f {
    }

    public BaseSlider(Context context) {
        this(context, null);
    }

    private float[] getActiveRange() {
        float fFloatValue = ((Float) Collections.max(getValues())).floatValue();
        float fFloatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.L.size() == 1) {
            fFloatValue2 = this.J;
        }
        float fO = o(fFloatValue2);
        float fO2 = o(fFloatValue);
        return k() ? new float[]{fO2, fO} : new float[]{fO, fO2};
    }

    private float getValueOfTouchPosition() {
        double dRound;
        float f2 = this.d0;
        float f3 = this.O;
        if (f3 > 0.0f) {
            dRound = Math.round(f2 * r1) / ((int) ((this.K - this.J) / f3));
        } else {
            dRound = f2;
        }
        if (k()) {
            dRound = 1.0d - dRound;
        }
        float f4 = this.K;
        return (float) ((dRound * (f4 - r1)) + this.J);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f2 = this.d0;
        if (k()) {
            f2 = 1.0f - f2;
        }
        float f3 = this.K;
        float f4 = this.J;
        return jo.a(f3, f4, f2, f4);
    }

    private void setValuesInternal(ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.L.size() == arrayList.size() && this.L.equals(arrayList)) {
            return;
        }
        this.L = arrayList;
        this.T = true;
        this.N = 0;
        w();
        if (this.o.size() > this.L.size()) {
            List<ic5> listSubList = this.o.subList(this.L.size(), this.o.size());
            for (ic5 ic5Var : listSubList) {
                AtomicInteger atomicInteger = ha.a;
                if (isAttachedToWindow()) {
                    e(ic5Var);
                }
            }
            listSubList.clear();
        }
        while (this.o.size() < this.L.size()) {
            a aVar = (a) this.n;
            TypedArray typedArrayD = t85.d(BaseSlider.this.getContext(), aVar.a, R$styleable.Slider, aVar.b, g0, new int[0]);
            Context context = BaseSlider.this.getContext();
            int resourceId = typedArrayD.getResourceId(R$styleable.Slider_labelStyle, R$style.Widget_MaterialComponents_Tooltip);
            ic5 ic5Var2 = new ic5(context, null, 0, resourceId);
            TypedArray typedArrayD2 = t85.d(ic5Var2.D, null, R$styleable.Tooltip, 0, resourceId, new int[0]);
            ic5Var2.M = ic5Var2.D.getResources().getDimensionPixelSize(R$dimen.mtrl_tooltip_arrowSize);
            pa5 pa5Var = ic5Var2.e.a;
            Objects.requireNonNull(pa5Var);
            pa5.b bVar = new pa5.b(pa5Var);
            bVar.k = ic5Var2.G();
            ic5Var2.e.a = bVar.a();
            ic5Var2.invalidateSelf();
            CharSequence text = typedArrayD2.getText(R$styleable.Tooltip_android_text);
            if (!TextUtils.equals(ic5Var2.C, text)) {
                ic5Var2.C = text;
                ic5Var2.F.d = true;
                ic5Var2.invalidateSelf();
            }
            ic5Var2.F.b(c50.j0(ic5Var2.D, typedArrayD2, R$styleable.Tooltip_android_textAppearance), ic5Var2.D);
            ic5Var2.t(ColorStateList.valueOf(typedArrayD2.getColor(R$styleable.Tooltip_backgroundTint, d8.e(d8.h(c50.G0(ic5Var2.D, R$attr.colorOnBackground, ic5.class.getCanonicalName()), 153), d8.h(c50.G0(ic5Var2.D, R.attr.colorBackground, ic5.class.getCanonicalName()), 229)))));
            ic5Var2.A(ColorStateList.valueOf(c50.G0(ic5Var2.D, R$attr.colorSurface, ic5.class.getCanonicalName())));
            ic5Var2.I = typedArrayD2.getDimensionPixelSize(R$styleable.Tooltip_android_padding, 0);
            ic5Var2.J = typedArrayD2.getDimensionPixelSize(R$styleable.Tooltip_android_minWidth, 0);
            ic5Var2.K = typedArrayD2.getDimensionPixelSize(R$styleable.Tooltip_android_minHeight, 0);
            ic5Var2.L = typedArrayD2.getDimensionPixelSize(R$styleable.Tooltip_android_layout_margin, 0);
            typedArrayD2.recycle();
            typedArrayD.recycle();
            this.o.add(ic5Var2);
            AtomicInteger atomicInteger2 = ha.a;
            if (isAttachedToWindow()) {
                a(ic5Var2);
            }
        }
        int i = this.o.size() == 1 ? 0 : 1;
        Iterator<ic5> it = this.o.iterator();
        while (it.hasNext()) {
            it.next().B(i);
        }
        f();
        postInvalidate();
    }

    public final void a(ic5 ic5Var) {
        ViewGroup viewGroupC0 = c50.c0(this);
        Objects.requireNonNull(ic5Var);
        if (viewGroupC0 == null) {
            return;
        }
        int[] iArr = new int[2];
        viewGroupC0.getLocationOnScreen(iArr);
        ic5Var.N = iArr[0];
        viewGroupC0.getWindowVisibleDisplayFrame(ic5Var.H);
        viewGroupC0.addOnLayoutChangeListener(ic5Var.G);
    }

    public final float b(int i) {
        float f2 = this.O;
        if (f2 == 0.0f) {
            f2 = 1.0f;
        }
        return (this.K - this.J) / f2 <= i ? f2 : Math.round(r1 / r4) * f2;
    }

    public final int c() {
        return this.B + (this.y == 1 ? this.o.get(0).getIntrinsicHeight() : 0);
    }

    public final ValueAnimator d(boolean z) {
        float fFloatValue = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.t : this.s;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(z ? 83L : 117L);
        valueAnimatorOfFloat.setInterpolator(z ? i55.e : i55.c);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.k.n(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.e.setColor(i(this.b0));
        this.f.setColor(i(this.a0));
        this.i.setColor(i(this.W));
        this.j.setColor(i(this.V));
        for (ic5 ic5Var : this.o) {
            if (ic5Var.isStateful()) {
                ic5Var.setState(getDrawableState());
            }
        }
        if (this.c0.isStateful()) {
            this.c0.setState(getDrawableState());
        }
        this.h.setColor(i(this.U));
        this.h.setAlpha(63);
    }

    public final void e(ic5 ic5Var) {
        v85 v85VarD0 = c50.d0(this);
        if (v85VarD0 != null) {
            ((u85) v85VarD0).a.remove(ic5Var);
            ViewGroup viewGroupC0 = c50.c0(this);
            Objects.requireNonNull(ic5Var);
            if (viewGroupC0 == null) {
                return;
            }
            viewGroupC0.removeOnLayoutChangeListener(ic5Var.G);
        }
    }

    public final void f() {
        for (L l : this.p) {
            Iterator<Float> it = this.L.iterator();
            while (it.hasNext()) {
                l.a(this, it.next().floatValue(), false);
            }
        }
    }

    public final void g() {
        if (this.r) {
            this.r = false;
            ValueAnimator valueAnimatorD = d(false);
            this.t = valueAnimatorD;
            this.s = null;
            valueAnimatorD.addListener(new c());
            this.t.start();
        }
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.k.k;
    }

    public int getActiveThumbIndex() {
        return this.M;
    }

    public int getFocusedThumbIndex() {
        return this.N;
    }

    public int getHaloRadius() {
        return this.D;
    }

    public ColorStateList getHaloTintList() {
        return this.U;
    }

    public int getLabelBehavior() {
        return this.y;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.O;
    }

    public float getThumbElevation() {
        return this.c0.e.o;
    }

    public int getThumbRadius() {
        return this.C;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.c0.e.e;
    }

    public float getThumbStrokeWidth() {
        return this.c0.e.l;
    }

    public ColorStateList getThumbTintList() {
        return this.c0.e.d;
    }

    public ColorStateList getTickActiveTintList() {
        return this.V;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.W;
    }

    public ColorStateList getTickTintList() {
        if (this.W.equals(this.V)) {
            return this.V;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.a0;
    }

    public int getTrackHeight() {
        return this.z;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.b0;
    }

    public int getTrackSidePadding() {
        return this.A;
    }

    public ColorStateList getTrackTintList() {
        if (this.b0.equals(this.a0)) {
            return this.a0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.R;
    }

    public float getValueFrom() {
        return this.J;
    }

    public float getValueTo() {
        return this.K;
    }

    public List<Float> getValues() {
        return new ArrayList(this.L);
    }

    public final String h(float f2) {
        wa5 wa5Var = this.H;
        if (wa5Var != null) {
            return wa5Var.a(f2);
        }
        return String.format(((float) ((int) f2)) == f2 ? "%.0f" : "%.2f", Float.valueOf(f2));
    }

    public final int i(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public final boolean j() {
        ViewParent parent = getParent();
        while (true) {
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    public final boolean k() {
        AtomicInteger atomicInteger = ha.a;
        return getLayoutDirection() == 1;
    }

    public final void l() {
        if (this.O <= 0.0f) {
            return;
        }
        x();
        int iMin = Math.min((int) (((this.K - this.J) / this.O) + 1.0f), (this.R / (this.z * 2)) + 1);
        float[] fArr = this.P;
        if (fArr == null || fArr.length != iMin * 2) {
            this.P = new float[iMin * 2];
        }
        float f2 = this.R / (iMin - 1);
        for (int i = 0; i < iMin * 2; i += 2) {
            float[] fArr2 = this.P;
            fArr2[i] = ((i / 2) * f2) + this.A;
            fArr2[i + 1] = c();
        }
    }

    public final boolean m(int i) {
        int i2 = this.N;
        long j = i2 + i;
        long size = this.L.size() - 1;
        if (j < 0) {
            j = 0;
        } else if (j > size) {
            j = size;
        }
        int i3 = (int) j;
        this.N = i3;
        if (i3 == i2) {
            return false;
        }
        if (this.M != -1) {
            this.M = i3;
        }
        w();
        postInvalidate();
        return true;
    }

    public final boolean n(int i) {
        if (k()) {
            i = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        return m(i);
    }

    public final float o(float f2) {
        float f3 = this.J;
        float f4 = (f2 - f3) / (this.K - f3);
        return k() ? 1.0f - f4 : f4;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator<ic5> it = this.o.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        BaseSlider<S, L, T>.d dVar = this.m;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.r = false;
        Iterator<ic5> it = this.o.iterator();
        while (it.hasNext()) {
            e(it.next());
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.T) {
            x();
            l();
        }
        super.onDraw(canvas);
        int iC = c();
        int i = this.R;
        float[] activeRange = getActiveRange();
        int i2 = this.A;
        float f2 = i;
        float f3 = (activeRange[1] * f2) + i2;
        float f4 = i2 + i;
        if (f3 < f4) {
            float f5 = iC;
            canvas.drawLine(f3, f5, f4, f5, this.e);
        }
        float f6 = this.A;
        float f7 = (activeRange[0] * f2) + f6;
        if (f7 > f6) {
            float f8 = iC;
            canvas.drawLine(f6, f8, f7, f8, this.e);
        }
        if (((Float) Collections.max(getValues())).floatValue() > this.J) {
            int i3 = this.R;
            float[] activeRange2 = getActiveRange();
            float f9 = this.A;
            float f10 = i3;
            float f11 = iC;
            canvas.drawLine((activeRange2[0] * f10) + f9, f11, (activeRange2[1] * f10) + f9, f11, this.f);
        }
        if (this.Q && this.O > 0.0f) {
            float[] activeRange3 = getActiveRange();
            int iRound = Math.round(activeRange3[0] * ((this.P.length / 2) - 1));
            int iRound2 = Math.round(activeRange3[1] * ((this.P.length / 2) - 1));
            int i4 = iRound * 2;
            canvas.drawPoints(this.P, 0, i4, this.i);
            int i5 = iRound2 * 2;
            canvas.drawPoints(this.P, i4, i5 - i4, this.j);
            float[] fArr = this.P;
            canvas.drawPoints(fArr, i5, fArr.length - i5, this.i);
        }
        if ((this.I || isFocused()) && isEnabled()) {
            int i6 = this.R;
            if (s()) {
                int iO = (int) ((o(this.L.get(this.N).floatValue()) * i6) + this.A);
                if (Build.VERSION.SDK_INT < 28) {
                    int i7 = this.D;
                    canvas.clipRect(iO - i7, iC - i7, iO + i7, i7 + iC, Region.Op.UNION);
                }
                canvas.drawCircle(iO, iC, this.D, this.h);
            }
            if (this.M != -1 && this.y != 2) {
                if (!this.r) {
                    this.r = true;
                    ValueAnimator valueAnimatorD = d(true);
                    this.s = valueAnimatorD;
                    this.t = null;
                    valueAnimatorD.start();
                }
                Iterator<ic5> it = this.o.iterator();
                for (int i8 = 0; i8 < this.L.size() && it.hasNext(); i8++) {
                    if (i8 != this.N) {
                        r(it.next(), this.L.get(i8).floatValue());
                    }
                }
                if (!it.hasNext()) {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.o.size()), Integer.valueOf(this.L.size())));
                }
                r(it.next(), this.L.get(this.N).floatValue());
            }
        }
        int i9 = this.R;
        if (!isEnabled()) {
            Iterator<Float> it2 = this.L.iterator();
            while (it2.hasNext()) {
                canvas.drawCircle((o(it2.next().floatValue()) * i9) + this.A, iC, this.C, this.g);
            }
        }
        Iterator<Float> it3 = this.L.iterator();
        while (it3.hasNext()) {
            Float next = it3.next();
            canvas.save();
            int iO2 = this.A + ((int) (o(next.floatValue()) * i9));
            int i10 = this.C;
            canvas.translate(iO2 - i10, iC - i10);
            this.c0.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            this.M = -1;
            g();
            this.k.k(this.N);
            return;
        }
        if (i == 1) {
            m(Integer.MAX_VALUE);
        } else if (i == 2) {
            m(Integer.MIN_VALUE);
        } else if (i == 17) {
            n(Integer.MAX_VALUE);
        } else if (i == 66) {
            n(Integer.MIN_VALUE);
        }
        this.k.x(this.N);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r12, android.view.KeyEvent r13) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.S = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.x + (this.y == 1 ? this.o.get(0).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.J = sliderState.e;
        this.K = sliderState.f;
        setValuesInternal(sliderState.g);
        this.O = sliderState.h;
        if (sliderState.i) {
            requestFocus();
        }
        f();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.e = this.J;
        sliderState.f = this.K;
        sliderState.g = new ArrayList<>(this.L);
        sliderState.h = this.O;
        sliderState.i = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.R = Math.max(i - (this.A * 2), 0);
        l();
        w();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float x = motionEvent.getX();
        float f2 = (x - this.A) / this.R;
        this.d0 = f2;
        float fMax = Math.max(0.0f, f2);
        this.d0 = fMax;
        this.d0 = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.F = x;
            if (!j()) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (q()) {
                    requestFocus();
                    this.I = true;
                    u();
                    w();
                    invalidate();
                    p();
                }
            }
        } else if (actionMasked == 1) {
            this.I = false;
            MotionEvent motionEvent2 = this.G;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.G.getX() - motionEvent.getX()) <= this.u && Math.abs(this.G.getY() - motionEvent.getY()) <= this.u && q()) {
                p();
            }
            if (this.M != -1) {
                u();
                this.M = -1;
                Iterator<T> it = this.q.iterator();
                while (it.hasNext()) {
                    it.next().b(this);
                }
            }
            g();
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.I) {
                if (j() && Math.abs(x - this.F) < this.u) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                p();
            }
            if (q()) {
                this.I = true;
                u();
                w();
                invalidate();
            }
        }
        setPressed(this.I);
        this.G = MotionEvent.obtain(motionEvent);
        return true;
    }

    public final void p() {
        Iterator<T> it = this.q.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    public boolean q() {
        if (this.M != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float fO = (o(valueOfTouchPositionAbsolute) * this.R) + this.A;
        this.M = 0;
        float fAbs = Math.abs(this.L.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i = 1; i < this.L.size(); i++) {
            float fAbs2 = Math.abs(this.L.get(i).floatValue() - valueOfTouchPositionAbsolute);
            float fO2 = (o(this.L.get(i).floatValue()) * this.R) + this.A;
            if (Float.compare(fAbs2, fAbs) > 1) {
                break;
            }
            boolean z = !k() ? fO2 - fO >= 0.0f : fO2 - fO <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.M = i;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fO2 - fO) < this.u) {
                        this.M = -1;
                        return false;
                    }
                    if (z) {
                        this.M = i;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.M != -1;
    }

    public final void r(ic5 ic5Var, float f2) {
        String strH = h(f2);
        if (!TextUtils.equals(ic5Var.C, strH)) {
            ic5Var.C = strH;
            ic5Var.F.d = true;
            ic5Var.invalidateSelf();
        }
        int iO = (this.A + ((int) (o(f2) * this.R))) - (ic5Var.getIntrinsicWidth() / 2);
        int iC = c() - (this.E + this.C);
        ic5Var.setBounds(iO, iC - ic5Var.getIntrinsicHeight(), ic5Var.getIntrinsicWidth() + iO, iC);
        Rect rect = new Rect(ic5Var.getBounds());
        k85.c(c50.c0(this), this, rect);
        ic5Var.setBounds(rect);
        ((u85) c50.d0(this)).a.add(ic5Var);
    }

    public final boolean s() {
        return !(getBackground() instanceof RippleDrawable);
    }

    public void setActiveThumbIndex(int i) {
        this.M = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.L.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.N = i;
        this.k.x(i);
        postInvalidate();
    }

    public void setHaloRadius(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (i == this.D) {
            return;
        }
        this.D = i;
        Drawable background = getBackground();
        if (s() || !(background instanceof RippleDrawable)) {
            postInvalidate();
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) background;
        int i2 = this.D;
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i2);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i2));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e2);
        }
    }

    public void setHaloRadiusResource(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.U)) {
            return;
        }
        this.U = colorStateList;
        Drawable background = getBackground();
        if (!s() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.h.setColor(colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor()));
        this.h.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i) {
        if (this.y != i) {
            this.y = i;
            requestLayout();
        }
    }

    public void setLabelFormatter(wa5 wa5Var) {
        this.H = wa5Var;
    }

    public void setSeparationUnit(int i) {
        this.e0 = i;
    }

    public void setStepSize(float f2) {
        if (f2 < 0.0f) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(f2), Float.toString(this.J), Float.toString(this.K)));
        }
        if (this.O != f2) {
            this.O = f2;
            this.T = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f2) {
        la5 la5Var = this.c0;
        la5.b bVar = la5Var.e;
        if (bVar.o != f2) {
            bVar.o = f2;
            la5Var.E();
        }
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    public void setThumbRadius(int i) {
        if (i == this.C) {
            return;
        }
        this.C = i;
        this.A = this.v + Math.max(i - this.w, 0);
        AtomicInteger atomicInteger = ha.a;
        if (isLaidOut()) {
            this.R = Math.max(getWidth() - (this.A * 2), 0);
            l();
        }
        la5 la5Var = this.c0;
        pa5.b bVar = new pa5.b();
        float f2 = this.C;
        ha5 ha5VarJ = c50.J(0);
        bVar.a = ha5VarJ;
        pa5.b.b(ha5VarJ);
        bVar.b = ha5VarJ;
        pa5.b.b(ha5VarJ);
        bVar.c = ha5VarJ;
        pa5.b.b(ha5VarJ);
        bVar.d = ha5VarJ;
        pa5.b.b(ha5VarJ);
        bVar.c(f2);
        la5Var.e.a = bVar.a();
        la5Var.invalidateSelf();
        la5 la5Var2 = this.c0;
        int i2 = this.C;
        la5Var2.setBounds(0, 0, i2 * 2, i2 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.c0.A(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(p0.a(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f2) {
        la5 la5Var = this.c0;
        la5Var.e.l = f2;
        la5Var.invalidateSelf();
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.c0.e.d)) {
            return;
        }
        this.c0.t(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.V)) {
            return;
        }
        this.V = colorStateList;
        this.j.setColor(i(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.W)) {
            return;
        }
        this.W = colorStateList;
        this.i.setColor(i(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.Q != z) {
            this.Q = z;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.a0)) {
            return;
        }
        this.a0 = colorStateList;
        this.f.setColor(i(colorStateList));
        invalidate();
    }

    public void setTrackHeight(int i) {
        if (this.z != i) {
            this.z = i;
            this.e.setStrokeWidth(i);
            this.f.setStrokeWidth(this.z);
            this.i.setStrokeWidth(this.z / 2.0f);
            this.j.setStrokeWidth(this.z / 2.0f);
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.b0)) {
            return;
        }
        this.b0 = colorStateList;
        this.e.setColor(i(colorStateList));
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f2) {
        this.J = f2;
        this.T = true;
        postInvalidate();
    }

    public void setValueTo(float f2) {
        this.K = f2;
        this.T = true;
        postInvalidate();
    }

    public void setValues(Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    public final boolean t(int i, float f2) {
        if (Math.abs(f2 - this.L.get(i).floatValue()) < 1.0E-4d) {
            return false;
        }
        float fA = 0.0f;
        float minSeparation = this.O == 0.0f ? getMinSeparation() : 0.0f;
        if (this.e0 == 0) {
            if (minSeparation != 0.0f) {
                float f3 = this.J;
                fA = jo.a(f3, this.K, (minSeparation - this.A) / this.R, f3);
            }
            minSeparation = fA;
        }
        if (k()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        this.L.set(i, Float.valueOf(d0.h.k(f2, i3 < 0 ? this.J : minSeparation + this.L.get(i3).floatValue(), i2 >= this.L.size() ? this.K : this.L.get(i2).floatValue() - minSeparation)));
        this.N = i;
        Iterator<L> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.L.get(i).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.l;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            BaseSlider<S, L, T>.d dVar = this.m;
            if (dVar == null) {
                this.m = new d(null);
            } else {
                removeCallbacks(dVar);
            }
            BaseSlider<S, L, T>.d dVar2 = this.m;
            dVar2.e = i;
            postDelayed(dVar2, 200L);
        }
        return true;
    }

    public final boolean u() {
        return t(this.M, getValueOfTouchPosition());
    }

    public void v(int i, Rect rect) {
        int iO = this.A + ((int) (o(getValues().get(i).floatValue()) * this.R));
        int iC = c();
        int i2 = this.C;
        rect.set(iO - i2, iC - i2, iO + i2, iC + i2);
    }

    public final void w() {
        if (s() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iO = (int) ((o(this.L.get(this.N).floatValue()) * this.R) + this.A);
            int iC = c();
            int i = this.D;
            background.setHotspotBounds(iO - i, iC - i, iO + i, iC + i);
        }
    }

    public final void x() {
        if (this.T) {
            float f2 = this.J;
            float f3 = this.K;
            if (f2 >= f3) {
                throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.toString(this.J), Float.toString(this.K)));
            }
            if (f3 <= f2) {
                throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.toString(this.K), Float.toString(this.J)));
            }
            if (this.O > 0.0f && !y(f3)) {
                throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.toString(this.O), Float.toString(this.J), Float.toString(this.K)));
            }
            Iterator<Float> it = this.L.iterator();
            while (it.hasNext()) {
                Float next = it.next();
                if (next.floatValue() < this.J || next.floatValue() > this.K) {
                    throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", Float.toString(next.floatValue()), Float.toString(this.J), Float.toString(this.K)));
                }
                if (this.O > 0.0f && !y(next.floatValue())) {
                    throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", Float.toString(next.floatValue()), Float.toString(this.J), Float.toString(this.O), Float.toString(this.O)));
                }
            }
            float f4 = this.O;
            if (f4 != 0.0f) {
                if (((int) f4) != f4) {
                    Log.w(f0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "stepSize", Float.valueOf(f4)));
                }
                float f5 = this.J;
                if (((int) f5) != f5) {
                    Log.w(f0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueFrom", Float.valueOf(f5)));
                }
                float f6 = this.K;
                if (((int) f6) != f6) {
                    Log.w(f0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly.", "valueTo", Float.valueOf(f6)));
                }
            }
            this.T = false;
        }
    }

    public final boolean y(float f2) {
        double dDoubleValue = new BigDecimal(Float.toString(f2)).subtract(new BigDecimal(Float.toString(this.J))).divide(new BigDecimal(Float.toString(this.O)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.sliderStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BaseSlider(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        int i2 = g0;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = false;
        this.I = false;
        this.L = new ArrayList<>();
        this.M = -1;
        this.N = -1;
        this.O = 0.0f;
        this.Q = true;
        this.S = false;
        la5 la5Var = new la5();
        this.c0 = la5Var;
        this.e0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.e = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.g = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.h = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.i = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.j = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        Resources resources = context2.getResources();
        this.x = resources.getDimensionPixelSize(R$dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_slider_track_side_padding);
        this.v = dimensionPixelOffset;
        this.A = dimensionPixelOffset;
        this.w = resources.getDimensionPixelSize(R$dimen.mtrl_slider_thumb_radius);
        this.B = resources.getDimensionPixelOffset(R$dimen.mtrl_slider_track_top);
        this.E = resources.getDimensionPixelSize(R$dimen.mtrl_slider_label_padding);
        this.n = new a(attributeSet, i);
        int[] iArr = R$styleable.Slider;
        t85.a(context2, attributeSet, i, i2);
        t85.b(context2, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.J = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_valueFrom, 0.0f);
        this.K = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.J));
        this.O = typedArrayObtainStyledAttributes.getFloat(R$styleable.Slider_android_stepSize, 0.0f);
        int i3 = R$styleable.Slider_trackColor;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i3);
        int i4 = zHasValue ? i3 : R$styleable.Slider_trackColorInactive;
        i3 = zHasValue ? i3 : R$styleable.Slider_trackColorActive;
        ColorStateList colorStateListA0 = c50.a0(context2, typedArrayObtainStyledAttributes, i4);
        setTrackInactiveTintList(colorStateListA0 == null ? p0.a(context2, R$color.material_slider_inactive_track_color) : colorStateListA0);
        ColorStateList colorStateListA02 = c50.a0(context2, typedArrayObtainStyledAttributes, i3);
        setTrackActiveTintList(colorStateListA02 == null ? p0.a(context2, R$color.material_slider_active_track_color) : colorStateListA02);
        la5Var.t(c50.a0(context2, typedArrayObtainStyledAttributes, R$styleable.Slider_thumbColor));
        int i5 = R$styleable.Slider_thumbStrokeColor;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            setThumbStrokeColor(c50.a0(context2, typedArrayObtainStyledAttributes, i5));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R$styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListA03 = c50.a0(context2, typedArrayObtainStyledAttributes, R$styleable.Slider_haloColor);
        setHaloTintList(colorStateListA03 == null ? p0.a(context2, R$color.material_slider_halo_color) : colorStateListA03);
        this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Slider_tickVisible, true);
        int i6 = R$styleable.Slider_tickColor;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i6);
        int i7 = zHasValue2 ? i6 : R$styleable.Slider_tickColorInactive;
        i6 = zHasValue2 ? i6 : R$styleable.Slider_tickColorActive;
        ColorStateList colorStateListA04 = c50.a0(context2, typedArrayObtainStyledAttributes, i7);
        setTickInactiveTintList(colorStateListA04 == null ? p0.a(context2, R$color.material_slider_inactive_tick_marks_color) : colorStateListA04);
        ColorStateList colorStateListA05 = c50.a0(context2, typedArrayObtainStyledAttributes, i6);
        setTickActiveTintList(colorStateListA05 == null ? p0.a(context2, R$color.material_slider_active_tick_marks_color) : colorStateListA05);
        setThumbRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_thumbRadius, 0));
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(R$styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Slider_trackHeight, 0));
        this.y = typedArrayObtainStyledAttributes.getInt(R$styleable.Slider_labelBehavior, 0);
        if (!typedArrayObtainStyledAttributes.getBoolean(R$styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        la5Var.x(2);
        this.u = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.k = eVar;
        ha.s(this, eVar);
        this.l = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public void setValues(List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }
}
