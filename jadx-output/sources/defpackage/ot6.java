package defpackage;

import android.widget.CompoundButton;
import com.noinnion.android.greader.ui.setting.ClearCacheDialog;

/* loaded from: classes2.dex */
public class ot6 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ ClearCacheDialog a;

    public ot6(ClearCacheDialog clearCacheDialog) {
        this.a = clearCacheDialog;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ClearCacheDialog clearCacheDialog = this.a;
        if (!z) {
            clearCacheDialog.articlesCheck.setChecked(true);
            clearCacheDialog.imagesCheck.setChecked(true);
            clearCacheDialog.articlesCheck.setEnabled(true);
            clearCacheDialog.imagesCheck.setEnabled(true);
            clearCacheDialog.duplicatesCheck.setEnabled(true);
            return;
        }
        clearCacheDialog.articlesCheck.setChecked(false);
        clearCacheDialog.imagesCheck.setChecked(false);
        clearCacheDialog.duplicatesCheck.setChecked(false);
        clearCacheDialog.articlesCheck.setEnabled(false);
        clearCacheDialog.imagesCheck.setEnabled(false);
        clearCacheDialog.duplicatesCheck.setEnabled(false);
    }
}
