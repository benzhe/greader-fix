package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.internal.ads.zzvt;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zr0 {
    public static final Handler b = new ms2(Looper.getMainLooper());
    public static final String c = AdView.class.getName();
    public static final String d = InterstitialAd.class.getName();
    public static final String e = PublisherAdView.class.getName();
    public static final String f = PublisherInterstitialAd.class.getName();
    public static final String g = SearchAdView.class.getName();
    public static final String h = AdLoader.class.getName();
    public float a = -1.0f;

    public static int a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    public static AdSize b(Context context, int i, int i2) {
        int iO = o(context, i2);
        if (iO == -1) {
            return AdSize.INVALID;
        }
        return new AdSize(i, Math.max(Math.min(i > 655 ? Math.round((i / 728.0f) * 90.0f) : i > 632 ? 81 : i > 526 ? Math.round((i / 468.0f) * 60.0f) : i > 432 ? 68 : Math.round((i / 320.0f) * 50.0f), Math.min(90, Math.round(iO * 0.15f))), 50));
    }

    public static void c(Context context, String str, String str2, Bundle bundle, as0 as0Var) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            int iA = gy.b.a(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(iA);
            sb.append(".204890000");
            str = sb.toString();
        }
        bundle.putString("js", str);
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str3 : bundle.keySet()) {
            builderAppendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        as0Var.a(builderAppendQueryParameter.toString());
    }

    public static void d(ViewGroup viewGroup, zzvt zzvtVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int iK = k(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzvtVar.j - iK, zzvtVar.g - iK, 17));
        viewGroup.addView(frameLayout, zzvtVar.j, zzvtVar.g);
    }

    public static boolean e() {
        return Build.DEVICE.startsWith("generic");
    }

    public static boolean f() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static int g(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static String h(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || e()) {
            string = "emulator";
        }
        return l(string);
    }

    public static boolean i(Context context) {
        int iD = gy.b.d(context, 12451000);
        return iD == 0 || iD == 2;
    }

    public static int k(Context context, int i) {
        return a(context.getResources().getDisplayMetrics(), i);
    }

    public static String l(String str) throws NoSuchAlgorithmException {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    public static boolean m(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(w60.d.a());
    }

    public static boolean n(Context context, int i) {
        return gy.b.d(context, i) == 0;
    }

    public static int o(Context context, int i) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context == null) {
            return -1;
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null || (configuration = resources.getConfiguration()) == null) {
            return -1;
        }
        int i2 = configuration.orientation;
        if (i == 0) {
            i = i2;
        }
        return i == i2 ? Math.round(displayMetrics.heightPixels / displayMetrics.density) : Math.round(displayMetrics.widthPixels / displayMetrics.density);
    }

    public final int j(Context context, int i) {
        if (this.a < 0.0f) {
            synchronized (this) {
                if (this.a < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.a = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.a);
    }
}
