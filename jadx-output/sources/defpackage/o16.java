package defpackage;

import android.app.Application;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o16 implements Object<DisplayMetrics> {
    public final j16 a;
    public final jj7<Application> b;

    public o16(j16 j16Var, jj7<Application> jj7Var) {
        this.a = j16Var;
        this.b = jj7Var;
    }

    public Object get() {
        j16 j16Var = this.a;
        Application application = this.b.get();
        Objects.requireNonNull(j16Var);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) application.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }
}
