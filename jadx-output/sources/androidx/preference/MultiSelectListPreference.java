package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.preference.internal.AbstractMultiSelectListPreference;
import defpackage.c8;
import java.util.HashSet;

/* loaded from: classes.dex */
public class MultiSelectListPreference extends AbstractMultiSelectListPreference {
    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MultiSelectListPreference, i, 0);
        c8.g(typedArrayObtainStyledAttributes, R$styleable.MultiSelectListPreference_entries, R$styleable.MultiSelectListPreference_android_entries);
        int i2 = R$styleable.MultiSelectListPreference_entryValues;
        int i3 = R$styleable.MultiSelectListPreference_android_entryValues;
        if (typedArrayObtainStyledAttributes.getTextArray(i2) == null) {
            typedArrayObtainStyledAttributes.getTextArray(i3);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.dialogPreferenceStyle, R.attr.dialogPreferenceStyle));
    }
}
