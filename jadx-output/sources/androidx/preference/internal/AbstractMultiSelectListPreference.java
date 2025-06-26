package androidx.preference.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.DialogPreference;

/* loaded from: classes.dex */
public abstract class AbstractMultiSelectListPreference extends DialogPreference {
    public AbstractMultiSelectListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public AbstractMultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AbstractMultiSelectListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
