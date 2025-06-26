package defpackage;

import android.view.View;
import defpackage.ha;

/* loaded from: classes.dex */
public class ja extends ha.b<CharSequence> {
    public ja(int i, Class cls, int i2, int i3) {
        super(i, cls, i2, i3);
    }

    @Override // ha.b
    public CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }
}
