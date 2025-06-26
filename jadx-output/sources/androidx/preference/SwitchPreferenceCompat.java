package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import defpackage.c8;
import java.util.Objects;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    public final a w;
    public CharSequence x;
    public CharSequence y;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            Objects.requireNonNull(SwitchPreferenceCompat.this);
            SwitchPreferenceCompat.this.w(z);
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.w = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SwitchPreferenceCompat, i, 0);
        this.r = c8.f(typedArrayObtainStyledAttributes, R$styleable.SwitchPreferenceCompat_summaryOn, R$styleable.SwitchPreferenceCompat_android_summaryOn);
        int i2 = R$styleable.SwitchPreferenceCompat_summaryOff;
        int i3 = R$styleable.SwitchPreferenceCompat_android_summaryOff;
        String string = typedArrayObtainStyledAttributes.getString(i2);
        this.s = string == null ? typedArrayObtainStyledAttributes.getString(i3) : string;
        int i4 = R$styleable.SwitchPreferenceCompat_switchTextOn;
        int i5 = R$styleable.SwitchPreferenceCompat_android_switchTextOn;
        String string2 = typedArrayObtainStyledAttributes.getString(i4);
        this.x = string2 == null ? typedArrayObtainStyledAttributes.getString(i5) : string2;
        int i6 = R$styleable.SwitchPreferenceCompat_switchTextOff;
        int i7 = R$styleable.SwitchPreferenceCompat_android_switchTextOff;
        String string3 = typedArrayObtainStyledAttributes.getString(i6);
        this.y = string3 == null ? typedArrayObtainStyledAttributes.getString(i7) : string3;
        this.v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SwitchPreferenceCompat_disableDependentsState, typedArrayObtainStyledAttributes.getBoolean(R$styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchPreferenceCompatStyle);
    }
}
