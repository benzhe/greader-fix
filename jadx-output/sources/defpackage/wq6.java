package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.noinnion.android.greader.ui.itemlist.ItemListFragment;

/* loaded from: classes2.dex */
public final /* synthetic */ class wq6 implements View.OnTouchListener {
    public final /* synthetic */ ItemListFragment e;

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.e.j = true;
        return false;
    }
}
