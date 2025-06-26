package defpackage;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class z65 extends BaseAdapter {
    public static final int h;
    public final Calendar e;
    public final int f;
    public final int g;

    static {
        h = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public z65() {
        Calendar calendarD = p75.d();
        this.e = calendarD;
        this.f = calendarD.getMaximum(7);
        this.g = calendarD.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        int i2 = this.f;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.g;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        Calendar calendar = this.e;
        int i2 = i + this.g;
        int i3 = this.f;
        if (i2 > i3) {
            i2 -= i3;
        }
        calendar.set(7, i2);
        textView.setText(this.e.getDisplayName(7, h, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R$string.mtrl_picker_day_of_week_column_header), this.e.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
