package com.noinnion.android.greader.ui.subscription;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class SubEditDialog_ViewBinding implements Unbinder {
    public SubEditDialog a;

    public SubEditDialog_ViewBinding(SubEditDialog subEditDialog, View view) {
        this.a = subEditDialog;
        subEditDialog.feedUrlText = (TextView) Utils.findRequiredViewAsType(view, R.id.feed_url, "field 'feedUrlText'", TextView.class);
        subEditDialog.nameText = (EditText) Utils.findRequiredViewAsType(view, R.id.name, "field 'nameText'", EditText.class);
        subEditDialog.excludeCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.sync_excluded, "field 'excludeCheck'", CheckBox.class);
        subEditDialog.hideCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.hide, "field 'hideCheck'", CheckBox.class);
        subEditDialog.notificationCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.notification, "field 'notificationCheck'", CheckBox.class);
        subEditDialog.imageFitCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.image_fit, "field 'imageFitCheck'", CheckBox.class);
        subEditDialog.javascriptCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.javascript, "field 'javascriptCheck'", CheckBox.class);
        subEditDialog.offlineSpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.offline_spinner, "field 'offlineSpinner'", Spinner.class);
        subEditDialog.displaySpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.display_spinner, "field 'displaySpinner'", Spinner.class);
        subEditDialog.loadLinkSpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.load_link_spinner, "field 'loadLinkSpinner'", Spinner.class);
        subEditDialog.readingModeSpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.reading_mode_spinner, "field 'readingModeSpinner'", Spinner.class);
        subEditDialog.userAgentSpinner = (Spinner) Utils.findRequiredViewAsType(view, R.id.user_agent_spinner, "field 'userAgentSpinner'", Spinner.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubEditDialog subEditDialog = this.a;
        if (subEditDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subEditDialog.feedUrlText = null;
        subEditDialog.nameText = null;
        subEditDialog.excludeCheck = null;
        subEditDialog.hideCheck = null;
        subEditDialog.notificationCheck = null;
        subEditDialog.imageFitCheck = null;
        subEditDialog.javascriptCheck = null;
        subEditDialog.offlineSpinner = null;
        subEditDialog.displaySpinner = null;
        subEditDialog.loadLinkSpinner = null;
        subEditDialog.readingModeSpinner = null;
        subEditDialog.userAgentSpinner = null;
    }
}
