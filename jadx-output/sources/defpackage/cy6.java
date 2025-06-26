package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class cy6 {
    public final List<by6> a = new ArrayList();

    public final void a(Context context) {
        im7.e(context, "context");
        if (Build.VERSION.SDK_INT < 25) {
            for (by6 by6Var : this.a) {
                Intent intent = new Intent();
                intent.putExtra("android.intent.extra.shortcut.INTENT", by6Var.d);
                intent.putExtra("android.intent.extra.shortcut.NAME", by6Var.b);
                intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", by6Var.c);
                intent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeResource(context.getResources(), by6Var.c));
                intent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
                context.sendBroadcast(intent);
            }
            return;
        }
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
        try {
            if (!(!this.a.isEmpty()) || shortcutManager == null) {
                return;
            }
            List<by6> list = this.a;
            ArrayList arrayList = new ArrayList(n56.x(list, 10));
            for (by6 by6Var2 : list) {
                arrayList.add(new ShortcutInfo.Builder(context, by6Var2.a).setShortLabel(by6Var2.b).setLongLabel(by6Var2.b).setIcon(Icon.createWithResource(context, by6Var2.c)).setIntent(by6Var2.d).build());
            }
            shortcutManager.addDynamicShortcuts(arrayList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
