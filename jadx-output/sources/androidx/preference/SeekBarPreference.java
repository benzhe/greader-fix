package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int r;
    public int s;
    public int t;
    public boolean u;

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SeekBarPreference, i, 0);
        this.r = typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_min, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_android_max, 100);
        int i3 = this.r;
        i2 = i2 < i3 ? i3 : i2;
        if (i2 != this.s) {
            this.s = i2;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_seekBarIncrement, 0);
        if (i4 != this.t) {
            this.t = Math.min(this.s - this.r, Math.abs(i4));
        }
        this.u = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_adjustable, true);
        typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_showSeekBarValue, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.seekBarPreferenceStyle);
    }
}
