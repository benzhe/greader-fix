package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.c8;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public EditTextPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.editTextPreferenceStyle, R.attr.editTextPreferenceStyle));
    }
}
