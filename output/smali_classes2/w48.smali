.class public final Lw48;
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
    iput-byte p1, p0, Lw48;->e:B

    .line 4
    iput-object p2, p0, Lw48;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    if-eq p0, v0, :cond_b

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    invoke-static {p1}, La58;->S(Ljava/io/DataInput;)La58;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lb58;->h:Ljava/util/regex/Pattern;

    .line 4
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Z"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "UTC"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "GMT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "UT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "UTC+"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-string v0, "GMT+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UTC-"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "GMT-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "UT+"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UT-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0, v1}, Lb58;->O(Ljava/lang/String;Z)Lb58;

    move-result-object p0

    goto/16 :goto_5

    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La58;->O(Ljava/lang/String;)La58;

    move-result-object p0

    .line 12
    iget v0, p0, La58;->f:I

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lb58;

    invoke-virtual {p0}, La58;->L()Lk78;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Lb58;

    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 15
    iget-object v1, p0, La58;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, La58;->L()Lk78;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    :goto_1
    move-object p0, v0

    goto :goto_5

    :cond_5
    :goto_2
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La58;->O(Ljava/lang/String;)La58;

    move-result-object v0

    .line 18
    iget v2, v0, La58;->f:I

    if-nez v2, :cond_6

    .line 19
    new-instance v2, Lb58;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, La58;->L()Lk78;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    goto :goto_3

    .line 20
    :cond_6
    new-instance v2, Lb58;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p0, v0, La58;->g:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, La58;->L()Lk78;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    :goto_3
    move-object p0, v2

    goto :goto_5

    .line 23
    :cond_7
    :goto_4
    new-instance p1, Lb58;

    sget-object v0, La58;->j:La58;

    invoke-virtual {v0}, La58;->L()Lk78;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lb58;-><init>(Ljava/lang/String;Lk78;)V

    move-object p0, p1

    :goto_5
    return-object p0

    .line 24
    :cond_8
    new-instance p1, Ll48;

    const-string v0, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-static {v0, p0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :pswitch_2
    invoke-static {p1}, Lq48;->f0(Ljava/io/DataInput;)Lq48;

    move-result-object p0

    .line 26
    invoke-static {p1}, La58;->S(Ljava/io/DataInput;)La58;

    move-result-object v0

    .line 27
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 28
    invoke-static {v1, p1}, Lw48;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Lz48;

    const-string v1, "localDateTime"

    .line 30
    invoke-static {p0, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "offset"

    .line 31
    invoke-static {v0, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "zone"

    .line 32
    invoke-static {p1, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    instance-of v1, p1, La58;

    if-eqz v1, :cond_a

    invoke-virtual {v0, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZoneId must match ZoneOffset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_a
    :goto_6
    new-instance v1, Lc58;

    invoke-direct {v1, p0, v0, p1}, Lc58;-><init>(Lq48;La58;Lz48;)V

    return-object v1

    .line 36
    :pswitch_3
    invoke-static {p1}, Lr48;->U(Ljava/io/DataInput;)Lr48;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_4
    invoke-static {p1}, Lq48;->f0(Ljava/io/DataInput;)Lq48;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_5
    sget-object p0, Lp48;->h:Lp48;

    .line 39
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 40
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 41
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 42
    invoke-static {p0, v0, p1}, Lp48;->c0(III)Lp48;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_6
    sget-object p0, Lo48;->g:Lo48;

    .line 44
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 46
    invoke-static {v0, v1, p0, p1}, Lo48;->O(JJ)Lo48;

    move-result-object p0

    return-object p0

    .line 47
    :pswitch_7
    sget-object p0, Ln48;->g:Ln48;

    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 49
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    int-to-long p0, p0

    .line 50
    invoke-static {v0, v1, p0, p1}, Ln48;->t(JJ)Ln48;

    move-result-object p0

    return-object p0

    .line 51
    :pswitch_8
    sget p0, Lu48;->g:I

    .line 52
    invoke-static {p1}, Lq48;->f0(Ljava/io/DataInput;)Lq48;

    move-result-object p0

    .line 53
    invoke-static {p1}, La58;->S(Ljava/io/DataInput;)La58;

    move-result-object p1

    .line 54
    new-instance v0, Lu48;

    invoke-direct {v0, p0, p1}, Lu48;-><init>(Lq48;La58;)V

    return-object v0

    .line 55
    :pswitch_9
    sget p0, Ly48;->g:I

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 58
    invoke-static {p0, p1}, Ly48;->K(II)Ly48;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_a
    sget p0, Lx48;->f:I

    .line 60
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lx48;->L(I)Lx48;

    move-result-object p0

    return-object p0

    .line 61
    :pswitch_b
    sget p0, Lv48;->g:I

    .line 62
    invoke-static {p1}, Lr48;->U(Ljava/io/DataInput;)Lr48;

    move-result-object p0

    .line 63
    invoke-static {p1}, La58;->S(Ljava/io/DataInput;)La58;

    move-result-object p1

    .line 64
    new-instance v0, Lv48;

    invoke-direct {v0, p0, p1}, Lv48;-><init>(Lr48;La58;)V

    return-object v0

    .line 65
    :cond_b
    sget p0, Lt48;->g:I

    .line 66
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 68
    invoke-static {p0, p1}, Lt48;->K(II)Lt48;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw48;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lw48;->e:B

    .line 2
    invoke-static {v0, p1}, Lw48;->a(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw48;->f:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lw48;->e:B

    iget-object v1, p0, Lw48;->f:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    check-cast v1, La58;

    invoke-virtual {v1, p1}, La58;->T(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    check-cast v1, Lb58;

    .line 6
    iget-object v0, v1, Lb58;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    check-cast v1, Lc58;

    .line 8
    iget-object v0, v1, Lc58;->e:Lq48;

    invoke-virtual {v0, p1}, Lq48;->j0(Ljava/io/DataOutput;)V

    .line 9
    iget-object v0, v1, Lc58;->f:La58;

    invoke-virtual {v0, p1}, La58;->T(Ljava/io/DataOutput;)V

    .line 10
    iget-object v0, v1, Lc58;->g:Lz48;

    invoke-virtual {v0, p1}, Lz48;->N(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    check-cast v1, Lr48;

    invoke-virtual {v1, p1}, Lr48;->a0(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    check-cast v1, Lq48;

    invoke-virtual {v1, p1}, Lq48;->j0(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 13
    :pswitch_5
    check-cast v1, Lp48;

    .line 14
    iget v0, v1, Lp48;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 15
    iget-short v0, v1, Lp48;->f:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 16
    iget-short v0, v1, Lp48;->g:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 17
    :pswitch_6
    check-cast v1, Lo48;

    .line 18
    iget-wide v2, v1, Lo48;->e:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 19
    iget v0, v1, Lo48;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 20
    :pswitch_7
    check-cast v1, Ln48;

    .line 21
    iget-wide v2, v1, Ln48;->e:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 22
    iget v0, v1, Ln48;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 23
    :pswitch_8
    check-cast v1, Lu48;

    .line 24
    iget-object v0, v1, Lu48;->e:Lq48;

    invoke-virtual {v0, p1}, Lq48;->j0(Ljava/io/DataOutput;)V

    .line 25
    iget-object v0, v1, Lu48;->f:La58;

    invoke-virtual {v0, p1}, La58;->T(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 26
    :pswitch_9
    check-cast v1, Ly48;

    .line 27
    iget v0, v1, Ly48;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 28
    iget v0, v1, Ly48;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 29
    :pswitch_a
    check-cast v1, Lx48;

    .line 30
    iget v0, v1, Lx48;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 31
    :pswitch_b
    check-cast v1, Lv48;

    .line 32
    iget-object v0, v1, Lv48;->e:Lr48;

    invoke-virtual {v0, p1}, Lr48;->a0(Ljava/io/DataOutput;)V

    .line 33
    iget-object v0, v1, Lv48;->f:La58;

    invoke-virtual {v0, p1}, La58;->T(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 34
    :cond_0
    check-cast v1, Lt48;

    .line 35
    iget v0, v1, Lt48;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 36
    iget v0, v1, Lt48;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
