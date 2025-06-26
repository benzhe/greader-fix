package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import defpackage.c8;
import java.util.Objects;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    public final a w;
    public CharSequence x;
    public CharSequence y;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            Objects.requireNonNull(SwitchPreference.this);
            SwitchPreference.this.w(z);
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.w = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SwitchPreference, i, 0);
        this.r = c8.f(typedArrayObtainStyledAttributes, R$styleable.SwitchPreference_summaryOn, R$styleable.SwitchPreference_android_summaryOn);
        int i2 = R$styleable.SwitchPreference_summaryOff;
        int i3 = R$styleable.SwitchPreference_android_summaryOff;
        String string = typedArrayObtainStyledAttributes.getString(i2);
        this.s = string == null ? typedArrayObtainStyledAttributes.getString(i3) : string;
        int i4 = R$styleable.SwitchPreference_switchTextOn;
        int i5 = R$styleable.SwitchPreference_android_switchTextOn;
        String string2 = typedArrayObtainStyledAttributes.getString(i4);
        this.x = string2 == null ? typedArrayObtainStyledAttributes.getString(i5) : string2;
        int i6 = R$styleable.SwitchPreference_switchTextOff;
        int i7 = R$styleable.SwitchPreference_android_switchTextOff;
        String string3 = typedArrayObtainStyledAttributes.getString(i6);
        this.y = string3 == null ? typedArrayObtainStyledAttributes.getString(i7) : string3;
        this.v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SwitchPreference_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R$styleable.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.switchPreferenceStyle, R.attr.switchPreferenceStyle));
    }
}
