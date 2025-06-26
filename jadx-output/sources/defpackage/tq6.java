package defpackage;

import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.item.ItemFragment;

/* loaded from: classes2.dex */
public final class tq6 extends jm7 implements pl7<Throwable, yj7> {
    public final /* synthetic */ ItemFragment e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tq6(ItemFragment itemFragment) {
        super(1);
        this.e = itemFragment;
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        im7.e(th2, "it");
        th2.printStackTrace();
        n56.X1(this.e.getActivity(), this.e.getText(R.string.error_general));
        return yj7.a;
    }
}
