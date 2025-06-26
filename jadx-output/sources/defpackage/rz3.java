package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class rz3<FieldDescriptorType> extends qz3<FieldDescriptorType, Object> {
    public rz3(int i) {
        super(i, null);
    }

    @Override // defpackage.qz3
    public final void i() {
        if (!this.h) {
            for (int i = 0; i < e(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryC = c(i);
                if (((mx3) entryC.getKey()).j()) {
                    entryC.setValue(Collections.unmodifiableList((List) entryC.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : f()) {
                if (((mx3) entry.getKey()).j()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.i();
    }
}
