package defpackage;

import android.widget.RadioGroup;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;

/* loaded from: classes2.dex */
public final class wp6 implements RadioGroup.OnCheckedChangeListener {
    public final /* synthetic */ HomeBaseActivity a;

    public wp6(HomeBaseActivity homeBaseActivity, hw6 hw6Var) {
        this.a = homeBaseActivity;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (i == R.id.sorting_newest) {
            HomeBaseActivity.z(this.a, 1);
        } else if (i == R.id.sorting_oldest) {
            HomeBaseActivity.z(this.a, 2);
        }
    }
}
