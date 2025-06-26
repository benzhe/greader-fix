package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.fc5;
import defpackage.t85;
import java.util.Locale;

/* loaded from: classes.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {
    public final ListPopupWindow h;
    public final AccessibilityManager i;
    public final Rect j;

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            Object item;
            if (i < 0) {
                ListPopupWindow listPopupWindow = MaterialAutoCompleteTextView.this.h;
                item = !listPopupWindow.a() ? null : listPopupWindow.g.getSelectedItem();
            } else {
                item = MaterialAutoCompleteTextView.this.getAdapter().getItem(i);
            }
            MaterialAutoCompleteTextView.a(MaterialAutoCompleteTextView.this, item);
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    ListPopupWindow listPopupWindow2 = MaterialAutoCompleteTextView.this.h;
                    view = listPopupWindow2.a() ? listPopupWindow2.g.getSelectedView() : null;
                    ListPopupWindow listPopupWindow3 = MaterialAutoCompleteTextView.this.h;
                    i = !listPopupWindow3.a() ? -1 : listPopupWindow3.g.getSelectedItemPosition();
                    ListPopupWindow listPopupWindow4 = MaterialAutoCompleteTextView.this.h;
                    j = !listPopupWindow4.a() ? Long.MIN_VALUE : listPopupWindow4.g.getSelectedItemId();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.h.g, view, i, j);
            }
            MaterialAutoCompleteTextView.this.h.dismiss();
        }
    }

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public static void a(MaterialAutoCompleteTextView materialAutoCompleteTextView, Object obj) {
        materialAutoCompleteTextView.setText(materialAutoCompleteTextView.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutB = b();
        return (textInputLayoutB == null || !textInputLayoutB.E) ? super.getHint() : textInputLayoutB.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutB = b();
        if (textInputLayoutB != null && textInputLayoutB.E && super.getHint() == null && Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout textInputLayoutB = b();
            int measuredWidth2 = 0;
            if (adapter != null && textInputLayoutB != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                ListPopupWindow listPopupWindow = this.h;
                int iMin = Math.min(adapter.getCount(), Math.max(0, !listPopupWindow.a() ? -1 : listPopupWindow.g.getSelectedItemPosition()) + 15);
                View view = null;
                int iMax = 0;
                for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
                    int itemViewType = adapter.getItemViewType(iMax2);
                    if (itemViewType != measuredWidth2) {
                        view = null;
                        measuredWidth2 = itemViewType;
                    }
                    view = adapter.getView(iMax2, view, textInputLayoutB);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                Drawable drawableG = this.h.g();
                if (drawableG != null) {
                    drawableG.getPadding(this.j);
                    Rect rect = this.j;
                    iMax += rect.left + rect.right;
                }
                measuredWidth2 = textInputLayoutB.getEndIconView().getMeasuredWidth() + iMax;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, measuredWidth2), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.h.o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.i;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.h.show();
        }
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(fc5.a(context, attributeSet, i, 0), attributeSet, i);
        this.j = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.MaterialAutoCompleteTextView, i, R$style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i2 = R$styleable.MaterialAutoCompleteTextView_android_inputType;
        if (typedArrayD.hasValue(i2) && typedArrayD.getInt(i2, 0) == 0) {
            setKeyListener(null);
        }
        this.i = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2, null, androidx.appcompat.R$attr.listPopupWindowStyle);
        this.h = listPopupWindow;
        listPopupWindow.r(true);
        listPopupWindow.t = this;
        listPopupWindow.D.setInputMethodMode(2);
        listPopupWindow.o(getAdapter());
        listPopupWindow.u = new a();
        typedArrayD.recycle();
    }
}
