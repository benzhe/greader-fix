package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import defpackage.b2;
import defpackage.bc5;
import defpackage.c3;
import defpackage.c50;
import defpackage.cc5;
import defpackage.d0;
import defpackage.dc5;
import defpackage.ea5;
import defpackage.ec5;
import defpackage.fc5;
import defpackage.ha;
import defpackage.i55;
import defpackage.j85;
import defpackage.jo;
import defpackage.k85;
import defpackage.la5;
import defpackage.m2;
import defpackage.m9;
import defpackage.p0;
import defpackage.pa5;
import defpackage.pb5;
import defpackage.sa;
import defpackage.t85;
import defpackage.u7;
import defpackage.ub5;
import defpackage.v9;
import defpackage.vb5;
import defpackage.wb5;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public static final int O0 = R$style.Widget_Design_TextInputLayout;
    public CharSequence A;
    public int A0;
    public final TextView B;
    public ColorStateList B0;
    public boolean C;
    public int C0;
    public CharSequence D;
    public int D0;
    public boolean E;
    public int E0;
    public la5 F;
    public int F0;
    public la5 G;
    public int G0;
    public pa5 H;
    public boolean H0;
    public final int I;
    public final j85 I0;
    public int J;
    public boolean J0;
    public int K;
    public boolean K0;
    public int L;
    public ValueAnimator L0;
    public int M;
    public boolean M0;
    public int N;
    public boolean N0;
    public int O;
    public int P;
    public int Q;
    public final Rect R;
    public final Rect S;
    public final RectF T;
    public Typeface U;
    public final CheckableImageButton V;
    public ColorStateList W;
    public boolean a0;
    public PorterDuff.Mode b0;
    public boolean c0;
    public Drawable d0;
    public final FrameLayout e;
    public int e0;
    public final LinearLayout f;
    public View.OnLongClickListener f0;
    public final LinearLayout g;
    public final LinkedHashSet<f> g0;
    public final FrameLayout h;
    public int h0;
    public EditText i;
    public final SparseArray<bc5> i0;
    public CharSequence j;
    public final CheckableImageButton j0;
    public final cc5 k;
    public final LinkedHashSet<g> k0;
    public boolean l;
    public ColorStateList l0;
    public int m;
    public boolean m0;
    public boolean n;
    public PorterDuff.Mode n0;
    public TextView o;
    public boolean o0;
    public int p;
    public Drawable p0;
    public int q;
    public int q0;
    public CharSequence r;
    public Drawable r0;
    public boolean s;
    public View.OnLongClickListener s0;
    public TextView t;
    public View.OnLongClickListener t0;
    public ColorStateList u;
    public final CheckableImageButton u0;
    public int v;
    public ColorStateList v0;
    public ColorStateList w;
    public ColorStateList w0;
    public ColorStateList x;
    public ColorStateList x0;
    public CharSequence y;
    public int y0;
    public final TextView z;
    public int z0;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public CharSequence g;
        public boolean h;
        public CharSequence i;
        public CharSequence j;
        public CharSequence k;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("TextInputLayout.SavedState{");
            sbZ.append(Integer.toHexString(System.identityHashCode(this)));
            sbZ.append(" error=");
            sbZ.append((Object) this.g);
            sbZ.append(" hint=");
            sbZ.append((Object) this.i);
            sbZ.append(" helperText=");
            sbZ.append((Object) this.j);
            sbZ.append(" placeholderText=");
            sbZ.append((Object) this.k);
            sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
            return sbZ.toString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            TextUtils.writeToParcel(this.g, parcel, i);
            parcel.writeInt(this.h ? 1 : 0);
            TextUtils.writeToParcel(this.i, parcel, i);
            TextUtils.writeToParcel(this.j, parcel, i);
            TextUtils.writeToParcel(this.k, parcel, i);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.h = parcel.readInt() == 1;
            this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
            TextInputLayout.this.y(!r0.N0, false);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.l) {
                textInputLayout.t(editable.length());
            }
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.s) {
                textInputLayout2.z(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.j0.performClick();
            TextInputLayout.this.j0.jumpDrawablesToCurrentState();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.i.requestLayout();
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) throws NoSuchMethodException, SecurityException {
            TextInputLayout.this.I0.w(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends v9 {
        public final TextInputLayout d;

        public e(TextInputLayout textInputLayout) {
            this.d = textInputLayout;
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            EditText editText = this.d.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.d.getHint();
            CharSequence error = this.d.getError();
            CharSequence placeholderText = this.d.getPlaceholderText();
            int counterMaxLength = this.d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.d.H0;
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z2 ? hint.toString() : "";
            if (z) {
                saVar.a.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                saVar.a.setText(string);
                if (z3 && placeholderText != null) {
                    saVar.a.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                saVar.a.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    saVar.u(string);
                } else {
                    if (z) {
                        string = ((Object) text) + ", " + string;
                    }
                    saVar.a.setText(string);
                }
                boolean z6 = !z;
                if (i >= 26) {
                    saVar.a.setShowingHintText(z6);
                } else {
                    saVar.r(4, z6);
                }
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            saVar.a.setMaxTextLength(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                saVar.a.setError(error);
            }
            if (editText != null) {
                editText.setLabelFor(R$id.textinput_helper_text);
            }
        }
    }

    public interface f {
        void a(TextInputLayout textInputLayout);
    }

    public interface g {
        void a(TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    private bc5 getEndIconDelegate() {
        bc5 bc5Var = this.i0.get(this.h0);
        return bc5Var != null ? bc5Var : this.i0.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.u0.getVisibility() == 0) {
            return this.u0;
        }
        if (j() && k()) {
            return this.j0;
        }
        return null;
    }

    public static void n(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                n((ViewGroup) childAt, z);
            }
        }
    }

    public static void q(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        AtomicInteger atomicInteger = ha.a;
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = onLongClickListener != null;
        boolean z2 = zHasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        checkableImageButton.setImportantForAccessibility(z2 ? 1 : 2);
    }

    private void setEditText(EditText editText) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        if (this.i != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.h0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.i = editText;
        l();
        setTextInputAccessibilityDelegate(new e(this));
        this.I0.A(this.i.getTypeface());
        j85 j85Var = this.I0;
        float textSize = this.i.getTextSize();
        if (j85Var.i != textSize) {
            j85Var.i = textSize;
            j85Var.m();
        }
        int gravity = this.i.getGravity();
        this.I0.q((gravity & (-113)) | 48);
        this.I0.u(gravity);
        this.i.addTextChangedListener(new a());
        if (this.w0 == null) {
            this.w0 = this.i.getHintTextColors();
        }
        if (this.C) {
            if (TextUtils.isEmpty(this.D)) {
                CharSequence hint = this.i.getHint();
                this.j = hint;
                setHint(hint);
                this.i.setHint((CharSequence) null);
            }
            this.E = true;
        }
        if (this.o != null) {
            t(this.i.getText().length());
        }
        w();
        this.k.b();
        this.f.bringToFront();
        this.g.bringToFront();
        this.h.bringToFront();
        this.u0.bringToFront();
        Iterator<f> it = this.g0.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        A();
        D();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        y(false, true);
    }

    private void setErrorIconVisible(boolean z) throws Resources.NotFoundException {
        this.u0.setVisibility(z ? 0 : 8);
        this.h.setVisibility(z ? 8 : 0);
        D();
        if (j()) {
            return;
        }
        v();
    }

    private void setHintInternal(CharSequence charSequence) throws NoSuchMethodException, SecurityException {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        this.I0.z(charSequence);
        if (this.H0) {
            return;
        }
        m();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.s == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.t = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_placeholder);
            TextView textView = this.t;
            AtomicInteger atomicInteger = ha.a;
            textView.setAccessibilityLiveRegion(1);
            setPlaceholderTextAppearance(this.v);
            setPlaceholderTextColor(this.u);
            TextView textView2 = this.t;
            if (textView2 != null) {
                this.e.addView(textView2);
                this.t.setVisibility(0);
            }
        } else {
            TextView textView3 = this.t;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            this.t = null;
        }
        this.s = z;
    }

    public final void A() throws Resources.NotFoundException {
        if (this.i == null) {
            return;
        }
        int paddingStart = 0;
        if (!(this.V.getVisibility() == 0)) {
            EditText editText = this.i;
            AtomicInteger atomicInteger = ha.a;
            paddingStart = editText.getPaddingStart();
        }
        TextView textView = this.z;
        int compoundPaddingTop = this.i.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = this.i.getCompoundPaddingBottom();
        AtomicInteger atomicInteger2 = ha.a;
        textView.setPaddingRelative(paddingStart, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void B() {
        this.z.setVisibility((this.y == null || this.H0) ? 8 : 0);
        v();
    }

    public final void C(boolean z, boolean z2) {
        int defaultColor = this.B0.getDefaultColor();
        int colorForState = this.B0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.B0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.P = colorForState2;
        } else if (z2) {
            this.P = colorForState;
        } else {
            this.P = defaultColor;
        }
    }

    public final void D() throws Resources.NotFoundException {
        if (this.i == null) {
            return;
        }
        int paddingEnd = 0;
        if (!k()) {
            if (!(this.u0.getVisibility() == 0)) {
                EditText editText = this.i;
                AtomicInteger atomicInteger = ha.a;
                paddingEnd = editText.getPaddingEnd();
            }
        }
        TextView textView = this.B;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.i.getPaddingTop();
        int paddingBottom = this.i.getPaddingBottom();
        AtomicInteger atomicInteger2 = ha.a;
        textView.setPaddingRelative(dimensionPixelSize, paddingTop, paddingEnd, paddingBottom);
    }

    public final void E() {
        int visibility = this.B.getVisibility();
        boolean z = (this.A == null || this.H0) ? false : true;
        this.B.setVisibility(z ? 0 : 8);
        if (visibility != this.B.getVisibility()) {
            getEndIconDelegate().c(z);
        }
        v();
    }

    public void F() throws Resources.NotFoundException {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.K == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.i) != null && editText2.hasFocus());
        boolean z3 = isHovered() || ((editText = this.i) != null && editText.isHovered());
        if (!isEnabled()) {
            this.P = this.G0;
        } else if (this.k.e()) {
            if (this.B0 != null) {
                C(z2, z3);
            } else {
                this.P = this.k.g();
            }
        } else if (!this.n || (textView = this.o) == null) {
            if (z2) {
                this.P = this.A0;
            } else if (z3) {
                this.P = this.z0;
            } else {
                this.P = this.y0;
            }
        } else if (this.B0 != null) {
            C(z2, z3);
        } else {
            this.P = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null) {
            cc5 cc5Var = this.k;
            if (cc5Var.k && cc5Var.e()) {
                z = true;
            }
        }
        setErrorIconVisible(z);
        p(this.u0, this.v0);
        p(this.V, this.W);
        o();
        if (getEndIconDelegate().d()) {
            if (!this.k.e() || getEndIconDrawable() == null) {
                d();
            } else {
                Drawable drawableMutate = d0.h.l0(getEndIconDrawable()).mutate();
                drawableMutate.setTint(this.k.g());
                this.j0.setImageDrawable(drawableMutate);
            }
        }
        if (z2 && isEnabled()) {
            this.M = this.O;
        } else {
            this.M = this.N;
        }
        if (this.K == 2 && g() && !this.H0 && this.J != this.M) {
            if (g()) {
                ((vb5) this.F).F(0.0f, 0.0f, 0.0f, 0.0f);
            }
            m();
        }
        if (this.K == 1) {
            if (!isEnabled()) {
                this.Q = this.D0;
            } else if (z3 && !z2) {
                this.Q = this.F0;
            } else if (z2) {
                this.Q = this.E0;
            } else {
                this.Q = this.C0;
            }
        }
        c();
    }

    public void a(f fVar) {
        this.g0.add(fVar);
        if (this.i != null) {
            fVar.a(this);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.e.addView(view, layoutParams2);
        this.e.setLayoutParams(layoutParams);
        x();
        setEditText((EditText) view);
    }

    public void b(float f2) {
        if (this.I0.c == f2) {
            return;
        }
        if (this.L0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.L0 = valueAnimator;
            valueAnimator.setInterpolator(i55.b);
            this.L0.setDuration(167L);
            this.L0.addUpdateListener(new d());
        }
        this.L0.setFloatValues(this.I0.c, f2);
        this.L0.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            r6 = this;
            la5 r0 = r6.F
            if (r0 != 0) goto L5
            return
        L5:
            pa5 r1 = r6.H
            r0.setShapeAppearanceModel(r1)
            int r0 = r6.K
            r1 = 2
            r2 = -1
            r3 = 0
            r4 = 1
            if (r0 != r1) goto L21
            int r0 = r6.M
            if (r0 <= r2) goto L1c
            int r0 = r6.P
            if (r0 == 0) goto L1c
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            if (r0 == 0) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            if (r0 == 0) goto L2e
            la5 r0 = r6.F
            int r1 = r6.M
            float r1 = (float) r1
            int r5 = r6.P
            r0.y(r1, r5)
        L2e:
            int r0 = r6.Q
            int r1 = r6.K
            if (r1 != r4) goto L44
            int r0 = com.google.android.material.R$attr.colorSurface
            android.content.Context r1 = r6.getContext()
            int r0 = defpackage.c50.Y(r1, r0, r3)
            int r1 = r6.Q
            int r0 = defpackage.d8.e(r1, r0)
        L44:
            r6.Q = r0
            la5 r1 = r6.F
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r1.t(r0)
            int r0 = r6.h0
            r1 = 3
            if (r0 != r1) goto L5d
            android.widget.EditText r0 = r6.i
            android.graphics.drawable.Drawable r0 = r0.getBackground()
            r0.invalidateSelf()
        L5d:
            la5 r0 = r6.G
            if (r0 != 0) goto L62
            goto L79
        L62:
            int r1 = r6.M
            if (r1 <= r2) goto L6b
            int r1 = r6.P
            if (r1 == 0) goto L6b
            r3 = 1
        L6b:
            if (r3 == 0) goto L76
            int r1 = r6.P
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            r0.t(r1)
        L76:
            r6.invalidate()
        L79:
            r6.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.c():void");
    }

    public final void d() {
        e(this.j0, this.m0, this.l0, this.o0, this.n0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.i;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.j != null) {
            boolean z = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.i.setHint(this.j);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.i.setHint(hint);
                this.E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.e.getChildCount());
        for (int i2 = 0; i2 < this.e.getChildCount(); i2++) {
            View childAt = this.e.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.i) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.N0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.N0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.C) {
            this.I0.g(canvas);
        }
        la5 la5Var = this.G;
        if (la5Var != null) {
            Rect bounds = la5Var.getBounds();
            bounds.top = bounds.bottom - this.M;
            this.G.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        if (this.M0) {
            return;
        }
        this.M0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        j85 j85Var = this.I0;
        boolean zY = j85Var != null ? j85Var.y(drawableState) | false : false;
        if (this.i != null) {
            AtomicInteger atomicInteger = ha.a;
            y(isLaidOut() && isEnabled(), false);
        }
        w();
        F();
        if (zY) {
            invalidate();
        }
        this.M0 = false;
    }

    public final void e(CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = d0.h.l0(drawable).mutate();
            if (z) {
                drawable.setTintList(colorStateList);
            }
            if (z2) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public final int f() {
        float fH;
        if (!this.C) {
            return 0;
        }
        int i = this.K;
        if (i == 0 || i == 1) {
            fH = this.I0.h();
        } else {
            if (i != 2) {
                return 0;
            }
            fH = this.I0.h() / 2.0f;
        }
        return (int) fH;
    }

    public final boolean g() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof vb5);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.i;
        if (editText == null) {
            return super.getBaseline();
        }
        return f() + getPaddingTop() + editText.getBaseline();
    }

    public la5 getBoxBackground() {
        int i = this.K;
        if (i == 1 || i == 2) {
            return this.F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.Q;
    }

    public int getBoxBackgroundMode() {
        return this.K;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.F.h();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.F.i();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.F.o();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.F.n();
    }

    public int getBoxStrokeColor() {
        return this.A0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.B0;
    }

    public int getBoxStrokeWidth() {
        return this.N;
    }

    public int getBoxStrokeWidthFocused() {
        return this.O;
    }

    public int getCounterMaxLength() {
        return this.m;
    }

    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.l && this.n && (textView = this.o) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.w;
    }

    public ColorStateList getCounterTextColor() {
        return this.w;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.w0;
    }

    public EditText getEditText() {
        return this.i;
    }

    public CharSequence getEndIconContentDescription() {
        return this.j0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.j0.getDrawable();
    }

    public int getEndIconMode() {
        return this.h0;
    }

    public CheckableImageButton getEndIconView() {
        return this.j0;
    }

    public CharSequence getError() {
        cc5 cc5Var = this.k;
        if (cc5Var.k) {
            return cc5Var.j;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.k.m;
    }

    public int getErrorCurrentTextColors() {
        return this.k.g();
    }

    public Drawable getErrorIconDrawable() {
        return this.u0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        return this.k.g();
    }

    public CharSequence getHelperText() {
        cc5 cc5Var = this.k;
        if (cc5Var.q) {
            return cc5Var.p;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        TextView textView = this.k.r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.I0.h();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.I0.i();
    }

    public ColorStateList getHintTextColor() {
        return this.x0;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.j0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.j0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.s) {
            return this.r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.v;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.u;
    }

    public CharSequence getPrefixText() {
        return this.y;
    }

    public ColorStateList getPrefixTextColor() {
        return this.z.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.z;
    }

    public CharSequence getStartIconContentDescription() {
        return this.V.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.V.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.A;
    }

    public ColorStateList getSuffixTextColor() {
        return this.B.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.B;
    }

    public Typeface getTypeface() {
        return this.U;
    }

    public final int h(int i, boolean z) {
        int compoundPaddingLeft = this.i.getCompoundPaddingLeft() + i;
        return (this.y == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - this.z.getMeasuredWidth()) + this.z.getPaddingLeft();
    }

    public final int i(int i, boolean z) {
        int compoundPaddingRight = i - this.i.getCompoundPaddingRight();
        return (this.y == null || !z) ? compoundPaddingRight : compoundPaddingRight + (this.z.getMeasuredWidth() - this.z.getPaddingRight());
    }

    public final boolean j() {
        return this.h0 != 0;
    }

    public boolean k() {
        return this.h.getVisibility() == 0 && this.j0.getVisibility() == 0;
    }

    public final void l() throws Resources.NotFoundException {
        int i = this.K;
        if (i == 0) {
            this.F = null;
            this.G = null;
        } else if (i == 1) {
            this.F = new la5(this.H);
            this.G = new la5();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(jo.q(new StringBuilder(), this.K, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.C || (this.F instanceof vb5)) {
                this.F = new la5(this.H);
            } else {
                this.F = new vb5(this.H);
            }
            this.G = null;
        }
        EditText editText = this.i;
        if ((editText == null || this.F == null || editText.getBackground() != null || this.K == 0) ? false : true) {
            EditText editText2 = this.i;
            la5 la5Var = this.F;
            AtomicInteger atomicInteger = ha.a;
            editText2.setBackground(la5Var);
        }
        F();
        if (this.K == 1) {
            if (c50.m0(getContext())) {
                this.L = getResources().getDimensionPixelSize(R$dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (c50.l0(getContext())) {
                this.L = getResources().getDimensionPixelSize(R$dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.i != null && this.K == 1) {
            if (c50.m0(getContext())) {
                EditText editText3 = this.i;
                AtomicInteger atomicInteger2 = ha.a;
                editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_top), this.i.getPaddingEnd(), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (c50.l0(getContext())) {
                EditText editText4 = this.i;
                AtomicInteger atomicInteger3 = ha.a;
                editText4.setPaddingRelative(editText4.getPaddingStart(), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_top), this.i.getPaddingEnd(), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.K != 0) {
            x();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m() {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m():void");
    }

    public void o() {
        p(this.j0, this.l0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws NoSuchMethodException, SecurityException {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.i;
        if (editText != null) {
            Rect rect = this.R;
            k85.a(this, editText, rect);
            la5 la5Var = this.G;
            if (la5Var != null) {
                int i5 = rect.bottom;
                la5Var.setBounds(rect.left, i5 - this.O, rect.right, i5);
            }
            if (this.C) {
                j85 j85Var = this.I0;
                float textSize = this.i.getTextSize();
                if (j85Var.i != textSize) {
                    j85Var.i = textSize;
                    j85Var.m();
                }
                int gravity = this.i.getGravity();
                this.I0.q((gravity & (-113)) | 48);
                this.I0.u(gravity);
                j85 j85Var2 = this.I0;
                if (this.i == null) {
                    throw new IllegalStateException();
                }
                Rect rect2 = this.S;
                AtomicInteger atomicInteger = ha.a;
                boolean z2 = false;
                boolean z3 = getLayoutDirection() == 1;
                rect2.bottom = rect.bottom;
                int i6 = this.K;
                if (i6 == 1) {
                    rect2.left = h(rect.left, z3);
                    rect2.top = rect.top + this.L;
                    rect2.right = i(rect.right, z3);
                } else if (i6 != 2) {
                    rect2.left = h(rect.left, z3);
                    rect2.top = getPaddingTop();
                    rect2.right = i(rect.right, z3);
                } else {
                    rect2.left = this.i.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - f();
                    rect2.right = rect.right - this.i.getPaddingRight();
                }
                Objects.requireNonNull(j85Var2);
                int i7 = rect2.left;
                int i8 = rect2.top;
                int i9 = rect2.right;
                int i10 = rect2.bottom;
                if (!j85.n(j85Var2.e, i7, i8, i9, i10)) {
                    j85Var2.e.set(i7, i8, i9, i10);
                    j85Var2.E = true;
                    j85Var2.l();
                }
                j85 j85Var3 = this.I0;
                if (this.i == null) {
                    throw new IllegalStateException();
                }
                Rect rect3 = this.S;
                TextPaint textPaint = j85Var3.G;
                textPaint.setTextSize(j85Var3.i);
                textPaint.setTypeface(j85Var3.t);
                textPaint.setLetterSpacing(j85Var3.S);
                float f2 = -j85Var3.G.ascent();
                rect3.left = this.i.getCompoundPaddingLeft() + rect.left;
                rect3.top = this.K == 1 && this.i.getMinLines() <= 1 ? (int) (rect.centerY() - (f2 / 2.0f)) : rect.top + this.i.getCompoundPaddingTop();
                rect3.right = rect.right - this.i.getCompoundPaddingRight();
                if (this.K == 1 && this.i.getMinLines() <= 1) {
                    z2 = true;
                }
                int compoundPaddingBottom = z2 ? (int) (rect3.top + f2) : rect.bottom - this.i.getCompoundPaddingBottom();
                rect3.bottom = compoundPaddingBottom;
                int i11 = rect3.left;
                int i12 = rect3.top;
                int i13 = rect3.right;
                if (!j85.n(j85Var3.d, i11, i12, i13, compoundPaddingBottom)) {
                    j85Var3.d.set(i11, i12, i13, compoundPaddingBottom);
                    j85Var3.E = true;
                    j85Var3.l();
                }
                this.I0.m();
                if (!g() || this.H0) {
                    return;
                }
                m();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) throws Resources.NotFoundException {
        EditText editText;
        int iMax;
        super.onMeasure(i, i2);
        boolean z = false;
        if (this.i != null && this.i.getMeasuredHeight() < (iMax = Math.max(this.g.getMeasuredHeight(), this.f.getMeasuredHeight()))) {
            this.i.setMinimumHeight(iMax);
            z = true;
        }
        boolean zV = v();
        if (z || zV) {
            this.i.post(new c());
        }
        if (this.t != null && (editText = this.i) != null) {
            this.t.setGravity(editText.getGravity());
            this.t.setPadding(this.i.getCompoundPaddingLeft(), this.i.getCompoundPaddingTop(), this.i.getCompoundPaddingRight(), this.i.getCompoundPaddingBottom());
        }
        A();
        D();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        setError(savedState.g);
        if (savedState.h) {
            this.j0.post(new b());
        }
        setHint(savedState.i);
        setHelperText(savedState.j);
        setPlaceholderText(savedState.k);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.k.e()) {
            savedState.g = getError();
        }
        savedState.h = j() && this.j0.isChecked();
        savedState.i = getHint();
        savedState.j = getHelperText();
        savedState.k = getPlaceholderText();
        return savedState;
    }

    public final void p(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = d0.h.l0(drawable).mutate();
        drawableMutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void r(android.widget.TextView r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            d0.h.c0(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L30
            int r4 = com.google.android.material.R$style.TextAppearance_AppCompat_Caption
            d0.h.c0(r3, r4)
            android.content.Context r4 = r2.getContext()
            int r0 = com.google.android.material.R$color.design_error
            int r4 = defpackage.u7.b(r4, r0)
            r3.setTextColor(r4)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.r(android.widget.TextView, int):void");
    }

    public final void s() throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        if (this.o != null) {
            EditText editText = this.i;
            t(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.Q != i) {
            this.Q = i;
            this.C0 = i;
            this.E0 = i;
            this.F0 = i;
            c();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(u7.b(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.C0 = defaultColor;
        this.Q = defaultColor;
        this.D0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.E0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.F0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        c();
    }

    public void setBoxBackgroundMode(int i) throws Resources.NotFoundException {
        if (i == this.K) {
            return;
        }
        this.K = i;
        if (this.i != null) {
            l();
        }
    }

    public void setBoxCornerRadii(float f2, float f3, float f4, float f5) {
        la5 la5Var = this.F;
        if (la5Var != null && la5Var.n() == f2 && this.F.o() == f3 && this.F.i() == f5 && this.F.h() == f4) {
            return;
        }
        pa5 pa5Var = this.H;
        Objects.requireNonNull(pa5Var);
        pa5.b bVar = new pa5.b(pa5Var);
        bVar.e = new ea5(f2);
        bVar.f = new ea5(f3);
        bVar.g = new ea5(f5);
        bVar.h = new ea5(f4);
        this.H = bVar.a();
        c();
    }

    public void setBoxCornerRadiiResources(int i, int i2, int i3, int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(int i) throws Resources.NotFoundException {
        if (this.A0 != i) {
            this.A0 = i;
            F();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (colorStateList.isStateful()) {
            this.y0 = colorStateList.getDefaultColor();
            this.G0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.z0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.A0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.A0 != colorStateList.getDefaultColor()) {
            this.A0 = colorStateList.getDefaultColor();
        }
        F();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.B0 != colorStateList) {
            this.B0 = colorStateList;
            F();
        }
    }

    public void setBoxStrokeWidth(int i) throws Resources.NotFoundException {
        this.N = i;
        F();
    }

    public void setBoxStrokeWidthFocused(int i) throws Resources.NotFoundException {
        this.O = i;
        F();
    }

    public void setBoxStrokeWidthFocusedResource(int i) throws Resources.NotFoundException {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) throws Resources.NotFoundException {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        if (this.l != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.o = appCompatTextView;
                appCompatTextView.setId(R$id.textinput_counter);
                Typeface typeface = this.U;
                if (typeface != null) {
                    this.o.setTypeface(typeface);
                }
                this.o.setMaxLines(1);
                this.k.a(this.o, 2);
                ((ViewGroup.MarginLayoutParams) this.o.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_counter_margin_start));
                u();
                s();
            } else {
                this.k.j(this.o, 2);
                this.o = null;
            }
            this.l = z;
        }
    }

    public void setCounterMaxLength(int i) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        if (this.m != i) {
            if (i > 0) {
                this.m = i;
            } else {
                this.m = -1;
            }
            if (this.l) {
                s();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.p != i) {
            this.p = i;
            u();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.x != colorStateList) {
            this.x = colorStateList;
            u();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.q != i) {
            this.q = i;
            u();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            u();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        this.w0 = colorStateList;
        this.x0 = colorStateList;
        if (this.i != null) {
            y(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        n(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.j0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.j0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? p0.b(getContext(), i) : null);
    }

    public void setEndIconMode(int i) throws Resources.NotFoundException {
        int i2 = this.h0;
        this.h0 = i;
        Iterator<g> it = this.k0.iterator();
        while (it.hasNext()) {
            it.next().a(this, i2);
        }
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().b(this.K)) {
            getEndIconDelegate().a();
            d();
        } else {
            StringBuilder sbZ = jo.z("The current box background mode ");
            sbZ.append(this.K);
            sbZ.append(" is not supported by the end icon mode ");
            sbZ.append(i);
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.j0;
        View.OnLongClickListener onLongClickListener = this.s0;
        checkableImageButton.setOnClickListener(onClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.s0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.j0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.l0 != colorStateList) {
            this.l0 = colorStateList;
            this.m0 = true;
            d();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.n0 != mode) {
            this.n0 = mode;
            this.o0 = true;
            d();
        }
    }

    public void setEndIconVisible(boolean z) throws Resources.NotFoundException {
        if (k() != z) {
            this.j0.setVisibility(z ? 0 : 8);
            D();
            v();
        }
    }

    public void setError(CharSequence charSequence) throws Resources.NotFoundException {
        if (!this.k.k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.k.i();
            return;
        }
        cc5 cc5Var = this.k;
        cc5Var.c();
        cc5Var.j = charSequence;
        cc5Var.l.setText(charSequence);
        int i = cc5Var.h;
        if (i != 1) {
            cc5Var.i = 1;
        }
        cc5Var.l(i, cc5Var.i, cc5Var.k(cc5Var.l, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        cc5 cc5Var = this.k;
        cc5Var.m = charSequence;
        TextView textView = cc5Var.l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) throws Resources.NotFoundException {
        cc5 cc5Var = this.k;
        if (cc5Var.k == z) {
            return;
        }
        cc5Var.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(cc5Var.a);
            cc5Var.l = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_error);
            cc5Var.l.setTextAlignment(5);
            Typeface typeface = cc5Var.u;
            if (typeface != null) {
                cc5Var.l.setTypeface(typeface);
            }
            int i = cc5Var.n;
            cc5Var.n = i;
            TextView textView = cc5Var.l;
            if (textView != null) {
                cc5Var.b.r(textView, i);
            }
            ColorStateList colorStateList = cc5Var.o;
            cc5Var.o = colorStateList;
            TextView textView2 = cc5Var.l;
            if (textView2 != null && colorStateList != null) {
                textView2.setTextColor(colorStateList);
            }
            CharSequence charSequence = cc5Var.m;
            cc5Var.m = charSequence;
            TextView textView3 = cc5Var.l;
            if (textView3 != null) {
                textView3.setContentDescription(charSequence);
            }
            cc5Var.l.setVisibility(4);
            TextView textView4 = cc5Var.l;
            AtomicInteger atomicInteger = ha.a;
            textView4.setAccessibilityLiveRegion(1);
            cc5Var.a(cc5Var.l, 0);
        } else {
            cc5Var.i();
            cc5Var.j(cc5Var.l, 0);
            cc5Var.l = null;
            cc5Var.b.w();
            cc5Var.b.F();
        }
        cc5Var.k = z;
    }

    public void setErrorIconDrawable(int i) throws Resources.NotFoundException {
        setErrorIconDrawable(i != 0 ? p0.b(getContext(), i) : null);
        p(this.u0, this.v0);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.u0;
        View.OnLongClickListener onLongClickListener = this.t0;
        checkableImageButton.setOnClickListener(onClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.t0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.u0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.v0 = colorStateList;
        Drawable drawable = this.u0.getDrawable();
        if (drawable != null) {
            drawable = d0.h.l0(drawable).mutate();
            drawable.setTintList(colorStateList);
        }
        if (this.u0.getDrawable() != drawable) {
            this.u0.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.u0.getDrawable();
        if (drawable != null) {
            drawable = d0.h.l0(drawable).mutate();
            drawable.setTintMode(mode);
        }
        if (this.u0.getDrawable() != drawable) {
            this.u0.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i) {
        cc5 cc5Var = this.k;
        cc5Var.n = i;
        TextView textView = cc5Var.l;
        if (textView != null) {
            cc5Var.b.r(textView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        cc5 cc5Var = this.k;
        cc5Var.o = colorStateList;
        TextView textView = cc5Var.l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) throws NoSuchMethodException, SecurityException {
        if (this.J0 != z) {
            this.J0 = z;
            y(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) throws Resources.NotFoundException {
        if (TextUtils.isEmpty(charSequence)) {
            if (this.k.q) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!this.k.q) {
            setHelperTextEnabled(true);
        }
        cc5 cc5Var = this.k;
        cc5Var.c();
        cc5Var.p = charSequence;
        cc5Var.r.setText(charSequence);
        int i = cc5Var.h;
        if (i != 2) {
            cc5Var.i = 2;
        }
        cc5Var.l(i, cc5Var.i, cc5Var.k(cc5Var.r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        cc5 cc5Var = this.k;
        cc5Var.t = colorStateList;
        TextView textView = cc5Var.r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) throws Resources.NotFoundException {
        cc5 cc5Var = this.k;
        if (cc5Var.q == z) {
            return;
        }
        cc5Var.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(cc5Var.a);
            cc5Var.r = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_helper_text);
            cc5Var.r.setTextAlignment(5);
            Typeface typeface = cc5Var.u;
            if (typeface != null) {
                cc5Var.r.setTypeface(typeface);
            }
            cc5Var.r.setVisibility(4);
            TextView textView = cc5Var.r;
            AtomicInteger atomicInteger = ha.a;
            textView.setAccessibilityLiveRegion(1);
            int i = cc5Var.s;
            cc5Var.s = i;
            TextView textView2 = cc5Var.r;
            if (textView2 != null) {
                d0.h.c0(textView2, i);
            }
            ColorStateList colorStateList = cc5Var.t;
            cc5Var.t = colorStateList;
            TextView textView3 = cc5Var.r;
            if (textView3 != null && colorStateList != null) {
                textView3.setTextColor(colorStateList);
            }
            cc5Var.a(cc5Var.r, 1);
        } else {
            cc5Var.c();
            int i2 = cc5Var.h;
            if (i2 == 2) {
                cc5Var.i = 0;
            }
            cc5Var.l(i2, cc5Var.i, cc5Var.k(cc5Var.r, null));
            cc5Var.j(cc5Var.r, 1);
            cc5Var.r = null;
            cc5Var.b.w();
            cc5Var.b.F();
        }
        cc5Var.q = z;
    }

    public void setHelperTextTextAppearance(int i) {
        cc5 cc5Var = this.k;
        cc5Var.s = i;
        TextView textView = cc5Var.r;
        if (textView != null) {
            d0.h.c0(textView, i);
        }
    }

    public void setHint(CharSequence charSequence) throws NoSuchMethodException, SecurityException {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(RecyclerView.a0.FLAG_MOVED);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.K0 = z;
    }

    public void setHintEnabled(boolean z) throws NoSuchMethodException, SecurityException {
        if (z != this.C) {
            this.C = z;
            if (z) {
                CharSequence hint = this.i.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.i.setHint((CharSequence) null);
                }
                this.E = true;
            } else {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.i.getHint())) {
                    this.i.setHint(this.D);
                }
                setHintInternal(null);
            }
            if (this.i != null) {
                x();
            }
        }
    }

    public void setHintTextAppearance(int i) throws NoSuchMethodException, SecurityException {
        this.I0.o(i);
        this.x0 = this.I0.l;
        if (this.i != null) {
            y(false, false);
            x();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        if (this.x0 != colorStateList) {
            if (this.w0 == null) {
                j85 j85Var = this.I0;
                if (j85Var.l != colorStateList) {
                    j85Var.l = colorStateList;
                    j85Var.m();
                }
            }
            this.x0 = colorStateList;
            if (this.i != null) {
                y(false, false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? p0.b(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) throws Resources.NotFoundException {
        if (z && this.h0 != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.l0 = colorStateList;
        this.m0 = true;
        d();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.n0 = mode;
        this.o0 = true;
        d();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.s && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.s) {
                setPlaceholderTextEnabled(true);
            }
            this.r = charSequence;
        }
        EditText editText = this.i;
        z(editText != null ? editText.getText().length() : 0);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.v = i;
        TextView textView = this.t;
        if (textView != null) {
            d0.h.c0(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            TextView textView = this.t;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.y = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.z.setText(charSequence);
        B();
    }

    public void setPrefixTextAppearance(int i) {
        d0.h.c0(this.z, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.V.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(int i) throws Resources.NotFoundException {
        setStartIconDrawable(i != 0 ? p0.b(getContext(), i) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        CheckableImageButton checkableImageButton = this.V;
        View.OnLongClickListener onLongClickListener = this.f0;
        checkableImageButton.setOnClickListener(onClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.V;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        q(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.W != colorStateList) {
            this.W = colorStateList;
            this.a0 = true;
            e(this.V, true, colorStateList, this.c0, this.b0);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.b0 != mode) {
            this.b0 = mode;
            this.c0 = true;
            e(this.V, this.a0, this.W, true, mode);
        }
    }

    public void setStartIconVisible(boolean z) throws Resources.NotFoundException {
        if ((this.V.getVisibility() == 0) != z) {
            this.V.setVisibility(z ? 0 : 8);
            A();
            v();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.B.setText(charSequence);
        E();
    }

    public void setSuffixTextAppearance(int i) {
        d0.h.c0(this.B, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.B.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e eVar) {
        EditText editText = this.i;
        if (editText != null) {
            ha.s(editText, eVar);
        }
    }

    public void setTypeface(Typeface typeface) throws NoSuchMethodException, SecurityException {
        if (typeface != this.U) {
            this.U = typeface;
            this.I0.A(typeface);
            cc5 cc5Var = this.k;
            if (typeface != cc5Var.u) {
                cc5Var.u = typeface;
                TextView textView = cc5Var.l;
                if (textView != null) {
                    textView.setTypeface(typeface);
                }
                TextView textView2 = cc5Var.r;
                if (textView2 != null) {
                    textView2.setTypeface(typeface);
                }
            }
            TextView textView3 = this.o;
            if (textView3 != null) {
                textView3.setTypeface(typeface);
            }
        }
    }

    public void t(int i) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        boolean z = this.n;
        int i2 = this.m;
        if (i2 == -1) {
            this.o.setText(String.valueOf(i));
            this.o.setContentDescription(null);
            this.n = false;
        } else {
            this.n = i > i2;
            Context context = getContext();
            this.o.setContentDescription(context.getString(this.n ? R$string.character_counter_overflowed_content_description : R$string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.m)));
            if (z != this.n) {
                u();
            }
            m9 m9VarC = m9.c();
            TextView textView = this.o;
            String string = getContext().getString(R$string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.m));
            textView.setText(string != null ? m9VarC.d(string, m9VarC.c, true).toString() : null);
        }
        if (this.i == null || z == this.n) {
            return;
        }
        y(false, false);
        F();
        w();
    }

    public final void u() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.o;
        if (textView != null) {
            r(textView, this.n ? this.p : this.q);
            if (!this.n && (colorStateList2 = this.w) != null) {
                this.o.setTextColor(colorStateList2);
            }
            if (!this.n || (colorStateList = this.x) == null) {
                return;
            }
            this.o.setTextColor(colorStateList);
        }
    }

    public final boolean v() {
        boolean z;
        if (this.i == null) {
            return false;
        }
        boolean z2 = true;
        if (!(getStartIconDrawable() == null && this.y == null) && this.f.getMeasuredWidth() > 0) {
            int measuredWidth = this.f.getMeasuredWidth() - this.i.getPaddingLeft();
            if (this.d0 == null || this.e0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.d0 = colorDrawable;
                this.e0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = this.i.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.d0;
            if (drawable != drawable2) {
                this.i.setCompoundDrawablesRelative(drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.d0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.i.getCompoundDrawablesRelative();
                this.i.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.d0 = null;
                z = true;
            }
            z = false;
        }
        if ((this.u0.getVisibility() == 0 || ((j() && k()) || this.A != null)) && this.g.getMeasuredWidth() > 0) {
            int measuredWidth2 = this.B.getMeasuredWidth() - this.i.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = ((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()).getMarginStart() + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative3 = this.i.getCompoundDrawablesRelative();
            Drawable drawable3 = this.p0;
            if (drawable3 == null || this.q0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.p0 = colorDrawable2;
                    this.q0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.p0;
                if (drawable4 != drawable5) {
                    this.r0 = compoundDrawablesRelative3[2];
                    this.i.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.q0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                this.i.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.p0, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.p0 == null) {
                return z;
            }
            Drawable[] compoundDrawablesRelative4 = this.i.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative4[2] == this.p0) {
                this.i.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.r0, compoundDrawablesRelative4[3]);
            } else {
                z2 = z;
            }
            this.p0 = null;
        }
        return z2;
    }

    public void w() {
        Drawable background;
        TextView textView;
        EditText editText = this.i;
        if (editText == null || this.K != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (m2.a(background)) {
            background = background.mutate();
        }
        if (this.k.e()) {
            background.setColorFilter(b2.c(this.k.g(), PorterDuff.Mode.SRC_IN));
        } else if (this.n && (textView = this.o) != null) {
            background.setColorFilter(b2.c(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            d0.h.m(background);
            this.i.refreshDrawableState();
        }
    }

    public final void x() {
        if (this.K != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.e.getLayoutParams();
            int iF = f();
            if (iF != layoutParams.topMargin) {
                layoutParams.topMargin = iF;
                this.e.requestLayout();
            }
        }
    }

    public final void y(boolean z, boolean z2) throws NoSuchMethodException, SecurityException {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.i;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.i;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean zE = this.k.e();
        ColorStateList colorStateList2 = this.w0;
        if (colorStateList2 != null) {
            this.I0.p(colorStateList2);
            this.I0.t(this.w0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.w0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.G0) : this.G0;
            this.I0.p(ColorStateList.valueOf(colorForState));
            this.I0.t(ColorStateList.valueOf(colorForState));
        } else if (zE) {
            j85 j85Var = this.I0;
            TextView textView2 = this.k.l;
            j85Var.p(textView2 != null ? textView2.getTextColors() : null);
        } else if (this.n && (textView = this.o) != null) {
            this.I0.p(textView.getTextColors());
        } else if (z4 && (colorStateList = this.x0) != null) {
            this.I0.p(colorStateList);
        }
        if (z3 || !this.J0 || (isEnabled() && z4)) {
            if (z2 || this.H0) {
                ValueAnimator valueAnimator = this.L0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.L0.cancel();
                }
                if (z && this.K0) {
                    b(1.0f);
                } else {
                    this.I0.w(1.0f);
                }
                this.H0 = false;
                if (g()) {
                    m();
                }
                EditText editText3 = this.i;
                z(editText3 != null ? editText3.getText().length() : 0);
                B();
                E();
                return;
            }
            return;
        }
        if (z2 || !this.H0) {
            ValueAnimator valueAnimator2 = this.L0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.L0.cancel();
            }
            if (z && this.K0) {
                b(0.0f);
            } else {
                this.I0.w(0.0f);
            }
            if (g() && (!((vb5) this.F).D.isEmpty()) && g()) {
                ((vb5) this.F).F(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.H0 = true;
            TextView textView3 = this.t;
            if (textView3 != null && this.s) {
                textView3.setText((CharSequence) null);
                this.t.setVisibility(4);
            }
            B();
            E();
        }
    }

    public final void z(int i) {
        if (i != 0 || this.H0) {
            TextView textView = this.t;
            if (textView == null || !this.s) {
                return;
            }
            textView.setText((CharSequence) null);
            this.t.setVisibility(4);
            return;
        }
        TextView textView2 = this.t;
        if (textView2 == null || !this.s) {
            return;
        }
        textView2.setText(this.r);
        this.t.setVisibility(0);
        this.t.bringToFront();
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.textInputStyle);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.j0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.j0.setImageDrawable(drawable);
        o();
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.V.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) throws Resources.NotFoundException {
        this.V.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            p(this.V, this.W);
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        int i2;
        int i3;
        int i4 = O0;
        super(fc5.a(context, attributeSet, i, i4), attributeSet, i);
        this.k = new cc5(this);
        this.R = new Rect();
        this.S = new Rect();
        this.T = new RectF();
        this.g0 = new LinkedHashSet<>();
        this.h0 = 0;
        this.i0 = new SparseArray<>();
        this.k0 = new LinkedHashSet<>();
        j85 j85Var = new j85(this);
        this.I0 = j85Var;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.e = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.g = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.h = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = i55.a;
        j85Var.I = timeInterpolator;
        j85Var.m();
        j85Var.H = timeInterpolator;
        j85Var.m();
        j85Var.q(8388659);
        int[] iArr = R$styleable.TextInputLayout;
        int i5 = R$styleable.TextInputLayout_counterTextAppearance;
        int i6 = R$styleable.TextInputLayout_counterOverflowTextAppearance;
        int i7 = R$styleable.TextInputLayout_errorTextAppearance;
        int i8 = R$styleable.TextInputLayout_helperTextTextAppearance;
        int i9 = R$styleable.TextInputLayout_hintTextAppearance;
        c3 c3VarE = t85.e(context2, attributeSet, iArr, i, i4, i5, i6, i7, i8, i9);
        this.C = c3VarE.a(R$styleable.TextInputLayout_hintEnabled, true);
        setHint(c3VarE.o(R$styleable.TextInputLayout_android_hint));
        this.K0 = c3VarE.a(R$styleable.TextInputLayout_hintAnimationEnabled, true);
        this.J0 = c3VarE.a(R$styleable.TextInputLayout_expandedHintEnabled, true);
        this.H = pa5.b(context2, attributeSet, i, i4, new ea5(0)).a();
        this.I = context2.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_label_cutout_padding);
        this.L = c3VarE.e(R$styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.N = c3VarE.f(R$styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_default));
        this.O = c3VarE.f(R$styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_focused));
        this.M = this.N;
        float fD = c3VarE.d(R$styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = c3VarE.d(R$styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = c3VarE.d(R$styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = c3VarE.d(R$styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        pa5 pa5Var = this.H;
        Objects.requireNonNull(pa5Var);
        pa5.b bVar = new pa5.b(pa5Var);
        if (fD >= 0.0f) {
            bVar.f(fD);
        }
        if (fD2 >= 0.0f) {
            bVar.g(fD2);
        }
        if (fD3 >= 0.0f) {
            bVar.e(fD3);
        }
        if (fD4 >= 0.0f) {
            bVar.d(fD4);
        }
        this.H = bVar.a();
        ColorStateList colorStateListB0 = c50.b0(context2, c3VarE, R$styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB0 != null) {
            int defaultColor = colorStateListB0.getDefaultColor();
            this.C0 = defaultColor;
            this.Q = defaultColor;
            if (colorStateListB0.isStateful()) {
                this.D0 = colorStateListB0.getColorForState(new int[]{-16842910}, -1);
                i2 = 2;
                this.E0 = colorStateListB0.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.F0 = colorStateListB0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                i2 = 2;
                this.E0 = this.C0;
                ColorStateList colorStateListA = p0.a(context2, R$color.mtrl_filled_background_color);
                this.D0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.F0 = colorStateListA.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            i2 = 2;
            this.Q = 0;
            this.C0 = 0;
            this.D0 = 0;
            this.E0 = 0;
            this.F0 = 0;
        }
        int i10 = R$styleable.TextInputLayout_android_textColorHint;
        if (c3VarE.p(i10)) {
            ColorStateList colorStateListC = c3VarE.c(i10);
            this.x0 = colorStateListC;
            this.w0 = colorStateListC;
        }
        int i11 = R$styleable.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateListB02 = c50.b0(context2, c3VarE, i11);
        this.A0 = c3VarE.b(i11, 0);
        this.y0 = u7.b(context2, R$color.mtrl_textinput_default_box_stroke_color);
        this.G0 = u7.b(context2, R$color.mtrl_textinput_disabled_color);
        this.z0 = u7.b(context2, R$color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB02 != null) {
            setBoxStrokeColorStateList(colorStateListB02);
        }
        int i12 = R$styleable.TextInputLayout_boxStrokeErrorColor;
        if (c3VarE.p(i12)) {
            setBoxStrokeErrorColor(c50.b0(context2, c3VarE, i12));
        }
        if (c3VarE.m(i9, -1) != -1) {
            setHintTextAppearance(c3VarE.m(i9, 0));
        }
        int iM = c3VarE.m(i7, 0);
        CharSequence charSequenceO = c3VarE.o(R$styleable.TextInputLayout_errorContentDescription);
        boolean zA = c3VarE.a(R$styleable.TextInputLayout_errorEnabled, false);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int i13 = R$layout.design_text_input_end_icon;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i13, (ViewGroup) linearLayout2, false);
        this.u0 = checkableImageButton;
        checkableImageButton.setId(R$id.text_input_error_icon);
        checkableImageButton.setVisibility(8);
        if (c50.l0(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        int i14 = R$styleable.TextInputLayout_errorIconDrawable;
        if (c3VarE.p(i14)) {
            setErrorIconDrawable(c3VarE.g(i14));
        }
        int i15 = R$styleable.TextInputLayout_errorIconTint;
        if (c3VarE.p(i15)) {
            setErrorIconTintList(c50.b0(context2, c3VarE, i15));
        }
        int i16 = R$styleable.TextInputLayout_errorIconTintMode;
        if (c3VarE.p(i16)) {
            setErrorIconTintMode(c50.B0(c3VarE.j(i16, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(R$string.error_icon_content_description));
        AtomicInteger atomicInteger = ha.a;
        checkableImageButton.setImportantForAccessibility(i2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int iM2 = c3VarE.m(i8, 0);
        boolean zA2 = c3VarE.a(R$styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceO2 = c3VarE.o(R$styleable.TextInputLayout_helperText);
        int iM3 = c3VarE.m(R$styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceO3 = c3VarE.o(R$styleable.TextInputLayout_placeholderText);
        int iM4 = c3VarE.m(R$styleable.TextInputLayout_prefixTextAppearance, 0);
        CharSequence charSequenceO4 = c3VarE.o(R$styleable.TextInputLayout_prefixText);
        int iM5 = c3VarE.m(R$styleable.TextInputLayout_suffixTextAppearance, 0);
        CharSequence charSequenceO5 = c3VarE.o(R$styleable.TextInputLayout_suffixText);
        boolean zA3 = c3VarE.a(R$styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(c3VarE.j(R$styleable.TextInputLayout_counterMaxLength, -1));
        this.q = c3VarE.m(i5, 0);
        this.p = c3VarE.m(i6, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.design_text_input_start_icon, (ViewGroup) this.f, false);
        this.V = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (c50.l0(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginEnd(0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        int i17 = R$styleable.TextInputLayout_startIconDrawable;
        if (c3VarE.p(i17)) {
            setStartIconDrawable(c3VarE.g(i17));
            int i18 = R$styleable.TextInputLayout_startIconContentDescription;
            if (c3VarE.p(i18)) {
                setStartIconContentDescription(c3VarE.o(i18));
            }
            setStartIconCheckable(c3VarE.a(R$styleable.TextInputLayout_startIconCheckable, true));
        }
        int i19 = R$styleable.TextInputLayout_startIconTint;
        if (c3VarE.p(i19)) {
            setStartIconTintList(c50.b0(context2, c3VarE, i19));
        }
        int i20 = R$styleable.TextInputLayout_startIconTintMode;
        if (c3VarE.p(i20)) {
            setStartIconTintMode(c50.B0(c3VarE.j(i20, -1), null));
        }
        setBoxBackgroundMode(c3VarE.j(R$styleable.TextInputLayout_boxBackgroundMode, 0));
        this.j0 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(i13, (ViewGroup) this.h, false);
        this.h.addView(this.j0);
        this.j0.setVisibility(8);
        if (c50.l0(context2)) {
            i3 = 0;
            ((ViewGroup.MarginLayoutParams) this.j0.getLayoutParams()).setMarginStart(0);
        } else {
            i3 = 0;
        }
        this.i0.append(-1, new ub5(this));
        this.i0.append(i3, new dc5(this));
        this.i0.append(1, new ec5(this));
        this.i0.append(2, new pb5(this));
        this.i0.append(3, new wb5(this));
        int i21 = R$styleable.TextInputLayout_endIconMode;
        if (c3VarE.p(i21)) {
            setEndIconMode(c3VarE.j(i21, 0));
            int i22 = R$styleable.TextInputLayout_endIconDrawable;
            if (c3VarE.p(i22)) {
                setEndIconDrawable(c3VarE.g(i22));
            }
            int i23 = R$styleable.TextInputLayout_endIconContentDescription;
            if (c3VarE.p(i23)) {
                setEndIconContentDescription(c3VarE.o(i23));
            }
            setEndIconCheckable(c3VarE.a(R$styleable.TextInputLayout_endIconCheckable, true));
        } else {
            int i24 = R$styleable.TextInputLayout_passwordToggleEnabled;
            if (c3VarE.p(i24)) {
                setEndIconMode(c3VarE.a(i24, false) ? 1 : 0);
                setEndIconDrawable(c3VarE.g(R$styleable.TextInputLayout_passwordToggleDrawable));
                setEndIconContentDescription(c3VarE.o(R$styleable.TextInputLayout_passwordToggleContentDescription));
                int i25 = R$styleable.TextInputLayout_passwordToggleTint;
                if (c3VarE.p(i25)) {
                    setEndIconTintList(c50.b0(context2, c3VarE, i25));
                }
                int i26 = R$styleable.TextInputLayout_passwordToggleTintMode;
                if (c3VarE.p(i26)) {
                    setEndIconTintMode(c50.B0(c3VarE.j(i26, -1), null));
                }
            }
        }
        if (!c3VarE.p(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            int i27 = R$styleable.TextInputLayout_endIconTint;
            if (c3VarE.p(i27)) {
                setEndIconTintList(c50.b0(context2, c3VarE, i27));
            }
            int i28 = R$styleable.TextInputLayout_endIconTintMode;
            if (c3VarE.p(i28)) {
                setEndIconTintMode(c50.B0(c3VarE.j(i28, -1), null));
            }
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.z = appCompatTextView;
        appCompatTextView.setId(R$id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        this.f.addView(this.V);
        this.f.addView(appCompatTextView);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2);
        this.B = appCompatTextView2;
        appCompatTextView2.setId(R$id.textinput_suffix_text);
        appCompatTextView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        appCompatTextView2.setAccessibilityLiveRegion(1);
        this.g.addView(appCompatTextView2);
        this.g.addView(this.u0);
        this.g.addView(this.h);
        setHelperTextEnabled(zA2);
        setHelperText(charSequenceO2);
        setHelperTextTextAppearance(iM2);
        setErrorEnabled(zA);
        setErrorTextAppearance(iM);
        setErrorContentDescription(charSequenceO);
        setCounterTextAppearance(this.q);
        setCounterOverflowTextAppearance(this.p);
        setPlaceholderText(charSequenceO3);
        setPlaceholderTextAppearance(iM3);
        setPrefixText(charSequenceO4);
        setPrefixTextAppearance(iM4);
        setSuffixText(charSequenceO5);
        setSuffixTextAppearance(iM5);
        int i29 = R$styleable.TextInputLayout_errorTextColor;
        if (c3VarE.p(i29)) {
            setErrorTextColor(c3VarE.c(i29));
        }
        int i30 = R$styleable.TextInputLayout_helperTextTextColor;
        if (c3VarE.p(i30)) {
            setHelperTextColor(c3VarE.c(i30));
        }
        int i31 = R$styleable.TextInputLayout_hintTextColor;
        if (c3VarE.p(i31)) {
            setHintTextColor(c3VarE.c(i31));
        }
        int i32 = R$styleable.TextInputLayout_counterTextColor;
        if (c3VarE.p(i32)) {
            setCounterTextColor(c3VarE.c(i32));
        }
        int i33 = R$styleable.TextInputLayout_counterOverflowTextColor;
        if (c3VarE.p(i33)) {
            setCounterOverflowTextColor(c3VarE.c(i33));
        }
        int i34 = R$styleable.TextInputLayout_placeholderTextColor;
        if (c3VarE.p(i34)) {
            setPlaceholderTextColor(c3VarE.c(i34));
        }
        int i35 = R$styleable.TextInputLayout_prefixTextColor;
        if (c3VarE.p(i35)) {
            setPrefixTextColor(c3VarE.c(i35));
        }
        int i36 = R$styleable.TextInputLayout_suffixTextColor;
        if (c3VarE.p(i36)) {
            setSuffixTextColor(c3VarE.c(i36));
        }
        setCounterEnabled(zA3);
        setEnabled(c3VarE.a(R$styleable.TextInputLayout_android_enabled, true));
        c3VarE.b.recycle();
        setImportantForAccessibility(2);
        int i37 = Build.VERSION.SDK_INT;
        if (i37 < 26 || i37 < 26) {
            return;
        }
        setImportantForAutofill(1);
    }

    public void setErrorIconDrawable(Drawable drawable) throws Resources.NotFoundException {
        this.u0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.k.k);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.j0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.j0.setImageDrawable(drawable);
    }

    public void setHint(int i) throws NoSuchMethodException, SecurityException {
        setHint(i != 0 ? getResources().getText(i) : null);
    }
}
