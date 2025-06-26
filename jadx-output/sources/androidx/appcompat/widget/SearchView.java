package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.c3;
import defpackage.cb;
import defpackage.d0;
import defpackage.ha;
import defpackage.i3;
import defpackage.jo;
import defpackage.w0;
import defpackage.w2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements w0 {
    public static final n u0;
    public final ImageView A;
    public final View B;
    public o C;
    public Rect D;
    public Rect E;
    public int[] F;
    public int[] G;
    public final ImageView H;
    public final Drawable I;
    public final int J;
    public final int K;
    public final Intent L;
    public final Intent M;
    public final CharSequence N;
    public l O;
    public k P;
    public View.OnFocusChangeListener Q;
    public m R;
    public View.OnClickListener S;
    public boolean T;
    public boolean U;
    public cb V;
    public boolean W;
    public CharSequence a0;
    public boolean b0;
    public boolean c0;
    public int d0;
    public boolean e0;
    public CharSequence f0;
    public CharSequence g0;
    public boolean h0;
    public int i0;
    public SearchableInfo j0;
    public Bundle k0;
    public final Runnable l0;
    public Runnable m0;
    public final WeakHashMap<String, Drawable.ConstantState> n0;
    public final View.OnClickListener o0;
    public View.OnKeyListener p0;
    public final TextView.OnEditorActionListener q0;
    public final AdapterView.OnItemClickListener r0;
    public final AdapterView.OnItemSelectedListener s0;
    public final SearchAutoComplete t;
    public TextWatcher t0;
    public final View u;
    public final View v;
    public final View w;
    public final ImageView x;
    public final ImageView y;
    public final ImageView z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public boolean g;

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            StringBuilder sbZ = jo.z("SearchView.SavedState{");
            sbZ.append(Integer.toHexString(System.identityHashCode(this)));
            sbZ.append(" isIconified=");
            sbZ.append(this.g);
            sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
            return sbZ.toString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeValue(Boolean.valueOf(this.g));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        public int h;
        public SearchView i;
        public boolean j;
        public final Runnable k;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.j) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.j = false;
                }
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return RecyclerView.a0.FLAG_TMP_DETACHED;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        public void a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            n nVar = SearchView.u0;
            Objects.requireNonNull(nVar);
            n.a();
            Method method = nVar.c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.h <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.j) {
                removeCallbacks(this.k);
                post(this.k);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.i;
            searchView.G(searchView.U);
            searchView.post(searchView.l0);
            if (searchView.t.hasFocus()) {
                searchView.s();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.i.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onWindowFocusChanged(z);
            if (z && this.i.hasFocus() && getVisibility() == 0) {
                this.j = true;
                Context context = getContext();
                n nVar = SearchView.u0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.j = false;
                removeCallbacks(this.k);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.j = true;
                    return;
                }
                this.j = false;
                removeCallbacks(this.k);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.i = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.h = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.k = new a();
            this.h = getThreshold();
        }
    }

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.t.getText();
            searchView.g0 = text;
            boolean z = !TextUtils.isEmpty(text);
            searchView.F(z);
            searchView.H(!z);
            searchView.B();
            searchView.E();
            if (searchView.O != null && !TextUtils.equals(charSequence, searchView.f0)) {
                searchView.O.a(charSequence.toString());
            }
            searchView.f0 = charSequence.toString();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.C();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cb cbVar = SearchView.this.V;
            if (cbVar instanceof w2) {
                cbVar.b(null);
            }
        }
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.Q;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    public class e implements View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView searchView = SearchView.this;
            if (searchView.B.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.v.getPaddingLeft();
                Rect rect = new Rect();
                boolean zB = i3.b(searchView);
                int dimensionPixelSize = searchView.T ? resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_icon_width) : 0;
                searchView.t.getDropDownBackground().getPadding(rect);
                searchView.t.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchView.t.setDropDownWidth((((searchView.B.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            SearchView searchView = SearchView.this;
            if (view == searchView.x) {
                searchView.y();
                return;
            }
            if (view == searchView.z) {
                searchView.u();
                return;
            }
            if (view == searchView.y) {
                searchView.z();
                return;
            }
            if (view != searchView.A) {
                if (view == searchView.t) {
                    searchView.s();
                    return;
                }
                return;
            }
            SearchableInfo searchableInfo = searchView.j0;
            if (searchableInfo == null) {
                return;
            }
            try {
                if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                        searchView.getContext().startActivity(searchView.r(searchView.M, searchableInfo));
                    }
                } else {
                    Intent intent = new Intent(searchView.L);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                    searchView.getContext().startActivity(intent);
                }
            } catch (ActivityNotFoundException unused) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    public class g implements View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.j0 == null) {
                return false;
            }
            if (searchView.t.isPopupShowing() && SearchView.this.t.getListSelection() != -1) {
                return SearchView.this.A(i, keyEvent);
            }
            if ((TextUtils.getTrimmedLength(SearchView.this.t.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.t(0, null, searchView2.t.getText().toString());
            return true;
        }
    }

    public class h implements TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.z();
            return true;
        }
    }

    public class i implements AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.v(i);
        }
    }

    public class j implements AdapterView.OnItemSelectedListener {
        public j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.w(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public interface k {
        boolean a();
    }

    public interface l {
        boolean a(String str);

        boolean b(String str);
    }

    public interface m {
        boolean a(int i);

        boolean b(int i);
    }

    public static class n {
        public Method a;
        public Method b;
        public Method c;

        public n() throws NoSuchMethodException, SecurityException {
            this.a = null;
            this.b = null;
            this.c = null;
            a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        public static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    public static class o extends TouchDelegate {
        public final View a;
        public final Rect b;
        public final Rect c;
        public final Rect d;
        public final int e;
        public boolean f;

        public o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = new Rect();
            this.d = new Rect();
            this.c = new Rect();
            a(rect, rect2);
            this.a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.d.set(rect);
            Rect rect3 = this.d;
            int i = this.e;
            rect3.inset(-i, -i);
            this.c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f;
                    if (z2 && !this.d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f;
                        this.f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.b.contains(x, y)) {
                    this.f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (!z || this.c.contains(x, y)) {
                Rect rect = this.c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(this.a.getWidth() / 2, this.a.getHeight() / 2);
            }
            return this.a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        u0 = Build.VERSION.SDK_INT < 29 ? new n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_width);
    }

    public boolean A(int i2, KeyEvent keyEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.j0 != null && this.V != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return v(this.t.getListSelection());
            }
            if (i2 == 21 || i2 == 22) {
                this.t.setSelection(i2 == 21 ? 0 : this.t.length());
                this.t.setListSelection(0);
                this.t.clearListSelection();
                this.t.a();
                return true;
            }
            if (i2 != 19 || this.t.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    public final void B() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.t.getText());
        if (!z2 && (!this.T || this.h0)) {
            z = false;
        }
        this.z.setVisibility(z ? 0 : 8);
        Drawable drawable = this.z.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void C() {
        int[] iArr = this.t.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.v.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.w.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void D() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.t;
        if (queryHint == null) {
            queryHint = "";
        }
        if (this.T && this.I != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            this.I.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.I), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void E() {
        int i2 = 0;
        if (!((this.W || this.e0) && !this.U) || (this.y.getVisibility() != 0 && this.A.getVisibility() != 0)) {
            i2 = 8;
        }
        this.w.setVisibility(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F(boolean r3) {
        /*
            r2 = this;
            boolean r0 = r2.W
            r1 = 0
            if (r0 == 0) goto L21
            if (r0 != 0) goto Lb
            boolean r0 = r2.e0
            if (r0 == 0) goto L11
        Lb:
            boolean r0 = r2.U
            if (r0 != 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L21
            boolean r0 = r2.hasFocus()
            if (r0 == 0) goto L21
            if (r3 != 0) goto L23
            boolean r3 = r2.e0
            if (r3 != 0) goto L21
            goto L23
        L21:
            r1 = 8
        L23:
            android.widget.ImageView r3 = r2.y
            r3.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.F(boolean):void");
    }

    public final void G(boolean z) {
        this.U = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.t.getText());
        this.x.setVisibility(i2);
        F(z2);
        this.u.setVisibility(z ? 8 : 0);
        this.H.setVisibility((this.H.getDrawable() == null || this.T) ? 8 : 0);
        B();
        H(!z2);
        E();
    }

    public final void H(boolean z) {
        int i2 = 8;
        if (this.e0 && !this.U && z) {
            this.y.setVisibility(8);
            i2 = 0;
        }
        this.A.setVisibility(i2);
    }

    @Override // defpackage.w0
    public void c() {
        if (this.h0) {
            return;
        }
        this.h0 = true;
        int imeOptions = this.t.getImeOptions();
        this.i0 = imeOptions;
        this.t.setImeOptions(imeOptions | 33554432);
        this.t.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.c0 = true;
        super.clearFocus();
        this.t.clearFocus();
        this.t.setImeVisibility(false);
        this.c0 = false;
    }

    @Override // defpackage.w0
    public void e() {
        setQuery("", false);
        clearFocus();
        G(true);
        this.t.setImeOptions(this.i0);
        this.h0 = false;
    }

    public int getImeOptions() {
        return this.t.getImeOptions();
    }

    public int getInputType() {
        return this.t.getInputType();
    }

    public int getMaxWidth() {
        return this.d0;
    }

    public CharSequence getQuery() {
        return this.t.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.a0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.j0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.N : getContext().getText(this.j0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.K;
    }

    public int getSuggestionRowLayout() {
        return this.J;
    }

    public cb getSuggestionsAdapter() {
        return this.V;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.l0);
        post(this.m0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.t;
            Rect rect = this.D;
            searchAutoComplete.getLocationInWindow(this.F);
            getLocationInWindow(this.G);
            int[] iArr = this.F;
            int i6 = iArr[1];
            int[] iArr2 = this.G;
            int i7 = i6 - iArr2[1];
            int i8 = iArr[0] - iArr2[0];
            rect.set(i8, i7, searchAutoComplete.getWidth() + i8, searchAutoComplete.getHeight() + i7);
            Rect rect2 = this.E;
            Rect rect3 = this.D;
            rect2.set(rect3.left, 0, rect3.right, i5 - i3);
            o oVar = this.C;
            if (oVar != null) {
                oVar.a(this.E, this.D);
                return;
            }
            o oVar2 = new o(this.E, this.D, this.t);
            this.C = oVar2;
            setTouchDelegate(oVar2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        if (this.U) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.d0;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.d0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.d0) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        G(savedState.g);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.g = this.U;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.l0);
    }

    public final Intent q(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.g0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.k0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.j0.getSearchActivity());
        return intent;
    }

    public final Intent r(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.k0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.c0 || !isFocusable()) {
            return false;
        }
        if (this.U) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.t.requestFocus(i2, rect);
        if (zRequestFocus) {
            G(false);
        }
        return zRequestFocus;
    }

    public void s() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            this.t.refreshAutoCompleteResults();
            return;
        }
        n nVar = u0;
        SearchAutoComplete searchAutoComplete = this.t;
        Objects.requireNonNull(nVar);
        n.a();
        Method method = nVar.a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        n nVar2 = u0;
        SearchAutoComplete searchAutoComplete2 = this.t;
        Objects.requireNonNull(nVar2);
        n.a();
        Method method2 = nVar2.b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete2, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    public void setAppSearchData(Bundle bundle) {
        this.k0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            u();
        } else {
            y();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.T == z) {
            return;
        }
        this.T = z;
        G(z);
        D();
    }

    public void setImeOptions(int i2) {
        this.t.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.t.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.d0 = i2;
        requestLayout();
    }

    public void setOnCloseListener(k kVar) {
        this.P = kVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.Q = onFocusChangeListener;
    }

    public void setOnQueryTextListener(l lVar) {
        this.O = lVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.S = onClickListener;
    }

    public void setOnSuggestionListener(m mVar) {
        this.R = mVar;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.t.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.t;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.g0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        z();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.a0 = charSequence;
        D();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.b0 = z;
        cb cbVar = this.V;
        if (cbVar instanceof w2) {
            ((w2) cbVar).u = z ? 2 : 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.j0 = r7
            r0 = 1
            r1 = 65536(0x10000, float:9.1835E-41)
            r2 = 0
            if (r7 == 0) goto L6e
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.t
            int r7 = r7.getSuggestThreshold()
            r3.setThreshold(r7)
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.t
            android.app.SearchableInfo r3 = r6.j0
            int r3 = r3.getImeOptions()
            r7.setImeOptions(r3)
            android.app.SearchableInfo r7 = r6.j0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r0) goto L36
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.j0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L36
            r7 = r7 | r1
            r3 = 524288(0x80000, float:7.34684E-40)
            r7 = r7 | r3
        L36:
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.t
            r3.setInputType(r7)
            cb r7 = r6.V
            if (r7 == 0) goto L42
            r7.b(r2)
        L42:
            android.app.SearchableInfo r7 = r6.j0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L6b
            w2 r7 = new w2
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.j0
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r5 = r6.n0
            r7.<init>(r3, r6, r4, r5)
            r6.V = r7
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.t
            r3.setAdapter(r7)
            cb r7 = r6.V
            w2 r7 = (defpackage.w2) r7
            boolean r3 = r6.b0
            if (r3 == 0) goto L68
            r3 = 2
            goto L69
        L68:
            r3 = 1
        L69:
            r7.u = r3
        L6b:
            r6.D()
        L6e:
            android.app.SearchableInfo r7 = r6.j0
            r3 = 0
            if (r7 == 0) goto L9f
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L9f
            android.app.SearchableInfo r7 = r6.j0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L84
            android.content.Intent r2 = r6.L
            goto L8e
        L84:
            android.app.SearchableInfo r7 = r6.j0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L8e
            android.content.Intent r2 = r6.M
        L8e:
            if (r2 == 0) goto L9f
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r2, r1)
            if (r7 == 0) goto L9f
            goto La0
        L9f:
            r0 = 0
        La0:
            r6.e0 = r0
            if (r0 == 0) goto Lab
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.t
            java.lang.String r0 = "nm"
            r7.setPrivateImeOptions(r0)
        Lab:
            boolean r7 = r6.U
            r6.G(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.W = z;
        G(this.U);
    }

    public void setSuggestionsAdapter(cb cbVar) {
        this.V = cbVar;
        this.t.setAdapter(cbVar);
    }

    public void t(int i2, String str, String str2) {
        getContext().startActivity(q("android.intent.action.SEARCH", null, null, str2, i2, null));
    }

    public void u() {
        if (!TextUtils.isEmpty(this.t.getText())) {
            this.t.setText("");
            this.t.requestFocus();
            this.t.setImeVisibility(true);
        } else if (this.T) {
            k kVar = this.P;
            if (kVar == null || !kVar.a()) {
                clearFocus();
                G(true);
            }
        }
    }

    public boolean v(int i2) {
        int position;
        String strH;
        m mVar = this.R;
        if (mVar != null && mVar.b(i2)) {
            return false;
        }
        Cursor cursor = this.V.g;
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intentQ = null;
            try {
                int i3 = w2.C;
                String strH2 = w2.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.j0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String str = strH2;
                String strH3 = w2.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.j0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = w2.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentQ = q(str, strH3 == null ? null : Uri.parse(strH3), w2.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), w2.h(cursor, cursor.getColumnIndex("suggest_intent_query")), 0, null);
            } catch (RuntimeException e2) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            }
            if (intentQ != null) {
                try {
                    getContext().startActivity(intentQ);
                } catch (RuntimeException e3) {
                    Log.e("SearchView", "Failed launch activity: " + intentQ, e3);
                }
            }
        }
        this.t.setImeVisibility(false);
        this.t.dismissDropDown();
        return true;
    }

    public boolean w(int i2) {
        m mVar = this.R;
        if (mVar != null && mVar.a(i2)) {
            return false;
        }
        Editable text = this.t.getText();
        Cursor cursor = this.V.g;
        if (cursor == null) {
            return true;
        }
        if (!cursor.moveToPosition(i2)) {
            setQuery(text);
            return true;
        }
        CharSequence charSequenceC = this.V.c(cursor);
        if (charSequenceC != null) {
            setQuery(charSequenceC);
            return true;
        }
        setQuery(text);
        return true;
    }

    public void x(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void y() {
        G(false);
        this.t.requestFocus();
        this.t.setImeVisibility(true);
        View.OnClickListener onClickListener = this.S;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void z() {
        Editable text = this.t.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        l lVar = this.O;
        if (lVar == null || !lVar.b(text.toString())) {
            if (this.j0 != null) {
                t(0, null, text.toString());
            }
            this.t.setImeVisibility(false);
            this.t.dismissDropDown();
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.D = new Rect();
        this.E = new Rect();
        this.F = new int[2];
        this.G = new int[2];
        this.l0 = new b();
        this.m0 = new c();
        this.n0 = new WeakHashMap<>();
        f fVar = new f();
        this.o0 = fVar;
        this.p0 = new g();
        h hVar = new h();
        this.q0 = hVar;
        i iVar = new i();
        this.r0 = iVar;
        j jVar = new j();
        this.s0 = jVar;
        this.t0 = new a();
        c3 c3Var = new c3(context, context.obtainStyledAttributes(attributeSet, R$styleable.SearchView, i2, 0));
        LayoutInflater.from(context).inflate(c3Var.m(R$styleable.SearchView_layout, R$layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R$id.search_src_text);
        this.t = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.u = findViewById(R$id.search_edit_frame);
        View viewFindViewById = findViewById(R$id.search_plate);
        this.v = viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.submit_area);
        this.w = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R$id.search_button);
        this.x = imageView;
        ImageView imageView2 = (ImageView) findViewById(R$id.search_go_btn);
        this.y = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R$id.search_close_btn);
        this.z = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R$id.search_voice_btn);
        this.A = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R$id.search_mag_icon);
        this.H = imageView5;
        Drawable drawableG = c3Var.g(R$styleable.SearchView_queryBackground);
        AtomicInteger atomicInteger = ha.a;
        viewFindViewById.setBackground(drawableG);
        viewFindViewById2.setBackground(c3Var.g(R$styleable.SearchView_submitBackground));
        int i3 = R$styleable.SearchView_searchIcon;
        imageView.setImageDrawable(c3Var.g(i3));
        imageView2.setImageDrawable(c3Var.g(R$styleable.SearchView_goIcon));
        imageView3.setImageDrawable(c3Var.g(R$styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(c3Var.g(R$styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(c3Var.g(i3));
        this.I = c3Var.g(R$styleable.SearchView_searchHintIcon);
        d0.h.g0(imageView, getResources().getString(R$string.abc_searchview_description_search));
        this.J = c3Var.m(R$styleable.SearchView_suggestionRowLayout, R$layout.abc_search_dropdown_item_icons_2line);
        this.K = c3Var.m(R$styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.t0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.p0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(c3Var.a(R$styleable.SearchView_iconifiedByDefault, true));
        int iF = c3Var.f(R$styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.N = c3Var.o(R$styleable.SearchView_defaultQueryHint);
        this.a0 = c3Var.o(R$styleable.SearchView_queryHint);
        int iJ = c3Var.j(R$styleable.SearchView_android_imeOptions, -1);
        if (iJ != -1) {
            setImeOptions(iJ);
        }
        int iJ2 = c3Var.j(R$styleable.SearchView_android_inputType, -1);
        if (iJ2 != -1) {
            setInputType(iJ2);
        }
        setFocusable(c3Var.a(R$styleable.SearchView_android_focusable, true));
        c3Var.b.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.L = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.M = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.B = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new e());
        }
        G(this.T);
        D();
    }

    private void setQuery(CharSequence charSequence) {
        this.t.setText(charSequence);
        this.t.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }
}
