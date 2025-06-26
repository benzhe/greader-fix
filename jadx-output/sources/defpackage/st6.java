package defpackage;

import android.view.View;
import com.noinnion.android.greader.ui.setting.PrefOfflineStorageDialog;

/* loaded from: classes2.dex */
public class st6 implements View.OnClickListener {
    public final /* synthetic */ PrefOfflineStorageDialog e;

    public st6(PrefOfflineStorageDialog prefOfflineStorageDialog) {
        this.e = prefOfflineStorageDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.e.d(view);
    }
}
