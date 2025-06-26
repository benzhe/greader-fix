package defpackage;

import android.view.View;
import defpackage.ha;

/* loaded from: classes.dex */
public class ia extends ha.b<Boolean> {
    public ia(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // ha.b
    public Boolean b(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }
}
