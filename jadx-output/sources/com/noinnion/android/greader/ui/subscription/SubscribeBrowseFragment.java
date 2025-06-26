package com.noinnion.android.greader.ui.subscription;

import android.graphics.PorterDuff;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.BundleItem;
import com.noinnion.android.reader.common.subscription.BundleUtils;
import defpackage.av6;
import defpackage.u7;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscribeBrowseFragment extends Fragment {
    public av6 f;

    @BindView(R.id.clear)
    public View vClearButton;

    @BindView(R.id.v_empty)
    public View vEmpty;

    @BindView(R.id.v_list_view)
    public ListView vListView;

    @BindView(R.id.query)
    public EditText vQueryText;
    public int e = 1;
    public CharSequence g = "";
    public final TextWatcher h = new a();

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SubscribeBrowseFragment subscribeBrowseFragment = SubscribeBrowseFragment.this;
            av6 av6Var = subscribeBrowseFragment.f;
            if (av6Var == null) {
                return;
            }
            subscribeBrowseFragment.g = charSequence;
            av6Var.getFilter().filter(charSequence);
            SubscribeBrowseFragment subscribeBrowseFragment2 = SubscribeBrowseFragment.this;
            subscribeBrowseFragment2.vClearButton.setVisibility(TextUtils.isEmpty(subscribeBrowseFragment2.g) ? 8 : 0);
        }
    }

    public class b extends AsyncTask<Void, Void, Void> {
        public List<BundleItem> a = new ArrayList();

        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            if (SubscribeBrowseFragment.this.getActivity() == null) {
                return null;
            }
            this.a = BundleUtils.parseBundles(SubscribeBrowseFragment.this.getActivity().getApplicationContext(), SubscribeBrowseFragment.this.e == 2 ? R.raw.google_news : R.raw.google_bundles);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            if (SubscribeBrowseFragment.this.getActivity() == null) {
                return;
            }
            av6 av6Var = SubscribeBrowseFragment.this.f;
            List<BundleItem> list = this.a;
            av6Var.f.clear();
            av6Var.f.addAll(list);
            av6Var.clear();
            av6Var.addAll(list);
            SubscribeBrowseFragment.this.f.getFilter().filter(SubscribeBrowseFragment.this.g);
            SubscribeBrowseFragment.this.f.notifyDataSetChanged();
            try {
                View viewFindViewById = SubscribeBrowseFragment.this.getView().findViewById(R.id.loading);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
                View viewFindViewById2 = SubscribeBrowseFragment.this.getView().findViewById(R.id.empty_message);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(8);
                }
            } catch (Exception unused) {
            }
            Objects.requireNonNull(SubscribeBrowseFragment.this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        av6 av6Var = new av6(getContext(), 0, new ArrayList());
        this.f = av6Var;
        this.vListView.setAdapter((ListAdapter) av6Var);
        new b(null).execute(new Void[0]);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getInt("browse_type", 1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws NoSuchMethodException, SecurityException {
        View viewInflate = layoutInflater.inflate(R.layout.subscribe_browse, viewGroup, false);
        ButterKnife.bind(this, viewInflate);
        this.vListView.setEmptyView(this.vEmpty);
        this.vListView.setTextFilterEnabled(true);
        this.vQueryText.getBackground().setColorFilter(u7.b(getContext(), R.color.gray_light), PorterDuff.Mode.SRC_ATOP);
        this.vQueryText.addTextChangedListener(this.h);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.vQueryText.removeTextChangedListener(this.h);
        super.onDestroy();
    }
}
