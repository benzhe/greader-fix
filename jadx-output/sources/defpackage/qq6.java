package defpackage;

import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.ads.AdView;
import com.noinnion.android.greader.ui.item.ItemFragment;

/* loaded from: classes2.dex */
public final class qq6 extends jm7 implements pl7<AdView, yj7> {
    public final /* synthetic */ ItemFragment e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qq6(ItemFragment itemFragment) {
        super(1);
        this.e = itemFragment;
    }

    @Override // defpackage.pl7
    public yj7 invoke(AdView adView) {
        AdView adView2 = adView;
        im7.e(adView2, "adView");
        FragmentActivity activity = this.e.getActivity();
        if ((activity == null || !activity.isDestroyed()) && this.e.isAdded()) {
            ViewGroup viewGroup = this.e.G;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(adView2);
                viewGroup.setVisibility(0);
            }
        } else {
            adView2.destroy();
        }
        return yj7.a;
    }
}
