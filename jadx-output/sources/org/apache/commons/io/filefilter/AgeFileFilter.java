package org.apache.commons.io.filefilter;

import defpackage.jo;
import java.io.File;
import java.io.Serializable;
import java.util.Date;
import org.apache.commons.io.FileUtils;

/* loaded from: classes2.dex */
public class AgeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -2132740084016138541L;
    private final boolean acceptOlder;
    private final long cutoff;

    public AgeFileFilter(long j) {
        this(j, true);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        boolean zIsFileNewer = FileUtils.isFileNewer(file, this.cutoff);
        return this.acceptOlder ? !zIsFileNewer : zIsFileNewer;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        String str = this.acceptOlder ? "<=" : ">";
        StringBuilder sb = new StringBuilder();
        jo.H(sb, super.toString(), "(", str);
        return jo.r(sb, this.cutoff, ")");
    }

    public AgeFileFilter(long j, boolean z) {
        this.acceptOlder = z;
        this.cutoff = j;
    }

    public AgeFileFilter(Date date) {
        this(date, true);
    }

    public AgeFileFilter(Date date, boolean z) {
        this(date.getTime(), z);
    }

    public AgeFileFilter(File file) {
        this(file, true);
    }

    public AgeFileFilter(File file, boolean z) {
        this(file.lastModified(), z);
    }
}
