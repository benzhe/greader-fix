package com.miguelcatalan.materialsearchview;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import defpackage.jm6;
import defpackage.km6;
import defpackage.lm6;
import defpackage.mm6;
import defpackage.nm6;
import defpackage.om6;
import java.lang.reflect.Field;
import java.util.Objects;

/* loaded from: classes.dex */
public class MaterialSearchView extends FrameLayout implements Filter.FilterListener {
    public static final /* synthetic */ int C = 0;
    public Context A;
    public final View.OnClickListener B;
    public MenuItem e;
    public boolean f;
    public int g;
    public boolean h;
    public View i;
    public View j;
    public ListView k;
    public EditText l;
    public ImageButton m;
    public ImageButton n;
    public ImageButton o;
    public RelativeLayout p;
    public CharSequence q;
    public CharSequence r;
    public d s;
    public e t;
    public ListAdapter u;
    public SavedState v;
    public boolean w;
    public boolean x;
    public boolean y;
    public Drawable z;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public String e;
        public boolean f;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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
            parcel.writeString(this.e);
            parcel.writeInt(this.f ? 1 : 0);
        }

        public SavedState(Parcel parcel, jm6 jm6Var) {
            super(parcel);
            this.e = parcel.readString();
            this.f = parcel.readInt() == 1;
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialSearchView materialSearchView = MaterialSearchView.this;
            if (view == materialSearchView.m) {
                materialSearchView.a();
                return;
            }
            if (view == materialSearchView.n) {
                Objects.requireNonNull(materialSearchView);
                Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
                intent.putExtra("android.speech.extra.MAX_RESULTS", 1);
                Context context = materialSearchView.A;
                if (context instanceof Activity) {
                    ((Activity) context).startActivityForResult(intent, 9999);
                    return;
                }
                return;
            }
            if (view == materialSearchView.o) {
                materialSearchView.l.setText((CharSequence) null);
            } else if (view == materialSearchView.l) {
                materialSearchView.d();
            } else if (view == materialSearchView.j) {
                materialSearchView.a();
            }
        }
    }

    public class b implements AdapterView.OnItemClickListener {
        public final /* synthetic */ nm6 e;

        public b(nm6 nm6Var) {
            this.e = nm6Var;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MaterialSearchView.this.setQuery(this.e.e.get(i), MaterialSearchView.this.w);
        }
    }

    public class c implements MenuItem.OnMenuItemClickListener {
        public c() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            MaterialSearchView.this.c(true);
            return true;
        }
    }

    public interface d {
        boolean a(String str);

        boolean b(String str);
    }

    public interface e {
        void a();

        void b();
    }

    public MaterialSearchView(Context context) {
        this(context, null);
    }

    public void a() {
        if (this.f) {
            if (this.k.getVisibility() == 0) {
                this.k.setVisibility(8);
            }
            clearFocus();
            this.i.setVisibility(8);
            e eVar = this.t;
            if (eVar != null) {
                eVar.b();
            }
            this.f = false;
        }
    }

    public final void b() {
        Editable text = this.l.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        d dVar = this.s;
        if (dVar == null || !dVar.b(text.toString())) {
            a();
        }
    }

    public void c(boolean z) {
        if (this.f) {
            return;
        }
        this.l.requestFocus();
        if (z) {
            mm6 mm6Var = new mm6(this);
            this.i.setVisibility(0);
            RelativeLayout relativeLayout = this.p;
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(relativeLayout, relativeLayout.getWidth() - ((int) TypedValue.applyDimension(1, 24.0f, relativeLayout.getResources().getDisplayMetrics())), relativeLayout.getHeight() / 2, 0.0f, Math.max(relativeLayout.getWidth(), relativeLayout.getHeight()));
            relativeLayout.setVisibility(0);
            animatorCreateCircularReveal.addListener(new om6(mm6Var, relativeLayout));
            animatorCreateCircularReveal.start();
        } else {
            this.i.setVisibility(0);
            e eVar = this.t;
            if (eVar != null) {
                eVar.a();
            }
        }
        this.f = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.h = true;
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        super.clearFocus();
        this.l.clearFocus();
        this.h = false;
    }

    public void d() {
        ListAdapter listAdapter = this.u;
        if (listAdapter == null || listAdapter.getCount() <= 0 || this.k.getVisibility() != 8) {
            return;
        }
        this.k.setVisibility(0);
    }

    public void e(boolean z) {
        if (z) {
            boolean z2 = true;
            if (!isInEditMode() && getContext().getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() != 0) {
                z2 = false;
            }
            if (z2 && this.y) {
                this.n.setVisibility(0);
                return;
            }
        }
        this.n.setVisibility(8);
    }

    @Override // android.widget.Filter.FilterListener
    public void onFilterComplete(int i) {
        if (i > 0) {
            d();
        } else if (this.k.getVisibility() == 0) {
            this.k.setVisibility(8);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.v = savedState;
        if (savedState.f) {
            c(false);
            setQuery(this.v.e, false);
        }
        super.onRestoreInstanceState(this.v.getSuperState());
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        this.v = savedState;
        CharSequence charSequence = this.r;
        savedState.e = charSequence != null ? charSequence.toString() : null;
        SavedState savedState2 = this.v;
        savedState2.f = this.f;
        return savedState2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.h && isFocusable()) {
            return this.l.requestFocus(i, rect);
        }
        return false;
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.u = listAdapter;
        this.k.setAdapter(listAdapter);
        Editable text = this.l.getText();
        ListAdapter listAdapter2 = this.u;
        if (listAdapter2 == null || !(listAdapter2 instanceof Filterable)) {
            return;
        }
        ((Filterable) listAdapter2).getFilter().filter(text, this);
    }

    public void setAnimationDuration(int i) {
        this.g = i;
    }

    public void setBackIcon(Drawable drawable) {
        this.m.setImageDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        this.p.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.p.setBackgroundColor(i);
    }

    public void setCloseIcon(Drawable drawable) {
        this.o.setImageDrawable(drawable);
    }

    public void setCursorDrawable(int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(this.l, Integer.valueOf(i));
        } catch (Exception e2) {
            Log.e("MaterialSearchView", e2.toString());
        }
    }

    public void setEllipsize(boolean z) {
        this.x = z;
    }

    public void setHint(CharSequence charSequence) {
        this.l.setHint(charSequence);
    }

    public void setHintTextColor(int i) {
        this.l.setHintTextColor(i);
    }

    public void setMenuItem(MenuItem menuItem) {
        this.e = menuItem;
        menuItem.setOnMenuItemClickListener(new c());
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.k.setOnItemClickListener(onItemClickListener);
    }

    public void setOnQueryTextListener(d dVar) {
        this.s = dVar;
    }

    public void setOnSearchViewListener(e eVar) {
        this.t = eVar;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.l.setText(charSequence);
        if (charSequence != null) {
            EditText editText = this.l;
            editText.setSelection(editText.length());
            this.r = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        b();
    }

    public void setSubmitOnClick(boolean z) {
        this.w = z;
    }

    public void setSuggestionBackground(Drawable drawable) {
        this.k.setBackground(drawable);
    }

    public void setSuggestionIcon(Drawable drawable) {
        this.z = drawable;
    }

    public void setSuggestions(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            this.j.setVisibility(8);
            return;
        }
        this.j.setVisibility(0);
        nm6 nm6Var = new nm6(this.A, strArr, this.z, this.x);
        setAdapter(nm6Var);
        setOnItemClickListener(new b(nm6Var));
    }

    public void setTextColor(int i) {
        this.l.setTextColor(i);
    }

    public void setVoiceIcon(Drawable drawable) {
        this.n.setImageDrawable(drawable);
    }

    public void setVoiceSearch(boolean z) {
        this.y = z;
    }

    public MaterialSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f = false;
        this.w = false;
        this.x = false;
        a aVar = new a();
        this.B = aVar;
        this.A = context;
        LayoutInflater.from(context).inflate(R$layout.search_view, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R$id.search_layout);
        this.i = viewFindViewById;
        this.p = (RelativeLayout) viewFindViewById.findViewById(R$id.search_top_bar);
        this.k = (ListView) this.i.findViewById(R$id.suggestion_list);
        this.l = (EditText) this.i.findViewById(R$id.searchTextView);
        this.m = (ImageButton) this.i.findViewById(R$id.action_up_btn);
        this.n = (ImageButton) this.i.findViewById(R$id.action_voice_btn);
        this.o = (ImageButton) this.i.findViewById(R$id.action_empty_btn);
        this.j = this.i.findViewById(R$id.transparent_view);
        this.l.setImeOptions(268435456);
        this.l.setOnClickListener(aVar);
        this.m.setOnClickListener(aVar);
        this.n.setOnClickListener(aVar);
        this.o.setOnClickListener(aVar);
        this.j.setOnClickListener(aVar);
        this.y = false;
        e(true);
        this.l.setOnEditorActionListener(new jm6(this));
        this.l.addTextChangedListener(new km6(this));
        this.l.setOnFocusChangeListener(new lm6(this));
        this.k.setVisibility(8);
        setAnimationDuration(400);
        TypedArray typedArrayObtainStyledAttributes = this.A.obtainStyledAttributes(attributeSet, R$styleable.MaterialSearchView, i, 0);
        if (typedArrayObtainStyledAttributes != null) {
            int i2 = R$styleable.MaterialSearchView_searchBackground;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                setBackground(typedArrayObtainStyledAttributes.getDrawable(i2));
            }
            int i3 = R$styleable.MaterialSearchView_android_textColor;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                setTextColor(typedArrayObtainStyledAttributes.getColor(i3, 0));
            }
            int i4 = R$styleable.MaterialSearchView_android_textColorHint;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                setHintTextColor(typedArrayObtainStyledAttributes.getColor(i4, 0));
            }
            int i5 = R$styleable.MaterialSearchView_android_hint;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                setHint(typedArrayObtainStyledAttributes.getString(i5));
            }
            int i6 = R$styleable.MaterialSearchView_searchVoiceIcon;
            if (typedArrayObtainStyledAttributes.hasValue(i6)) {
                setVoiceIcon(typedArrayObtainStyledAttributes.getDrawable(i6));
            }
            int i7 = R$styleable.MaterialSearchView_searchCloseIcon;
            if (typedArrayObtainStyledAttributes.hasValue(i7)) {
                setCloseIcon(typedArrayObtainStyledAttributes.getDrawable(i7));
            }
            int i8 = R$styleable.MaterialSearchView_searchBackIcon;
            if (typedArrayObtainStyledAttributes.hasValue(i8)) {
                setBackIcon(typedArrayObtainStyledAttributes.getDrawable(i8));
            }
            int i9 = R$styleable.MaterialSearchView_searchSuggestionBackground;
            if (typedArrayObtainStyledAttributes.hasValue(i9)) {
                setSuggestionBackground(typedArrayObtainStyledAttributes.getDrawable(i9));
            }
            int i10 = R$styleable.MaterialSearchView_searchSuggestionIcon;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                setSuggestionIcon(typedArrayObtainStyledAttributes.getDrawable(i10));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
