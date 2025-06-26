package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.c8;

/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public CharSequence r;

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DialogPreference, i, i2);
        String strF = c8.f(typedArrayObtainStyledAttributes, R$styleable.DialogPreference_dialogTitle, R$styleable.DialogPreference_android_dialogTitle);
        this.r = strF;
        if (strF == null) {
            this.r = this.g;
        }
        int i3 = R$styleable.DialogPreference_dialogMessage;
        int i4 = R$styleable.DialogPreference_android_dialogMessage;
        if (typedArrayObtainStyledAttributes.getString(i3) == null) {
            typedArrayObtainStyledAttributes.getString(i4);
        }
        int i5 = R$styleable.DialogPreference_dialogIcon;
        int i6 = R$styleable.DialogPreference_android_dialogIcon;
        if (typedArrayObtainStyledAttributes.getDrawable(i5) == null) {
            typedArrayObtainStyledAttributes.getDrawable(i6);
        }
        int i7 = R$styleable.DialogPreference_positiveButtonText;
        int i8 = R$styleable.DialogPreference_android_positiveButtonText;
        if (typedArrayObtainStyledAttributes.getString(i7) == null) {
            typedArrayObtainStyledAttributes.getString(i8);
        }
        int i9 = R$styleable.DialogPreference_negativeButtonText;
        int i10 = R$styleable.DialogPreference_android_negativeButtonText;
        if (typedArrayObtainStyledAttributes.getString(i9) == null) {
            typedArrayObtainStyledAttributes.getString(i10);
        }
        typedArrayObtainStyledAttributes.getResourceId(R$styleable.DialogPreference_dialogLayout, typedArrayObtainStyledAttributes.getResourceId(R$styleable.DialogPreference_android_dialogLayout, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.dialogPreferenceStyle, R.attr.dialogPreferenceStyle));
    }
}
