package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.AlertController;
import defpackage.a0;
import defpackage.ha;
import defpackage.i3;
import defpackage.n2;
import defpackage.p0;
import defpackage.p2;
import defpackage.y2;
import defpackage.z1;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner {
    public static final int[] m = {R.attr.spinnerMode};
    public final z1 e;
    public final Context f;
    public p2 g;
    public SpinnerAdapter h;
    public final boolean i;
    public e j;
    public int k;
    public final Rect l;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public boolean e;

        public class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.e = parcel.readByte() != 0;
        }
    }

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().a()) {
                AppCompatSpinner.this.b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    public class b implements e, DialogInterface.OnClickListener {
        public a0 e;
        public ListAdapter f;
        public CharSequence g;

        public b() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public boolean a() {
            a0 a0Var = this.e;
            if (a0Var != null) {
                return a0Var.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public int b() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void d(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void dismiss() {
            a0 a0Var = this.e;
            if (a0Var != null) {
                a0Var.dismiss();
                this.e = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public CharSequence e() {
            return this.g;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public Drawable g() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void i(CharSequence charSequence) {
            this.g = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void j(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void k(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void l(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void m(int i, int i2) {
            if (this.f == null) {
                return;
            }
            a0.a aVar = new a0.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.g;
            if (charSequence != null) {
                aVar.a.e = charSequence;
            }
            ListAdapter listAdapter = this.f;
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            AlertController.b bVar = aVar.a;
            bVar.q = listAdapter;
            bVar.r = this;
            bVar.v = selectedItemPosition;
            bVar.u = true;
            a0 a0VarA = aVar.a();
            this.e = a0VarA;
            ListView listView = a0VarA.g.g;
            listView.setTextDirection(i);
            listView.setTextAlignment(i2);
            this.e.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public int n() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void o(ListAdapter listAdapter) {
            this.f = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f.getItemId(i));
            }
            a0 a0Var = this.e;
            if (a0Var != null) {
                a0Var.dismiss();
                this.e = null;
            }
        }
    }

    public static class c implements ListAdapter, SpinnerAdapter {
        public SpinnerAdapter e;
        public ListAdapter f;

        public c(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.e = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof y2) {
                    y2 y2Var = (y2) spinnerAdapter;
                    if (y2Var.getDropDownViewTheme() == null) {
                        y2Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.e;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.e;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public class d extends ListPopupWindow implements e {
        public CharSequence H;
        public ListAdapter I;
        public final Rect J;
        public int K;

        public class a implements AdapterView.OnItemClickListener {
            public a(AppCompatSpinner appCompatSpinner) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    d dVar = d.this;
                    AppCompatSpinner.this.performItemClick(view, i, dVar.I.getItemId(i));
                }
                d.this.dismiss();
            }
        }

        public class b implements ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                d dVar = d.this;
                AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
                Objects.requireNonNull(dVar);
                AtomicInteger atomicInteger = ha.a;
                if (!(appCompatSpinner.isAttachedToWindow() && appCompatSpinner.getGlobalVisibleRect(dVar.J))) {
                    d.this.dismiss();
                } else {
                    d.this.s();
                    d.this.show();
                }
            }
        }

        public class c implements PopupWindow.OnDismissListener {
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener e;

            public c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.e = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.e);
                }
            }
        }

        public d(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.J = new Rect();
            this.t = AppCompatSpinner.this;
            r(true);
            this.r = 0;
            this.u = new a(AppCompatSpinner.this);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public CharSequence e() {
            return this.H;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void i(CharSequence charSequence) {
            this.H = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void l(int i) {
            this.K = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.e
        public void m(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            s();
            this.D.setInputMethodMode(2);
            show();
            n2 n2Var = this.g;
            n2Var.setChoiceMode(1);
            n2Var.setTextDirection(i);
            n2Var.setTextAlignment(i2);
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            n2 n2Var2 = this.g;
            if (a() && n2Var2 != null) {
                n2Var2.setListSelectionHidden(false);
                n2Var2.setSelection(selectedItemPosition);
                if (n2Var2.getChoiceMode() != 0) {
                    n2Var2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (zA || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            this.D.setOnDismissListener(new c(bVar));
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.e
        public void o(ListAdapter listAdapter) {
            super.o(listAdapter);
            this.I = listAdapter;
        }

        public void s() {
            Drawable drawableG = g();
            int i = 0;
            if (drawableG != null) {
                drawableG.getPadding(AppCompatSpinner.this.l);
                i = i3.b(AppCompatSpinner.this) ? AppCompatSpinner.this.l.right : -AppCompatSpinner.this.l.left;
            } else {
                Rect rect = AppCompatSpinner.this.l;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i2 = appCompatSpinner.k;
            if (i2 == -2) {
                int iA = appCompatSpinner.a((SpinnerAdapter) this.I, g());
                int i3 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.l;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (iA > i4) {
                    iA = i4;
                }
                q(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                q((width - paddingLeft) - paddingRight);
            } else {
                q(i2);
            }
            this.j = i3.b(AppCompatSpinner.this) ? (((width - paddingRight) - this.i) - this.K) + i : paddingLeft + this.K + i;
        }
    }

    public interface e {
        boolean a();

        int b();

        void d(int i);

        void dismiss();

        CharSequence e();

        Drawable g();

        void i(CharSequence charSequence);

        void j(Drawable drawable);

        void k(int i);

        void l(int i);

        void m(int i, int i2);

        int n();

        void o(ListAdapter listAdapter);
    }

    public AppCompatSpinner(Context context) {
        this(context, null);
    }

    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.l);
        Rect rect = this.l;
        return iMax2 + rect.left + rect.right;
    }

    public void b() {
        this.j.m(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        e eVar = this.j;
        return eVar != null ? eVar.b() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        e eVar = this.j;
        return eVar != null ? eVar.n() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.j != null ? this.k : super.getDropDownWidth();
    }

    public final e getInternalPopup() {
        return this.j;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        e eVar = this.j;
        return eVar != null ? eVar.g() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        e eVar = this.j;
        return eVar != null ? eVar.e() : super.getPrompt();
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

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e eVar = this.j;
        if (eVar == null || !eVar.a()) {
            return;
        }
        this.j.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.j == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.e || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new a());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        e eVar = this.j;
        savedState.e = eVar != null && eVar.a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p2 p2Var = this.g;
        if (p2Var == null || !p2Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        e eVar = this.j;
        if (eVar == null) {
            return super.performClick();
        }
        if (eVar.a()) {
            return true;
        }
        b();
        return true;
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

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        e eVar = this.j;
        if (eVar == null) {
            super.setDropDownHorizontalOffset(i);
        } else {
            eVar.l(i);
            this.j.d(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        e eVar = this.j;
        if (eVar != null) {
            eVar.k(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.j != null) {
            this.k = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        e eVar = this.j;
        if (eVar != null) {
            eVar.j(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(p0.b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        e eVar = this.j;
        if (eVar != null) {
            eVar.i(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
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

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.spinnerStyle);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.i) {
            this.h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.j != null) {
            Context context = this.f;
            if (context == null) {
                context = getContext();
            }
            this.j.o(new c(spinnerAdapter, context.getTheme()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r9, android.util.AttributeSet r10, int r11) throws java.lang.Throwable {
        /*
            r8 = this;
            r8.<init>(r9, r10, r11)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r8.l = r0
            android.content.Context r0 = r8.getContext()
            defpackage.x2.a(r8, r0)
            int[] r0 = androidx.appcompat.R$styleable.Spinner
            r1 = 0
            android.content.res.TypedArray r0 = r9.obtainStyledAttributes(r10, r0, r11, r1)
            z1 r2 = new z1
            r2.<init>(r8)
            r8.e = r2
            int r2 = androidx.appcompat.R$styleable.Spinner_popupTheme
            int r2 = r0.getResourceId(r2, r1)
            if (r2 == 0) goto L2f
            x0 r3 = new x0
            r3.<init>(r9, r2)
            r8.f = r3
            goto L31
        L2f:
            r8.f = r9
        L31:
            r2 = 0
            r3 = -1
            int[] r4 = androidx.appcompat.widget.AppCompatSpinner.m     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            android.content.res.TypedArray r4 = r9.obtainStyledAttributes(r10, r4, r11, r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            boolean r5 = r4.hasValue(r1)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L48
            if (r5 == 0) goto L59
            int r3 = r4.getInt(r1, r1)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L48
            goto L59
        L44:
            r9 = move-exception
            r2 = r4
            goto Ld8
        L48:
            r5 = move-exception
            goto L50
        L4a:
            r9 = move-exception
            goto Ld8
        L4d:
            r4 = move-exception
            r5 = r4
            r4 = r2
        L50:
            java.lang.String r6 = "AppCompatSpinner"
            java.lang.String r7 = "Could not read android:spinnerMode"
            android.util.Log.i(r6, r7, r5)     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L5c
        L59:
            r4.recycle()
        L5c:
            r4 = 1
            if (r3 == 0) goto L9c
            if (r3 == r4) goto L62
            goto Lac
        L62:
            androidx.appcompat.widget.AppCompatSpinner$d r3 = new androidx.appcompat.widget.AppCompatSpinner$d
            android.content.Context r5 = r8.f
            r3.<init>(r5, r10, r11)
            android.content.Context r5 = r8.f
            int[] r6 = androidx.appcompat.R$styleable.Spinner
            c3 r1 = defpackage.c3.r(r5, r10, r6, r11, r1)
            int r5 = androidx.appcompat.R$styleable.Spinner_android_dropDownWidth
            r6 = -2
            int r5 = r1.l(r5, r6)
            r8.k = r5
            int r5 = androidx.appcompat.R$styleable.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r5 = r1.g(r5)
            android.widget.PopupWindow r6 = r3.D
            r6.setBackgroundDrawable(r5)
            int r5 = androidx.appcompat.R$styleable.Spinner_android_prompt
            java.lang.String r5 = r0.getString(r5)
            r3.H = r5
            android.content.res.TypedArray r1 = r1.b
            r1.recycle()
            r8.j = r3
            g2 r1 = new g2
            r1.<init>(r8, r8, r3)
            r8.g = r1
            goto Lac
        L9c:
            androidx.appcompat.widget.AppCompatSpinner$b r1 = new androidx.appcompat.widget.AppCompatSpinner$b
            r1.<init>()
            r8.j = r1
            int r3 = androidx.appcompat.R$styleable.Spinner_android_prompt
            java.lang.String r3 = r0.getString(r3)
            r1.i(r3)
        Lac:
            int r1 = androidx.appcompat.R$styleable.Spinner_android_entries
            java.lang.CharSequence[] r1 = r0.getTextArray(r1)
            if (r1 == 0) goto Lc4
            android.widget.ArrayAdapter r3 = new android.widget.ArrayAdapter
            r5 = 17367048(0x1090008, float:2.5162948E-38)
            r3.<init>(r9, r5, r1)
            int r9 = androidx.appcompat.R$layout.support_simple_spinner_dropdown_item
            r3.setDropDownViewResource(r9)
            r8.setAdapter(r3)
        Lc4:
            r0.recycle()
            r8.i = r4
            android.widget.SpinnerAdapter r9 = r8.h
            if (r9 == 0) goto Ld2
            r8.setAdapter(r9)
            r8.h = r2
        Ld2:
            z1 r9 = r8.e
            r9.d(r10, r11)
            return
        Ld8:
            if (r2 == 0) goto Ldd
            r2.recycle()
        Ldd:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
