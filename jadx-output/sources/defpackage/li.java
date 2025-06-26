package defpackage;

import android.view.View;
import android.view.WindowId;

/* loaded from: classes.dex */
public class li implements mi {
    public final WindowId a;

    public li(View view) {
        this.a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof li) && ((li) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
