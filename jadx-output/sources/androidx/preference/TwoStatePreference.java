package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    public CharSequence r;
    public CharSequence s;
    public boolean t;
    public boolean u;
    public boolean v;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }

    @Override // androidx.preference.Preference
    public Object l(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    public boolean t() {
        return (this.v ? this.t : !this.t) || super.t();
    }

    public void w(boolean z) {
        boolean z2 = this.t != z;
        if (z2 || !this.u) {
            this.t = z;
            this.u = true;
            if (z2) {
                t();
            }
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
