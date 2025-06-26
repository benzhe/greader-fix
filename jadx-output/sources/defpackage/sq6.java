package defpackage;

import com.noinnion.android.greader.ui.item.ItemFragment;
import com.noinnion.android.reader.ui.widget.ItemWebView;

/* loaded from: classes2.dex */
public final class sq6 extends jm7 implements pl7<ap6, yj7> {
    public final /* synthetic */ ItemFragment e;
    public final /* synthetic */ ItemWebView f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sq6(ItemFragment itemFragment, ItemWebView itemWebView) {
        super(1);
        this.e = itemFragment;
        this.f = itemWebView;
    }

    @Override // defpackage.pl7
    public yj7 invoke(ap6 ap6Var) {
        this.e.v(this.f, ap6Var);
        return yj7.a;
    }
}
