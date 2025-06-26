package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.noinnion.android.greader.ui.item.ItemFragment;
import com.noinnion.android.reader.ui.view.WebViewPager;

/* loaded from: classes2.dex */
public final class uq6 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ ItemFragment e;

    public uq6(ItemFragment itemFragment) {
        this.e = itemFragment;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Context applicationContext;
        ItemFragment itemFragment = this.e;
        FragmentActivity activity = itemFragment.getActivity();
        if (activity == null || (applicationContext = activity.getApplicationContext()) == null) {
            return;
        }
        kw6 kw6Var = itemFragment.C;
        if (kw6Var == null) {
            im7.k("mReadingOptions");
            throw null;
        }
        kw6Var.b(applicationContext);
        View view = itemFragment.z;
        if (view != null) {
            kw6 kw6Var2 = itemFragment.C;
            if (kw6Var2 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            view.setVisibility(kw6Var2.t ? 0 : 8);
        }
        View view2 = itemFragment.A;
        if (view2 != null) {
            kw6 kw6Var3 = itemFragment.C;
            if (kw6Var3 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            view2.setVisibility(kw6Var3.u ? 0 : 8);
        }
        View view3 = itemFragment.B;
        if (view3 != null) {
            kw6 kw6Var4 = itemFragment.C;
            if (kw6Var4 == null) {
                im7.k("mReadingOptions");
                throw null;
            }
            view3.setVisibility(kw6Var4.s ? 0 : 8);
        }
        WebViewPager webViewPager = itemFragment.f;
        if (webViewPager != null) {
            kw6 kw6Var5 = itemFragment.C;
            if (kw6Var5 != null) {
                webViewPager.setPagingDisabled(kw6Var5.p == 0);
            } else {
                im7.k("mReadingOptions");
                throw null;
            }
        }
    }
}
