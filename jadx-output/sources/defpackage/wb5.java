package defpackage;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.la5;
import defpackage.pa5;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class wb5 extends bc5 {
    public final TextWatcher d;
    public final View.OnFocusChangeListener e;
    public final TextInputLayout.e f;
    public final TextInputLayout.f g;
    public final TextInputLayout.g h;
    public boolean i;
    public boolean j;
    public long k;
    public StateListDrawable l;
    public la5 m;
    public AccessibilityManager n;
    public ValueAnimator o;
    public ValueAnimator p;

    public class a extends s85 {

        /* renamed from: wb5$a$a, reason: collision with other inner class name */
        public class RunnableC0055a implements Runnable {
            public final /* synthetic */ AutoCompleteTextView e;

            public RunnableC0055a(AutoCompleteTextView autoCompleteTextView) {
                this.e = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.e.isPopupShowing();
                wb5.g(wb5.this, zIsPopupShowing);
                wb5.this.i = zIsPopupShowing;
            }
        }

        public a() {
        }

        @Override // defpackage.s85, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewE = wb5.e(wb5.this.a.getEditText());
            if (wb5.this.n.isTouchExplorationEnabled() && wb5.f(autoCompleteTextViewE) && !wb5.this.c.hasFocus()) {
                autoCompleteTextViewE.dismissDropDown();
            }
            autoCompleteTextViewE.post(new RunnableC0055a(autoCompleteTextViewE));
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            wb5.this.a.setEndIconActivated(z);
            if (z) {
                return;
            }
            wb5.g(wb5.this, false);
            wb5.this.i = false;
        }
    }

    public class c extends TextInputLayout.e {
        public c(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, defpackage.v9
        public void d(View view, sa saVar) {
            boolean zIsShowingHintText;
            super.d(view, saVar);
            if (!wb5.f(wb5.this.a.getEditText())) {
                saVar.a.setClassName(Spinner.class.getName());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                zIsShowingHintText = saVar.a.isShowingHintText();
            } else {
                Bundle bundleH = saVar.h();
                zIsShowingHintText = bundleH != null && (bundleH.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & 4) == 4;
            }
            if (zIsShowingHintText) {
                saVar.u(null);
            }
        }

        @Override // defpackage.v9
        public void e(View view, AccessibilityEvent accessibilityEvent) {
            this.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewE = wb5.e(wb5.this.a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && wb5.this.n.isTouchExplorationEnabled() && !wb5.f(wb5.this.a.getEditText())) {
                wb5.h(wb5.this, autoCompleteTextViewE);
            }
        }
    }

    public class d implements TextInputLayout.f {
        public d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) throws Resources.NotFoundException {
            AutoCompleteTextView autoCompleteTextViewE = wb5.e(textInputLayout.getEditText());
            wb5 wb5Var = wb5.this;
            int boxBackgroundMode = wb5Var.a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextViewE.setDropDownBackgroundDrawable(wb5Var.m);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextViewE.setDropDownBackgroundDrawable(wb5Var.l);
            }
            wb5 wb5Var2 = wb5.this;
            Objects.requireNonNull(wb5Var2);
            if (!(autoCompleteTextViewE.getKeyListener() != null)) {
                int boxBackgroundMode2 = wb5Var2.a.getBoxBackgroundMode();
                la5 boxBackground = wb5Var2.a.getBoxBackground();
                int iZ = c50.Z(autoCompleteTextViewE, R$attr.colorControlHighlight);
                int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
                if (boxBackgroundMode2 == 2) {
                    int iZ2 = c50.Z(autoCompleteTextViewE, R$attr.colorSurface);
                    la5 la5Var = new la5(boxBackground.e.a);
                    int iP0 = c50.p0(iZ, iZ2, 0.1f);
                    la5Var.t(new ColorStateList(iArr, new int[]{iP0, 0}));
                    la5Var.setTint(iZ2);
                    ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iP0, iZ2});
                    la5 la5Var2 = new la5(boxBackground.e.a);
                    la5Var2.setTint(-1);
                    LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, la5Var, la5Var2), boxBackground});
                    AtomicInteger atomicInteger = ha.a;
                    autoCompleteTextViewE.setBackground(layerDrawable);
                } else if (boxBackgroundMode2 == 1) {
                    int boxBackgroundColor = wb5Var2.a.getBoxBackgroundColor();
                    RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{c50.p0(iZ, boxBackgroundColor, 0.1f), boxBackgroundColor}), boxBackground, boxBackground);
                    AtomicInteger atomicInteger2 = ha.a;
                    autoCompleteTextViewE.setBackground(rippleDrawable);
                }
            }
            wb5 wb5Var3 = wb5.this;
            Objects.requireNonNull(wb5Var3);
            autoCompleteTextViewE.setOnTouchListener(new yb5(wb5Var3, autoCompleteTextViewE));
            autoCompleteTextViewE.setOnFocusChangeListener(wb5Var3.e);
            autoCompleteTextViewE.setOnDismissListener(new zb5(wb5Var3));
            autoCompleteTextViewE.setThreshold(0);
            autoCompleteTextViewE.removeTextChangedListener(wb5.this.d);
            autoCompleteTextViewE.addTextChangedListener(wb5.this.d);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!(autoCompleteTextViewE.getKeyListener() != null)) {
                CheckableImageButton checkableImageButton = wb5.this.c;
                AtomicInteger atomicInteger3 = ha.a;
                checkableImageButton.setImportantForAccessibility(2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(wb5.this.f);
            textInputLayout.setEndIconVisible(true);
        }
    }

    public class e implements TextInputLayout.g {

        public class a implements Runnable {
            public final /* synthetic */ AutoCompleteTextView e;

            public a(AutoCompleteTextView autoCompleteTextView) {
                this.e = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.e.removeTextChangedListener(wb5.this.d);
            }
        }

        public e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == wb5.this.e) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            autoCompleteTextView.setOnDismissListener(null);
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            wb5.h(wb5.this, (AutoCompleteTextView) wb5.this.a.getEditText());
        }
    }

    public wb5(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new a();
        this.e = new b();
        this.f = new c(this.a);
        this.g = new d();
        this.h = new e();
        this.i = false;
        this.j = false;
        this.k = Long.MAX_VALUE;
    }

    public static AutoCompleteTextView e(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    public static boolean f(EditText editText) {
        return editText.getKeyListener() != null;
    }

    public static void g(wb5 wb5Var, boolean z) {
        if (wb5Var.j != z) {
            wb5Var.j = z;
            wb5Var.p.cancel();
            wb5Var.o.start();
        }
    }

    public static void h(wb5 wb5Var, AutoCompleteTextView autoCompleteTextView) {
        Objects.requireNonNull(wb5Var);
        if (autoCompleteTextView == null) {
            return;
        }
        if (wb5Var.j()) {
            wb5Var.i = false;
        }
        if (wb5Var.i) {
            wb5Var.i = false;
            return;
        }
        boolean z = wb5Var.j;
        boolean z2 = !z;
        if (z != z2) {
            wb5Var.j = z2;
            wb5Var.p.cancel();
            wb5Var.o.start();
        }
        if (!wb5Var.j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    @Override // defpackage.bc5
    public void a() throws Resources.NotFoundException {
        float dimensionPixelOffset = this.b.getResources().getDimensionPixelOffset(R$dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.b.getResources().getDimensionPixelOffset(R$dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.b.getResources().getDimensionPixelOffset(R$dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        la5 la5VarI = i(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        la5 la5VarI2 = i(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.m = la5VarI;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.l = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, la5VarI);
        this.l.addState(new int[0], la5VarI2);
        this.a.setEndIconDrawable(p0.b(this.b, R$drawable.mtrl_dropdown_arrow));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R$string.exposed_dropdown_menu_content_description));
        this.a.setEndIconOnClickListener(new f());
        this.a.a(this.g);
        this.a.k0.add(this.h);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = i55.a;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(67);
        valueAnimatorOfFloat.addUpdateListener(new xb5(this));
        this.p = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(50);
        valueAnimatorOfFloat2.addUpdateListener(new xb5(this));
        this.o = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new ac5(this));
        this.n = (AccessibilityManager) this.b.getSystemService("accessibility");
    }

    @Override // defpackage.bc5
    public boolean b(int i) {
        return i != 0;
    }

    @Override // defpackage.bc5
    public boolean d() {
        return true;
    }

    public final la5 i(float f2, float f3, float f4, int i) {
        pa5.b bVar = new pa5.b();
        bVar.e = new ea5(f2);
        bVar.f = new ea5(f2);
        bVar.h = new ea5(f3);
        bVar.g = new ea5(f3);
        pa5 pa5VarA = bVar.a();
        Context context = this.b;
        String str = la5.A;
        int iG0 = c50.G0(context, R$attr.colorSurface, la5.class.getSimpleName());
        la5 la5Var = new la5();
        la5Var.e.b = new u75(context);
        la5Var.E();
        la5Var.t(ColorStateList.valueOf(iG0));
        la5.b bVar2 = la5Var.e;
        if (bVar2.o != f4) {
            bVar2.o = f4;
            la5Var.E();
        }
        la5Var.e.a = pa5VarA;
        la5Var.invalidateSelf();
        la5.b bVar3 = la5Var.e;
        if (bVar3.i == null) {
            bVar3.i = new Rect();
        }
        la5Var.e.i.set(0, i, 0, i);
        la5Var.invalidateSelf();
        return la5Var;
    }

    public final boolean j() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }
}
