package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import defpackage.a7;
import defpackage.gc5;
import defpackage.ha;
import defpackage.hc5;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int z = 0;
    public final Chip v;
    public final Chip w;
    public final MaterialButtonToggleGroup x;
    public final View.OnClickListener y;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TimePickerView timePickerView = TimePickerView.this;
            int i = TimePickerView.z;
            Objects.requireNonNull(timePickerView);
        }
    }

    public class b implements MaterialButtonToggleGroup.e {
        public b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.e
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            TimePickerView timePickerView = TimePickerView.this;
            int i2 = TimePickerView.z;
            Objects.requireNonNull(timePickerView);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        r();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            r();
        }
    }

    public final void r() {
        if (this.x.getVisibility() == 0) {
            a7 a7Var = new a7();
            a7Var.d(this);
            AtomicInteger atomicInteger = ha.a;
            char c = getLayoutDirection() == 0 ? (char) 2 : (char) 1;
            int i = R$id.material_clock_display;
            if (a7Var.c.containsKey(Integer.valueOf(i))) {
                a7.a aVar = a7Var.c.get(Integer.valueOf(i));
                switch (c) {
                    case 1:
                        a7.b bVar = aVar.d;
                        bVar.i = -1;
                        bVar.h = -1;
                        bVar.D = -1;
                        bVar.J = -1;
                        break;
                    case 2:
                        a7.b bVar2 = aVar.d;
                        bVar2.k = -1;
                        bVar2.j = -1;
                        bVar2.E = -1;
                        bVar2.L = -1;
                        break;
                    case 3:
                        a7.b bVar3 = aVar.d;
                        bVar3.m = -1;
                        bVar3.l = -1;
                        bVar3.F = -1;
                        bVar3.K = -1;
                        break;
                    case 4:
                        a7.b bVar4 = aVar.d;
                        bVar4.n = -1;
                        bVar4.o = -1;
                        bVar4.G = -1;
                        bVar4.M = -1;
                        break;
                    case 5:
                        aVar.d.p = -1;
                        break;
                    case 6:
                        a7.b bVar5 = aVar.d;
                        bVar5.q = -1;
                        bVar5.r = -1;
                        bVar5.I = -1;
                        bVar5.O = -1;
                        break;
                    case 7:
                        a7.b bVar6 = aVar.d;
                        bVar6.s = -1;
                        bVar6.t = -1;
                        bVar6.H = -1;
                        bVar6.N = -1;
                        break;
                    default:
                        throw new IllegalArgumentException("unknown constraint");
                }
            }
            a7Var.c(this, true);
            setConstraintSet(null);
            requestLayout();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a aVar = new a();
        this.y = aVar;
        LayoutInflater.from(context).inflate(R$layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.material_clock_period_toggle);
        this.x = materialButtonToggleGroup;
        materialButtonToggleGroup.h.add(new b());
        Chip chip = (Chip) findViewById(R$id.material_minute_tv);
        this.v = chip;
        Chip chip2 = (Chip) findViewById(R$id.material_hour_tv);
        this.w = chip2;
        hc5 hc5Var = new hc5(this, new GestureDetector(getContext(), new gc5(this)));
        chip.setOnTouchListener(hc5Var);
        chip2.setOnTouchListener(hc5Var);
        int i2 = R$id.selection_type;
        chip.setTag(i2, 12);
        chip2.setTag(i2, 10);
        chip.setOnClickListener(aVar);
        chip2.setOnClickListener(aVar);
    }
}
