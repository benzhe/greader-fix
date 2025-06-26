package org.apache.commons.text.io;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;
import org.apache.commons.text.TextStringBuilder;
import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

/* loaded from: classes2.dex */
public class StringSubstitutorReader extends FilterReader {
    private static final int EOS = -1;
    private final TextStringBuilder buffer;
    private boolean eos;
    private final StringMatcher prefixEscapeMatcher;
    private final char[] read1CharBuffer;
    private final StringSubstitutor stringSubstitutor;
    private int toDrain;

    public StringSubstitutorReader(Reader reader, StringSubstitutor stringSubstitutor) {
        super(reader);
        this.buffer = new TextStringBuilder();
        this.read1CharBuffer = new char[]{0};
        Objects.requireNonNull(stringSubstitutor);
        this.stringSubstitutor = stringSubstitutor;
        this.prefixEscapeMatcher = StringMatcherFactory.INSTANCE.charMatcher(stringSubstitutor.getEscapeChar()).andThen(stringSubstitutor.getVariablePrefixMatcher());
    }

    private int buffer(int i) throws IOException {
        int from = this.buffer.readFrom(((FilterReader) this).in, i);
        this.eos = from == -1;
        return from;
    }

    private int bufferOrDrainOnEos(int i, char[] cArr, int i2, int i3) throws IOException {
        return drainOnEos(buffer(i), cArr, i2, i3);
    }

    private int drain(char[] cArr, int i, int i2) {
        int iDrainChars = this.buffer.drainChars(0, Math.min(this.buffer.length(), i2), cArr, i);
        this.toDrain -= iDrainChars;
        if (this.buffer.isEmpty() || this.toDrain == 0) {
            this.toDrain = 0;
        }
        return iDrainChars;
    }

    private int drainOnEos(int i, char[] cArr, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (!this.buffer.isNotEmpty()) {
            return -1;
        }
        this.toDrain = this.buffer.size();
        return drain(cArr, i2, i3);
    }

    private boolean isBufferMatchAt(StringMatcher stringMatcher, int i) {
        return stringMatcher.isMatch(this.buffer, i) == stringMatcher.size();
    }

    private boolean isDraining() {
        return this.toDrain > 0;
    }

    private int readCount(int i, int i2) {
        int size = this.buffer.size() - i2;
        if (size >= i) {
            return 0;
        }
        return i - size;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i;
        do {
            i = read(this.read1CharBuffer, 0, 1);
            if (i == -1) {
                return -1;
            }
        } while (i < 1);
        return this.read1CharBuffer[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bd, code lost:
    
        if (r2 > 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00bf, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c0, code lost:
    
        r12 = r9.stringSubstitutor.getVariableSuffixMatcher();
        r4 = java.lang.Math.max(r4, r12.size());
        buffer(readCount(r4, r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d7, code lost:
    
        if (r9.eos == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d9, code lost:
    
        r9.stringSubstitutor.replaceIn(r9.buffer);
        r9.toDrain = r9.buffer.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ee, code lost:
    
        return (r3 + drain(r10, r3, r2)) - r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f3, code lost:
    
        if (isBufferMatchAt(r12, r7) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f5, code lost:
    
        r6 = r6 - 1;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f9, code lost:
    
        if (r6 != 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0100, code lost:
    
        if (isBufferMatchAt(r5, r7) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0102, code lost:
    
        r6 = r6 + 1;
        r8 = r5.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0108, code lost:
    
        r7 = r8 + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0111, code lost:
    
        if (isBufferMatchAt(r9.prefixEscapeMatcher, r7) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0113, code lost:
    
        r6 = r6 + 1;
        r8 = r9.prefixEscapeMatcher.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x011c, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0126, code lost:
    
        if (buffer(readCount(r4, r7)) != (-1)) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x012e, code lost:
    
        if (r7 < r9.buffer.size()) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0130, code lost:
    
        r1 = java.lang.Math.max(0, r9.buffer.size() - r7);
        r4 = r9.stringSubstitutor;
        r5 = r9.buffer;
        r4.replaceIn(r5, 0, java.lang.Math.min(r5.size(), r7 + 1));
        r12 = r9.buffer.size() - r1;
        r0 = java.lang.Math.min(r2, r12);
        r9.toDrain = r12;
        drain(r10, r3, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015e, code lost:
    
        return (r3 - r11) + r0;
     */
    @Override // java.io.FilterReader, java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(char[] r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.io.StringSubstitutorReader.read(char[], int, int):int");
    }
}
