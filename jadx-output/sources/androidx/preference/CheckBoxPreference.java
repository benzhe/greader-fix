package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import defpackage.c8;
import java.util.Objects;

/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public final a w;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            Objects.requireNonNull(CheckBoxPreference.this);
            CheckBoxPreference.this.w(z);
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.w = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CheckBoxPreference, i, 0);
        this.r = c8.f(typedArrayObtainStyledAttributes, R$styleable.CheckBoxPreference_summaryOn, R$styleable.CheckBoxPreference_android_summaryOn);
        int i2 = R$styleable.CheckBoxPreference_summaryOff;
        int i3 = R$styleable.CheckBoxPreference_android_summaryOff;
        String string = typedArrayObtainStyledAttributes.getString(i2);
        this.s = string == null ? typedArrayObtainStyledAttributes.getString(i3) : string;
        this.v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CheckBoxPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R$styleable.CheckBoxPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.checkBoxPreferenceStyle, R.attr.checkBoxPreferenceStyle));
    }
}
