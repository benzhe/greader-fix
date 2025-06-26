package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class a93<FieldDescriptorType> extends b93<FieldDescriptorType, Object> {
    public a93(int i) {
        super(i, null);
    }

    @Override // defpackage.b93
    public final void c() {
        if (!this.h) {
            for (int i = 0; i < d(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryH = h(i);
                if (((m63) entryH.getKey()).n()) {
                    entryH.setValue(Collections.unmodifiableList((List) entryH.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : e()) {
                if (((m63) entry.getKey()).n()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.c();
    }
}
