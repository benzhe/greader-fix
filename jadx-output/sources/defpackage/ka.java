package defpackage;

import android.view.View;
import defpackage.ha;

/* loaded from: classes.dex */
public class ka extends ha.b<Boolean> {
    public ka(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // ha.b
    public Boolean b(View view) {
        return Boolean.valueOf(view.isAccessibilityHeading());
    }

    public void d(View view, Object obj) {
        view.setAccessibilityHeading(((Boolean) obj).booleanValue());
    }

    public boolean e(Object obj, Object obj2) {
        return !a((Boolean) obj, (Boolean) obj2);
    }
}
