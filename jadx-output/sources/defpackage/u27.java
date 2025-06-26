package defpackage;

import android.database.Cursor;
import android.widget.Filter;
import java.util.Objects;

/* loaded from: classes2.dex */
public class u27 extends Filter {
    public a a;

    public interface a {
    }

    public u27(a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        Cursor cursor = (Cursor) obj;
        Objects.requireNonNull((t27) this.a);
        return cursor == null ? "" : cursor.toString();
    }

    @Override // android.widget.Filter
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursor = ((t27) this.a).f;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursor != null) {
            filterResults.count = cursor.getCount();
            filterResults.values = cursor;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        a aVar = this.a;
        Cursor cursor = ((t27) aVar).f;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((t27) aVar).changeCursor((Cursor) obj);
    }
}
