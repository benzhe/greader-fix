package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import defpackage.c8;

/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public Context e;
    public int f;
    public CharSequence g;
    public CharSequence h;
    public String i;
    public String j;
    public boolean k;
    public boolean l;
    public boolean m;
    public Object n;
    public boolean o;
    public boolean p;
    public boolean q;

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f = Integer.MAX_VALUE;
        this.k = true;
        this.l = true;
        this.m = true;
        this.o = true;
        this.p = true;
        int i3 = R$layout.preference;
        this.e = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Preference, i, i2);
        c8.e(typedArrayObtainStyledAttributes, R$styleable.Preference_icon, R$styleable.Preference_android_icon, 0);
        int i4 = R$styleable.Preference_key;
        int i5 = R$styleable.Preference_android_key;
        String string = typedArrayObtainStyledAttributes.getString(i4);
        this.i = string == null ? typedArrayObtainStyledAttributes.getString(i5) : string;
        int i6 = R$styleable.Preference_title;
        int i7 = R$styleable.Preference_android_title;
        CharSequence text = typedArrayObtainStyledAttributes.getText(i6);
        this.g = text == null ? typedArrayObtainStyledAttributes.getText(i7) : text;
        int i8 = R$styleable.Preference_summary;
        int i9 = R$styleable.Preference_android_summary;
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(i8);
        this.h = text2 == null ? typedArrayObtainStyledAttributes.getText(i9) : text2;
        this.f = typedArrayObtainStyledAttributes.getInt(R$styleable.Preference_order, typedArrayObtainStyledAttributes.getInt(R$styleable.Preference_android_order, Integer.MAX_VALUE));
        int i10 = R$styleable.Preference_fragment;
        int i11 = R$styleable.Preference_android_fragment;
        String string2 = typedArrayObtainStyledAttributes.getString(i10);
        this.j = string2 == null ? typedArrayObtainStyledAttributes.getString(i11) : string2;
        typedArrayObtainStyledAttributes.getResourceId(R$styleable.Preference_layout, typedArrayObtainStyledAttributes.getResourceId(R$styleable.Preference_android_layout, i3));
        typedArrayObtainStyledAttributes.getResourceId(R$styleable.Preference_widgetLayout, typedArrayObtainStyledAttributes.getResourceId(R$styleable.Preference_android_widgetLayout, 0));
        this.k = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_enabled, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_enabled, true));
        this.l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_selectable, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_selectable, true));
        this.m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_persistent, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_persistent, true));
        int i12 = R$styleable.Preference_dependency;
        int i13 = R$styleable.Preference_android_dependency;
        if (typedArrayObtainStyledAttributes.getString(i12) == null) {
            typedArrayObtainStyledAttributes.getString(i13);
        }
        int i14 = R$styleable.Preference_allowDividerAbove;
        typedArrayObtainStyledAttributes.getBoolean(i14, typedArrayObtainStyledAttributes.getBoolean(i14, this.l));
        int i15 = R$styleable.Preference_allowDividerBelow;
        typedArrayObtainStyledAttributes.getBoolean(i15, typedArrayObtainStyledAttributes.getBoolean(i15, this.l));
        int i16 = R$styleable.Preference_defaultValue;
        if (typedArrayObtainStyledAttributes.hasValue(i16)) {
            this.n = l(typedArrayObtainStyledAttributes, i16);
        } else {
            int i17 = R$styleable.Preference_android_defaultValue;
            if (typedArrayObtainStyledAttributes.hasValue(i17)) {
                this.n = l(typedArrayObtainStyledAttributes, i17);
            }
        }
        typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_shouldDisableView, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_shouldDisableView, true));
        int i18 = R$styleable.Preference_singleLineTitle;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i18);
        this.q = zHasValue;
        if (zHasValue) {
            typedArrayObtainStyledAttributes.getBoolean(i18, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_singleLineTitle, true));
        }
        typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_iconSpaceReserved, typedArrayObtainStyledAttributes.getBoolean(R$styleable.Preference_android_iconSpaceReserved, false));
        int i19 = R$styleable.Preference_isPreferenceVisible;
        typedArrayObtainStyledAttributes.getBoolean(i19, typedArrayObtainStyledAttributes.getBoolean(i19, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // java.lang.Comparable
    public int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.f;
        int i2 = preference2.f;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.g;
        CharSequence charSequence2 = preference2.g;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.g.toString());
    }

    public CharSequence i() {
        return this.h;
    }

    public boolean k() {
        return this.k && this.o && this.p;
    }

    public Object l(TypedArray typedArray, int i) {
        return null;
    }

    public boolean t() {
        return !k();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.g;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence charSequenceI = i();
        if (!TextUtils.isEmpty(charSequenceI)) {
            sb.append(charSequenceI);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.preferenceStyle, R.attr.preferenceStyle));
    }
}
