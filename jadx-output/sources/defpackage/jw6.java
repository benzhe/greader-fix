package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.noinnion.android.reader.R$anim;
import com.noinnion.android.reader.R$color;
import java.util.Locale;

/* loaded from: classes2.dex */
public class jw6 {
    public static void a(Activity activity, String str) {
        if (activity == null) {
            return;
        }
        b(activity, str, true);
    }

    public static void b(Activity activity, String str, boolean z) {
        if (activity == null) {
            return;
        }
        if (!z) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setFlags(268435456);
                activity.startActivity(intent);
                return;
            } catch (Exception e) {
                n56.X1(activity, e.getLocalizedMessage());
                return;
            }
        }
        try {
            Context applicationContext = activity.getApplicationContext();
            Intent intent2 = new Intent("android.intent.action.VIEW");
            q3 q3Var = new q3();
            intent2.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
            int iE = lw6.e(applicationContext);
            q3Var.a = Integer.valueOf(u7.b(activity, iE != 1 ? iE != 2 ? iE != 3 ? iE != 5 ? R$color.primary_default : R$color.primary_green : R$color.primary_sepia : R$color.primary_black : R$color.primary_dark) | (-16777216));
            int i = R$anim.right_slide_in;
            int i2 = R$anim.no_anim;
            Bundle bundleB = h7.a(applicationContext, i, i2).b();
            intent2.putExtra("android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE", h7.a(applicationContext, i2, R$anim.right_slide_out).b());
            if (!intent2.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent2.putExtras(bundle);
            }
            intent2.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            Integer num = q3Var.a;
            Bundle bundle2 = new Bundle();
            if (num != null) {
                bundle2.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
            }
            intent2.putExtras(bundle2);
            intent2.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            u3 u3Var = new u3(intent2, bundleB);
            u3Var.a.setData(Uri.parse(str));
            Intent intent3 = u3Var.a;
            Bundle bundle3 = u3Var.b;
            Object obj = u7.a;
            activity.startActivity(intent3, bundle3);
        } catch (Exception e2) {
            n56.X1(activity, e2.getLocalizedMessage());
        }
    }

    public static void c(Context context, String str) {
        Locale locale = (str == null || str.equals("")) ? Locale.getDefault() : (str.length() == 5 && str.charAt(2) == '_') ? new Locale(str.substring(0, 2), str.substring(3)) : new Locale(str);
        Configuration configuration = new Configuration();
        configuration.locale = locale;
        context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
    }

    public static void d(SwipeRefreshLayout swipeRefreshLayout) {
        swipeRefreshLayout.setColorSchemeResources(R$color.primary_default, R$color.primary_green, R$color.accent_dark);
        swipeRefreshLayout.setProgressBackgroundColor(lw6.k() ? R$color.background_dark : lw6.l() ? R$color.background_sepia : R$color.background_default);
    }
}
