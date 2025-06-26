package defpackage;

import android.view.View;
import androidx.appcompat.widget.ScrollingTabContainerView;

/* loaded from: classes.dex */
public class v2 implements Runnable {
    public final /* synthetic */ View e;
    public final /* synthetic */ ScrollingTabContainerView f;

    public v2(ScrollingTabContainerView scrollingTabContainerView, View view) {
        this.f = scrollingTabContainerView;
        this.e = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f.smoothScrollTo(this.e.getLeft() - ((this.f.getWidth() - this.e.getWidth()) / 2), 0);
        this.f.e = null;
    }
}
