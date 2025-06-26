package com.noinnion.android.greader.ui.setting;

import android.view.View;
import android.widget.RadioButton;
import android.widget.Spinner;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class PrefOfflineStorageDialog_ViewBinding implements Unbinder {
    public PrefOfflineStorageDialog a;

    public PrefOfflineStorageDialog_ViewBinding(PrefOfflineStorageDialog prefOfflineStorageDialog, View view) {
        this.a = prefOfflineStorageDialog;
        prefOfflineStorageDialog.storageSpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.storages, "field 'storageSpinner'", Spinner.class);
        prefOfflineStorageDialog.autoRadio = (RadioButton) Utils.findRequiredViewAsType(view, R.id.radio_auto, "field 'autoRadio'", RadioButton.class);
        prefOfflineStorageDialog.manualRadio = (RadioButton) Utils.findRequiredViewAsType(view, R.id.radio_manual, "field 'manualRadio'", RadioButton.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PrefOfflineStorageDialog prefOfflineStorageDialog = this.a;
        if (prefOfflineStorageDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        prefOfflineStorageDialog.storageSpinner = null;
        prefOfflineStorageDialog.autoRadio = null;
        prefOfflineStorageDialog.manualRadio = null;
    }
}
