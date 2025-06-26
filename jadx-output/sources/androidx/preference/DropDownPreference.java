package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    public final Context w;
    public final ArrayAdapter x;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.dropdownPreferenceStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.w = context;
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_dropdown_item);
        this.x = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.s;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                this.x.add(charSequence.toString());
            }
        }
    }
}
