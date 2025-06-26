package com.noinnion.android.greader.ui.setting;

import android.R;
import android.view.View;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.Utils;

/* loaded from: classes2.dex */
public class PrefRestoreDialog_ViewBinding implements Unbinder {
    public PrefRestoreDialog a;

    public PrefRestoreDialog_ViewBinding(PrefRestoreDialog prefRestoreDialog, View view) {
        this.a = prefRestoreDialog;
        prefRestoreDialog.mListView = (ListView) Utils.findRequiredViewAsType(view, R.id.list, "field 'mListView'", ListView.class);
        prefRestoreDialog.mEmptyView = Utils.findRequiredView(view, R.id.empty, "field 'mEmptyView'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PrefRestoreDialog prefRestoreDialog = this.a;
        if (prefRestoreDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        prefRestoreDialog.mListView = null;
        prefRestoreDialog.mEmptyView = null;
    }
}
