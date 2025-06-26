package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.R$string;
import com.noinnion.android.greader.ui.item.ItemFragment;
import com.noinnion.android.reader.ui.widget.ItemWebView;
import defpackage.uw6;
import defpackage.vw6;
import defpackage.ww6;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class vq6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ItemFragment e;

    public static final class a implements ww6.c {
        public a() {
        }

        @Override // ww6.c
        public final void a(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            FragmentActivity activity = vq6.this.e.getActivity();
            ItemFragment itemFragment = vq6.this.e;
            int i = ItemFragment.T;
            WebView webViewO = itemFragment.o();
            String strN = vq6.this.e.n();
            if (webViewO == null || strN == null) {
                return;
            }
            webViewO.getSettings().setUserAgentString("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24");
            webViewO.loadUrl("http://translate.google.com/translate?sl=auto&tl=" + str + "&u=" + n56.u0(strN));
            if (activity != null) {
                iw6.V(activity, "translation_language", str);
            }
        }
    }

    public static final class b implements vw6.c {
        public b() {
        }

        @Override // vw6.c
        public final void a(int i, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Context applicationContext;
            FragmentActivity activity = vq6.this.e.getActivity();
            if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
                return;
            }
            if (str != null) {
                n56.X1(applicationContext, str);
            }
            if (i == 401) {
                iw6.Y(applicationContext);
            }
        }
    }

    public static final class c implements uw6.c {
        public c() {
        }

        @Override // uw6.c
        public final void a(int i, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Context applicationContext;
            FragmentActivity activity = vq6.this.e.getActivity();
            if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
                return;
            }
            if (str != null) {
                n56.X1(applicationContext, str);
            }
            if (i == 401) {
                iw6.W(applicationContext);
            }
        }
    }

    public vq6(ItemFragment itemFragment) {
        this.e = itemFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws PackageManager.NameNotFoundException {
        String strN;
        boolean z = false;
        if (i == 1) {
            wb fragmentManager = this.e.getFragmentManager();
            a aVar = new a();
            int i2 = ww6.g;
            try {
                ww6 ww6Var = new ww6();
                ww6Var.f = aVar;
                xb xbVar = (xb) fragmentManager;
                Objects.requireNonNull(xbVar);
                qb qbVar = new qb(xbVar);
                qbVar.f(0, ww6Var, "fragment_translate", 1);
                qbVar.d();
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i == 2) {
            FragmentActivity activity = this.e.getActivity();
            String strN2 = this.e.n();
            try {
                activity.getPackageManager().getPackageInfo("com.noinnion.android.everclip", 1);
                z = true;
            } catch (PackageManager.NameNotFoundException unused2) {
            }
            if (z) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", strN2);
                intent.setPackage("com.noinnion.android.everclip");
                activity.startActivity(Intent.createChooser(intent, activity.getText(R$string.txt_send_to)));
                return;
            }
            n56.X1(activity, activity.getText(R$string.service_everclip_no_app));
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.noinnion.android.everclip")));
                return;
            } catch (Exception e) {
                n56.X1(activity, e.getLocalizedMessage());
                return;
            }
        }
        if (i == 3) {
            n56.Q1(this.e.getActivity(), ItemFragment.d(this.e), this.e.n());
            return;
        }
        if (i == 4) {
            n56.R1(this.e.getActivity(), ItemFragment.d(this.e) + " - " + this.e.n());
            return;
        }
        if (i == 6) {
            vw6.e(this.e.getFragmentManager(), "7fnd4H0ZTH078G9880A5166Da2g3T143", ItemFragment.d(this.e), this.e.n(), "gReader", new b());
            return;
        }
        if (i == 11) {
            ItemFragment itemFragment = this.e;
            if (itemFragment.i == null) {
                return;
            }
            itemFragment.x(false);
            return;
        }
        if (i == 8) {
            uw6.e(this.e.getFragmentManager(), ItemFragment.d(this.e), this.e.n(), "gReader", new c());
            return;
        }
        if (i != 9) {
            return;
        }
        WebView webViewO = this.e.o();
        if (!(webViewO instanceof ItemWebView)) {
            webViewO = null;
        }
        ItemWebView itemWebView = (ItemWebView) webViewO;
        if (itemWebView == null || (strN = this.e.n()) == null) {
            return;
        }
        itemWebView.loadUrl(n56.K0(strN));
    }
}
