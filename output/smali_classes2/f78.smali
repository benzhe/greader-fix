.class public final Lf78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public e:B

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lf78;->e:B

    .line 4
    iput-object p2, p0, Lf78;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 4
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x384

    mul-long v0, v0, v2

    const-wide v2, 0x110bc5000L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1}, Lj78;->a(Ljava/io/DataInput;)Lj78;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lf78;->a(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 4
    invoke-static {p1}, Lf78;->c(Ljava/io/DataInput;)La58;

    move-result-object p0

    .line 5
    invoke-static {p1}, Lf78;->c(Ljava/io/DataInput;)La58;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Li78;

    invoke-direct {v2, v0, v1, p0, p1}, Li78;-><init>(JLa58;La58;)V

    return-object v2

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offsets must not be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 10
    new-array v2, p0, [J

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_4

    .line 11
    invoke-static {p1}, Lf78;->a(Ljava/io/DataInput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr p0, v0

    .line 12
    new-array v3, p0, [La58;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_5

    .line 13
    invoke-static {p1}, Lf78;->c(Ljava/io/DataInput;)La58;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 15
    new-array v4, p0, [J

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p0, :cond_6

    .line 16
    invoke-static {p1}, Lf78;->a(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr p0, v0

    .line 17
    new-array v5, p0, [La58;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_7

    .line 18
    invoke-static {p1}, Lf78;->c(Ljava/io/DataInput;)La58;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_7
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 20
    new-array v6, p0, [Lj78;

    :goto_4
    if-ge v1, p0, :cond_8

    .line 21
    invoke-static {p1}, Lj78;->a(Ljava/io/DataInput;)Lj78;

    move-result-object v0

    aput-object v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 22
    :cond_8
    new-instance p0, Lg78;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lg78;-><init>([J[La58;[J[La58;[Lj78;)V

    return-object p0
.end method

.method public static c(Ljava/io/DataInput;)La58;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, La58;->Q(I)La58;

    move-result-object p0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, La58;->Q(I)La58;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(JLjava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    const-wide v1, -0x110bc5000L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    const-wide v1, 0x26cb5db00L

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    const-wide/16 v1, 0x384

    .line 1
    rem-long v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide v3, 0x110bc5000L

    add-long/2addr p0, v3

    .line 2
    div-long/2addr p0, v1

    long-to-int p1, p0

    ushr-int/lit8 p0, p1, 0x10

    and-int/2addr p0, v0

    .line 3
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v0

    .line 4
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 p0, p1, 0xff

    .line 5
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 7
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    :goto_0
    return-void
.end method

.method public static e(La58;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p0, p0, La58;->f:I

    .line 2
    rem-int/lit16 v0, p0, 0x384

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    div-int/lit16 v0, p0, 0x384

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 3
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v0, v1, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf78;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lf78;->e:B

    .line 2
    invoke-static {v0, p1}, Lf78;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lf78;->f:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lf78;->e:B

    iget-object v1, p0, Lf78;->f:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 3
    check-cast v1, Lj78;

    invoke-virtual {v1, p1}, Lj78;->b(Ljava/io/DataOutput;)V

    goto/16 :goto_5

    .line 4
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    check-cast v1, Li78;

    .line 6
    iget-object v0, v1, Li78;->e:Lq48;

    iget-object v2, v1, Li78;->f:La58;

    invoke-virtual {v0, v2}, Lf58;->P(La58;)J

    move-result-wide v2

    .line 7
    invoke-static {v2, v3, p1}, Lf78;->d(JLjava/io/DataOutput;)V

    .line 8
    iget-object v0, v1, Li78;->f:La58;

    invoke-static {v0, p1}, Lf78;->e(La58;Ljava/io/DataOutput;)V

    .line 9
    iget-object v0, v1, Li78;->g:La58;

    invoke-static {v0, p1}, Lf78;->e(La58;Ljava/io/DataOutput;)V

    goto :goto_5

    .line 10
    :cond_2
    check-cast v1, Lg78;

    .line 11
    iget-object v0, v1, Lg78;->e:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 12
    iget-object v0, v1, Lg78;->e:[J

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-wide v5, v0, v4

    .line 13
    invoke-static {v5, v6, p1}, Lf78;->d(JLjava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, v1, Lg78;->f:[La58;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 15
    invoke-static {v5, p1}, Lf78;->e(La58;Ljava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, v1, Lg78;->g:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 17
    iget-object v0, v1, Lg78;->g:[J

    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    aget-wide v5, v0, v4

    .line 18
    invoke-static {v5, v6, p1}, Lf78;->d(JLjava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, v1, Lg78;->i:[La58;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    .line 20
    invoke-static {v5, p1}, Lf78;->e(La58;Ljava/io/DataOutput;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 21
    :cond_6
    iget-object v0, v1, Lg78;->j:[Lj78;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 22
    iget-object v0, v1, Lg78;->j:[Lj78;

    array-length v1, v0

    :goto_4
    if-ge v3, v1, :cond_7

    aget-object v2, v0, v3

    .line 23
    invoke-virtual {v2, p1}, Lj78;->b(Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method
