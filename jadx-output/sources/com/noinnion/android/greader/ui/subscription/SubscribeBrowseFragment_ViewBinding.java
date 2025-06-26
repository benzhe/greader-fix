package com.noinnion.android.greader.ui.subscription;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.BundleItem;
import defpackage.qb;
import defpackage.wb;
import defpackage.xb;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscribeBrowseFragment_ViewBinding implements Unbinder {
    public SubscribeBrowseFragment a;
    public View b;
    public View c;

    public class a implements AdapterView.OnItemClickListener {
        public final /* synthetic */ SubscribeBrowseFragment e;

        public a(SubscribeBrowseFragment_ViewBinding subscribeBrowseFragment_ViewBinding, SubscribeBrowseFragment subscribeBrowseFragment) {
            this.e = subscribeBrowseFragment;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SubscribeBrowseFragment subscribeBrowseFragment = this.e;
            Objects.requireNonNull(subscribeBrowseFragment);
            BundleItem bundleItem = (BundleItem) view.getTag();
            int i2 = subscribeBrowseFragment.e == 2 ? R.raw.google_news : 0;
            wb fragmentManager = subscribeBrowseFragment.getFragmentManager();
            String str = bundleItem.uid;
            String str2 = bundleItem.title;
            try {
                SubscribeBundleDialog subscribeBundleDialog = new SubscribeBundleDialog();
                Bundle bundle = new Bundle();
                bundle.putString("itemId", str);
                bundle.putString("title", str2);
                bundle.putInt("url", i2);
                subscribeBundleDialog.setArguments(bundle);
                xb xbVar = (xb) fragmentManager;
                Objects.requireNonNull(xbVar);
                qb qbVar = new qb(xbVar);
                qbVar.f(0, subscribeBundleDialog, "fragment_subscribe_bundle", 1);
                qbVar.d();
            } catch (Exception unused) {
            }
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ SubscribeBrowseFragment e;

        public b(SubscribeBrowseFragment_ViewBinding subscribeBrowseFragment_ViewBinding, SubscribeBrowseFragment subscribeBrowseFragment) {
            this.e = subscribeBrowseFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.vQueryText.setText("");
            view.setVisibility(8);
        }
    }

    public SubscribeBrowseFragment_ViewBinding(SubscribeBrowseFragment subscribeBrowseFragment, View view) {
        this.a = subscribeBrowseFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.v_list_view, "field 'vListView' and method 'onListItemClick'");
        subscribeBrowseFragment.vListView = (ListView) Utils.castView(viewFindRequiredView, R.id.v_list_view, "field 'vListView'", ListView.class);
        this.b = viewFindRequiredView;
        ((AdapterView) viewFindRequiredView).setOnItemClickListener(new a(this, subscribeBrowseFragment));
        subscribeBrowseFragment.vEmpty = Utils.findRequiredView(view, R.id.v_empty, "field 'vEmpty'");
        subscribeBrowseFragment.vQueryText = (EditText) Utils.findRequiredViewAsType(view, R.id.query, "field 'vQueryText'", EditText.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.clear, "field 'vClearButton' and method 'clearQuery'");
        subscribeBrowseFragment.vClearButton = viewFindRequiredView2;
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, subscribeBrowseFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscribeBrowseFragment subscribeBrowseFragment = this.a;
        if (subscribeBrowseFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscribeBrowseFragment.vListView = null;
        subscribeBrowseFragment.vEmpty = null;
        subscribeBrowseFragment.vQueryText = null;
        subscribeBrowseFragment.vClearButton = null;
        ((AdapterView) this.b).setOnItemClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
    }
}
