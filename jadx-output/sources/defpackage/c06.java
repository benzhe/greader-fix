package defpackage;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class c06 {
    public q06 a;

    public final Rect a(Activity activity) {
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
        Point point = new Point();
        b(activity).getDefaultDisplay().getRealSize(point);
        rect.top = rect2.top;
        rect.left = rect2.left;
        rect.right = point.x - rect2.right;
        rect.bottom = point.y - rect2.bottom;
        return rect;
    }

    public final WindowManager b(Activity activity) {
        return (WindowManager) activity.getSystemService("window");
    }

    public boolean c() {
        q06 q06Var = this.a;
        if (q06Var == null) {
            return false;
        }
        return q06Var.f().isShown();
    }
}
