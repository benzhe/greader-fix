package com.noinnion.android.greader.ui.itemlist;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class SearchFilterDialog_ViewBinding implements Unbinder {
    public SearchFilterDialog a;

    public SearchFilterDialog_ViewBinding(SearchFilterDialog searchFilterDialog, View view) {
        this.a = searchFilterDialog;
        searchFilterDialog.mLocationName = (TextView) Utils.findRequiredViewAsType(view, R.id.location_name, "field 'mLocationName'", TextView.class);
        searchFilterDialog.mLocationIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.location_icon, "field 'mLocationIcon'", ImageView.class);
        searchFilterDialog.mLabelText = (EditText) Utils.findRequiredViewAsType(view, R.id.label, "field 'mLabelText'", EditText.class);
        searchFilterDialog.mQueryText = (EditText) Utils.findRequiredViewAsType(view, R.id.query, "field 'mQueryText'", EditText.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SearchFilterDialog searchFilterDialog = this.a;
        if (searchFilterDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        searchFilterDialog.mLocationName = null;
        searchFilterDialog.mLocationIcon = null;
        searchFilterDialog.mLabelText = null;
        searchFilterDialog.mQueryText = null;
    }
}
