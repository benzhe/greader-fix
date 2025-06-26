package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.c8;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    public CharSequence[] s;
    public CharSequence[] t;
    public String u;
    public String v;

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPreference, i, i2);
        this.s = c8.g(typedArrayObtainStyledAttributes, R$styleable.ListPreference_entries, R$styleable.ListPreference_android_entries);
        int i3 = R$styleable.ListPreference_entryValues;
        int i4 = R$styleable.ListPreference_android_entryValues;
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(i3);
        this.t = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(i4) : textArray;
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.Preference, i, i2);
        this.v = c8.f(typedArrayObtainStyledAttributes2, R$styleable.Preference_summary, R$styleable.Preference_android_summary);
        typedArrayObtainStyledAttributes2.recycle();
    }

    @Override // androidx.preference.Preference
    public CharSequence i() {
        CharSequence[] charSequenceArr;
        CharSequence[] charSequenceArr2;
        String str = this.u;
        int i = -1;
        if (str != null && (charSequenceArr2 = this.t) != null) {
            int length = charSequenceArr2.length - 1;
            while (true) {
                if (length < 0) {
                    break;
                }
                if (this.t[length].equals(str)) {
                    i = length;
                    break;
                }
                length--;
            }
        }
        CharSequence charSequence = (i < 0 || (charSequenceArr = this.s) == null) ? null : charSequenceArr[i];
        String str2 = this.v;
        if (str2 == null) {
            return this.h;
        }
        Object[] objArr = new Object[1];
        if (charSequence == null) {
            charSequence = "";
        }
        objArr[0] = charSequence;
        return String.format(str2, objArr);
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.dialogPreferenceStyle, R.attr.dialogPreferenceStyle));
    }
}
