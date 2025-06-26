package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Filterable;
import android.widget.ListAdapter;
import com.miguelcatalan.materialsearchview.MaterialSearchView;

/* loaded from: classes.dex */
public class km6 implements TextWatcher {
    public final /* synthetic */ MaterialSearchView e;

    public km6(MaterialSearchView materialSearchView) {
        this.e = materialSearchView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        MaterialSearchView materialSearchView = this.e;
        materialSearchView.r = charSequence;
        ListAdapter listAdapter = materialSearchView.u;
        if (listAdapter != null && (listAdapter instanceof Filterable)) {
            ((Filterable) listAdapter).getFilter().filter(charSequence, materialSearchView);
        }
        MaterialSearchView materialSearchView2 = this.e;
        materialSearchView2.r = materialSearchView2.l.getText();
        if (!TextUtils.isEmpty(r4)) {
            materialSearchView2.o.setVisibility(0);
            materialSearchView2.e(false);
        } else {
            materialSearchView2.o.setVisibility(8);
            materialSearchView2.e(true);
        }
        if (materialSearchView2.s != null && !TextUtils.equals(charSequence, materialSearchView2.q)) {
            materialSearchView2.s.a(charSequence.toString());
        }
        materialSearchView2.q = charSequence.toString();
    }
}
