package defpackage;

import com.noinnion.android.greader.ui.subscription.SubscribePodcastFragment;
import com.noinnion.android.reader.common.subscription.Feed;

/* loaded from: classes2.dex */
public class nu6 implements bn6 {
    public final /* synthetic */ SubscribePodcastFragment a;

    public nu6(SubscribePodcastFragment subscribePodcastFragment) {
        this.a = subscribePodcastFragment;
    }

    @Override // defpackage.bn6
    public void a(Object obj) {
        if (obj instanceof Feed) {
            SubscribePodcastFragment.d(this.a, (Feed) obj);
        }
    }
}
