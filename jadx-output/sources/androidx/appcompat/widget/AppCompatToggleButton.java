package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import defpackage.i2;
import defpackage.x2;

/* loaded from: classes.dex */
public class AppCompatToggleButton extends ToggleButton {
    public final i2 e;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        x2.a(this, getContext());
        i2 i2Var = new i2(this);
        this.e = i2Var;
        i2Var.e(attributeSet, i);
    }
}
