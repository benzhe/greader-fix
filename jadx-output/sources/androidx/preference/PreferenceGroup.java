package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import defpackage.c8;
import defpackage.m4;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public List<Preference> r;
    public final m4<String, Long> s;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.s = new m4<>();
        new Handler();
        this.r = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PreferenceGroup, i, i2);
        int i3 = R$styleable.PreferenceGroup_orderingFromXml;
        c8.b(typedArrayObtainStyledAttributes, i3, i3, true);
        int i4 = R$styleable.PreferenceGroup_initialExpandedChildrenCount;
        if (typedArrayObtainStyledAttributes.hasValue(i4) && typedArrayObtainStyledAttributes.getInt(i4, typedArrayObtainStyledAttributes.getInt(i4, Integer.MAX_VALUE)) != Integer.MAX_VALUE && !(!TextUtils.isEmpty(this.i))) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
