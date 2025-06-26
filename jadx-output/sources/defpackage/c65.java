package defpackage;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeDrawable;

/* loaded from: classes.dex */
public class c65 {
    public static void a(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) throws Resources.NotFoundException {
        c(badgeDrawable, view, null);
        if (badgeDrawable.d() != null) {
            badgeDrawable.d().setForeground(badgeDrawable);
        } else {
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static void b(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (badgeDrawable.d() != null) {
            badgeDrawable.d().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void c(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) throws Resources.NotFoundException {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.l(view, frameLayout);
    }
}
