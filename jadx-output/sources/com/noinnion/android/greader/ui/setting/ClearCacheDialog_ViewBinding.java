package com.noinnion.android.greader.ui.setting;

import android.view.View;
import android.widget.CheckBox;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class ClearCacheDialog_ViewBinding implements Unbinder {
    public ClearCacheDialog a;

    public ClearCacheDialog_ViewBinding(ClearCacheDialog clearCacheDialog, View view) {
        this.a = clearCacheDialog;
        clearCacheDialog.completeCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.clear_complete, "field 'completeCheck'", CheckBox.class);
        clearCacheDialog.articlesCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.clear_articles, "field 'articlesCheck'", CheckBox.class);
        clearCacheDialog.imagesCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.clear_images, "field 'imagesCheck'", CheckBox.class);
        clearCacheDialog.duplicatesCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.clear_duplicates, "field 'duplicatesCheck'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ClearCacheDialog clearCacheDialog = this.a;
        if (clearCacheDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        clearCacheDialog.completeCheck = null;
        clearCacheDialog.articlesCheck = null;
        clearCacheDialog.imagesCheck = null;
        clearCacheDialog.duplicatesCheck = null;
    }
}
