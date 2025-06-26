package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import defpackage.jo;

/* loaded from: classes.dex */
public final class SignInButtonImpl extends Button {
    public SignInButtonImpl(Context context) {
        this(context, null);
    }

    public static int a(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        throw new IllegalStateException(jo.M(33, "Unknown color scheme: ", i));
    }

    public SignInButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyle);
    }
}
