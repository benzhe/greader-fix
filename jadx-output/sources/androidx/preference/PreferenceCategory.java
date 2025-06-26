package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import defpackage.c8;

/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }

    @Override // androidx.preference.Preference
    public boolean k() {
        return false;
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c8.a(context, R$attr.preferenceCategoryStyle, R.attr.preferenceCategoryStyle));
    }
}
