package defpackage;

import android.app.Activity;
import java.util.Objects;

/* loaded from: classes2.dex */
public class z07 extends y07 {
    public final a17 c;

    public z07(Activity activity, a17 a17Var) {
        super(activity, -1, -1);
        this.c = a17Var;
    }

    public void a() {
        Objects.requireNonNull(this.c);
        this.a.finish();
        this.a.overridePendingTransition(0, 0);
    }

    public void b(float f) {
        Objects.requireNonNull(this.c);
        Objects.requireNonNull(this.c);
    }
}
