package defpackage;

import android.view.View;
import android.widget.AdapterView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.locale.LocaleEditActivity;

/* loaded from: classes2.dex */
public class rr6 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ LocaleEditActivity e;

    public rr6(LocaleEditActivity localeEditActivity) {
        this.e = localeEditActivity;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 4) {
            this.e.findViewById(R.id.settings).setVisibility(0);
            this.e.z.setVisibility(8);
        } else {
            this.e.findViewById(R.id.settings).setVisibility(8);
            this.e.z.setVisibility(0);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
