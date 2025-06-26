package defpackage;

import android.R;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.noinnion.android.reader.R$array;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.R$layout;

/* loaded from: classes2.dex */
public class tw6 extends p65 implements View.OnClickListener {
    public b e;
    public ImageView f;
    public ImageView g;
    public ImageView h;
    public Spinner i;
    public int j;
    public int k;
    public int l;

    public class a implements AdapterView.OnItemSelectedListener {
        public a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            tw6 tw6Var = tw6.this;
            tw6Var.j = i;
            b bVar = tw6Var.e;
            if (bVar != null) {
                bVar.a(i, tw6Var.k, tw6Var.l);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public interface b {
        void a(int i, int i2, int i3);
    }

    public tw6(int i, int i2, int i3, b bVar) {
        this.e = bVar;
        this.j = i;
        this.k = i2;
        this.l = i3;
    }

    public final void e() {
        this.f.setSelected(this.l == 1);
        this.g.setSelected(this.l == 2);
        this.h.setSelected(this.l == 3);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getActivity(), R$array.font_labels, R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        this.i.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        this.i.setSelection(this.j);
        this.i.setOnItemSelectedListener(new a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.font_size_down) {
            this.k--;
            n56.X1(getActivity(), String.valueOf(this.k));
            b bVar = this.e;
            if (bVar != null) {
                bVar.a(this.j, this.k, this.l);
                return;
            }
            return;
        }
        if (id == R$id.font_size_up) {
            this.k++;
            n56.X1(getActivity(), String.valueOf(this.k));
            b bVar2 = this.e;
            if (bVar2 != null) {
                bVar2.a(this.j, this.k, this.l);
                return;
            }
            return;
        }
        if (id == R$id.text_align_left) {
            this.l = 1;
            e();
            b bVar3 = this.e;
            if (bVar3 != null) {
                bVar3.a(this.j, this.k, this.l);
                return;
            }
            return;
        }
        if (id == R$id.text_align_right) {
            this.l = 2;
            e();
            b bVar4 = this.e;
            if (bVar4 != null) {
                bVar4.a(this.j, this.k, this.l);
                return;
            }
            return;
        }
        if (id == R$id.text_align_justify) {
            this.l = 3;
            e();
            b bVar5 = this.e;
            if (bVar5 != null) {
                bVar5.a(this.j, this.k, this.l);
            }
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_fonts, viewGroup);
        this.f = (ImageView) viewInflate.findViewById(R$id.text_align_left);
        this.g = (ImageView) viewInflate.findViewById(R$id.text_align_right);
        this.h = (ImageView) viewInflate.findViewById(R$id.text_align_justify);
        this.i = (Spinner) viewInflate.findViewById(R$id.fonts_spinner);
        ((ImageView) viewInflate.findViewById(R$id.font_size_down)).setOnClickListener(this);
        ((ImageView) viewInflate.findViewById(R$id.font_size_up)).setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
        e();
        return viewInflate;
    }
}
