package defpackage;

import android.view.View;
import com.noinnion.android.greader.ui.locale.LocaleEditActivity;

/* loaded from: classes2.dex */
public class qr6 implements View.OnClickListener {
    public final /* synthetic */ LocaleEditActivity e;

    public qr6(LocaleEditActivity localeEditActivity) {
        this.e = localeEditActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.e.finish();
    }
}
