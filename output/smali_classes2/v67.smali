.class public Lv67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv67$c;,
        Lv67$b;
    }
.end annotation


# instance fields
.field public final e:Lc67;

.field public final f:Ljava/util/zip/CRC32;

.field public final g:Lv67$b;

.field public final h:[B

.field public i:I

.field public j:I

.field public k:Ljava/util/zip/Inflater;

.field public l:Lv67$c;

.field public m:Z

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc67;

    invoke-direct {v0}, Lc67;-><init>()V

    iput-object v0, p0, Lv67;->e:Lc67;

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lv67;->f:Ljava/util/zip/CRC32;

    .line 4
    new-instance v0, Lv67$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv67$b;-><init>(Lv67;Lv67$a;)V

    iput-object v0, p0, Lv67;->g:Lv67$b;

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lv67;->h:[B

    .line 6
    sget-object v0, Lv67$c;->e:Lv67$c;

    iput-object v0, p0, Lv67;->l:Lv67$c;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lv67;->m:Z

    .line 8
    iput v0, p0, Lv67;->q:I

    .line 9
    iput v0, p0, Lv67;->r:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lv67;->s:Z

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v2, Lv67$c;->n:Lv67$c;

    sget-object v3, Lv67$c;->l:Lv67$c;

    sget-object v4, Lv67$c;->m:Lv67$c;

    sget-object v5, Lv67$c;->h:Lv67$c;

    iget-boolean v6, v1, Lv67;->m:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const-string v8, "GzipInflatingBuffer is closed"

    invoke-static {v6, v8}, Lc50;->G(ZLjava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0xa

    if-eqz v8, :cond_16

    sub-int v11, p3, v9

    if-lez v11, :cond_16

    .line 2
    iget-object v8, v1, Lv67;->l:Lv67$c;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v12, "inflater is null"

    const/4 v13, 0x2

    const/16 v14, 0x8

    packed-switch v8, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Invalid state: "

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lv67;->l:Lv67$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lv67;->b()Z

    move-result v8

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8, v12}, Lc50;->G(ZLjava/lang/Object;)V

    .line 6
    iget v8, v1, Lv67;->i:I

    iget v10, v1, Lv67;->j:I

    if-ne v8, v10, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const-string v10, "inflaterInput has unconsumed bytes"

    invoke-static {v8, v10}, Lc50;->G(ZLjava/lang/Object;)V

    .line 7
    iget-object v8, v1, Lv67;->e:Lc67;

    .line 8
    iget v8, v8, Lc67;->e:I

    const/16 v10, 0x200

    .line 9
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    iput v6, v1, Lv67;->i:I

    .line 11
    iput v8, v1, Lv67;->j:I

    .line 12
    iget-object v10, v1, Lv67;->e:Lc67;

    iget-object v11, v1, Lv67;->h:[B

    invoke-virtual {v10, v11, v6, v8}, Lc67;->W([BII)V

    .line 13
    iget-object v10, v1, Lv67;->k:Ljava/util/zip/Inflater;

    iget-object v11, v1, Lv67;->h:[B

    iget v12, v1, Lv67;->i:I

    invoke-virtual {v10, v11, v12, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 14
    iput-object v3, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    :pswitch_2
    add-int v8, p2, v9

    .line 15
    iget-object v10, v1, Lv67;->k:Ljava/util/zip/Inflater;

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10, v12}, Lc50;->G(ZLjava/lang/Object;)V

    .line 16
    :try_start_0
    iget-object v10, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v10}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v10

    .line 17
    iget-object v12, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v12, v0, v8, v11}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v11

    .line 18
    iget-object v12, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v12}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v12

    sub-int/2addr v12, v10

    .line 19
    iget v10, v1, Lv67;->q:I

    add-int/2addr v10, v12

    iput v10, v1, Lv67;->q:I

    .line 20
    iget v10, v1, Lv67;->r:I

    add-int/2addr v10, v12

    iput v10, v1, Lv67;->r:I

    .line 21
    iget v10, v1, Lv67;->i:I

    add-int/2addr v10, v12

    iput v10, v1, Lv67;->i:I

    .line 22
    iget-object v10, v1, Lv67;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v10, v0, v8, v11}, Ljava/util/zip/CRC32;->update([BII)V

    .line 23
    iget-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 24
    iget-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    iput-wide v12, v1, Lv67;->p:J

    .line 25
    iput-object v2, v1, Lv67;->l:Lv67$c;

    goto :goto_4

    .line 26
    :cond_4
    iget-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 27
    iput-object v4, v1, Lv67;->l:Lv67$c;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    add-int/2addr v9, v11

    .line 28
    iget-object v8, v1, Lv67;->l:Lv67$c;

    if-ne v8, v2, :cond_13

    .line 29
    invoke-virtual/range {p0 .. p0}, Lv67;->b()Z

    move-result v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 30
    new-instance v2, Ljava/util/zip/DataFormatException;

    const-string v3, "Inflater data format exception: "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    :pswitch_3
    iget-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    if-nez v8, :cond_6

    .line 32
    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v8, v1, Lv67;->k:Ljava/util/zip/Inflater;

    goto :goto_5

    .line 33
    :cond_6
    invoke-virtual {v8}, Ljava/util/zip/Inflater;->reset()V

    .line 34
    :goto_5
    iget-object v8, v1, Lv67;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 35
    iget v8, v1, Lv67;->j:I

    iget v10, v1, Lv67;->i:I

    sub-int/2addr v8, v10

    if-lez v8, :cond_7

    .line 36
    iget-object v11, v1, Lv67;->k:Ljava/util/zip/Inflater;

    iget-object v12, v1, Lv67;->h:[B

    invoke-virtual {v11, v12, v10, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 37
    iput-object v3, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 38
    :cond_7
    iput-object v4, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 39
    :pswitch_4
    sget-object v8, Lv67$c;->k:Lv67$c;

    iget v10, v1, Lv67;->n:I

    and-int/2addr v10, v13

    if-eq v10, v13, :cond_8

    .line 40
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 41
    :cond_8
    iget-object v10, v1, Lv67;->g:Lv67$b;

    invoke-static {v10}, Lv67$b;->c(Lv67$b;)I

    move-result v10

    if-ge v10, v13, :cond_9

    goto/16 :goto_6

    .line 42
    :cond_9
    iget-object v10, v1, Lv67;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v11, v10

    const v10, 0xffff

    and-int/2addr v10, v11

    .line 43
    iget-object v11, v1, Lv67;->g:Lv67$b;

    .line 44
    invoke-virtual {v11}, Lv67$b;->e()I

    move-result v11

    if-ne v10, v11, :cond_a

    .line 45
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 46
    :cond_a
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Corrupt GZIP header"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_5
    sget-object v8, Lv67$c;->j:Lv67$c;

    iget v10, v1, Lv67;->n:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eq v10, v11, :cond_b

    .line 48
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 49
    :cond_b
    iget-object v10, v1, Lv67;->g:Lv67$b;

    invoke-static {v10}, Lv67$b;->b(Lv67$b;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_6

    .line 50
    :cond_c
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 51
    :pswitch_6
    sget-object v8, Lv67$c;->i:Lv67$c;

    iget v10, v1, Lv67;->n:I

    and-int/2addr v10, v14

    if-eq v10, v14, :cond_d

    .line 52
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto/16 :goto_7

    .line 53
    :cond_d
    iget-object v10, v1, Lv67;->g:Lv67$b;

    invoke-static {v10}, Lv67$b;->b(Lv67$b;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_6

    .line 54
    :cond_e
    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto :goto_7

    .line 55
    :pswitch_7
    iget-object v8, v1, Lv67;->g:Lv67$b;

    invoke-static {v8}, Lv67$b;->c(Lv67$b;)I

    move-result v8

    iget v10, v1, Lv67;->o:I

    if-ge v8, v10, :cond_f

    goto :goto_6

    .line 56
    :cond_f
    iget-object v8, v1, Lv67;->g:Lv67$b;

    invoke-static {v8, v10}, Lv67$b;->a(Lv67$b;I)V

    .line 57
    iput-object v5, v1, Lv67;->l:Lv67$c;

    goto :goto_7

    .line 58
    :pswitch_8
    iget v8, v1, Lv67;->n:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eq v8, v10, :cond_10

    .line 59
    iput-object v5, v1, Lv67;->l:Lv67$c;

    goto :goto_7

    .line 60
    :cond_10
    iget-object v8, v1, Lv67;->g:Lv67$b;

    invoke-static {v8}, Lv67$b;->c(Lv67$b;)I

    move-result v8

    if-ge v8, v13, :cond_11

    goto :goto_6

    .line 61
    :cond_11
    iget-object v8, v1, Lv67;->g:Lv67$b;

    .line 62
    invoke-virtual {v8}, Lv67$b;->e()I

    move-result v8

    .line 63
    iput v8, v1, Lv67;->o:I

    .line 64
    sget-object v8, Lv67$c;->g:Lv67$c;

    iput-object v8, v1, Lv67;->l:Lv67$c;

    goto :goto_7

    .line 65
    :pswitch_9
    iget-object v8, v1, Lv67;->g:Lv67$b;

    invoke-static {v8}, Lv67$b;->c(Lv67$b;)I

    move-result v8

    if-ge v8, v10, :cond_12

    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 66
    :cond_12
    iget-object v8, v1, Lv67;->g:Lv67$b;

    .line 67
    invoke-virtual {v8}, Lv67$b;->e()I

    move-result v8

    const v10, 0x8b1f

    if-ne v8, v10, :cond_15

    .line 68
    iget-object v8, v1, Lv67;->g:Lv67$b;

    .line 69
    invoke-virtual {v8}, Lv67$b;->d()I

    move-result v8

    if-ne v8, v14, :cond_14

    .line 70
    iget-object v8, v1, Lv67;->g:Lv67$b;

    .line 71
    invoke-virtual {v8}, Lv67$b;->d()I

    move-result v8

    .line 72
    iput v8, v1, Lv67;->n:I

    .line 73
    iget-object v8, v1, Lv67;->g:Lv67$b;

    const/4 v10, 0x6

    invoke-static {v8, v10}, Lv67$b;->a(Lv67$b;I)V

    .line 74
    sget-object v8, Lv67$c;->f:Lv67$c;

    iput-object v8, v1, Lv67;->l:Lv67$c;

    :cond_13
    :goto_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 75
    :cond_14
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Unsupported compression method"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_15
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v2, "Not in GZIP format"

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz v8, :cond_18

    .line 77
    iget-object v0, v1, Lv67;->l:Lv67$c;

    sget-object v2, Lv67$c;->e:Lv67$c;

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lv67;->g:Lv67$b;

    .line 78
    invoke-static {v0}, Lv67$b;->c(Lv67$b;)I

    move-result v0

    if-ge v0, v10, :cond_17

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    :cond_18
    :goto_8
    iput-boolean v7, v1, Lv67;->s:Z

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv67;->k:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv67;->g:Lv67$b;

    .line 2
    invoke-static {v0}, Lv67$b;->c(Lv67$b;)I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lv67;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lv67;->k:Ljava/util/zip/Inflater;

    .line 5
    :cond_0
    iget-object v0, p0, Lv67;->g:Lv67$b;

    invoke-static {v0}, Lv67$b;->c(Lv67$b;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lv67;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lv67;->g:Lv67$b;

    .line 7
    invoke-virtual {v2}, Lv67$b;->e()I

    move-result v3

    int-to-long v3, v3

    .line 8
    invoke-virtual {v2}, Lv67$b;->e()I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 9
    iget-wide v0, p0, Lv67;->p:J

    iget-object v3, p0, Lv67;->g:Lv67$b;

    .line 10
    invoke-virtual {v3}, Lv67$b;->e()I

    move-result v4

    int-to-long v4, v4

    .line 11
    invoke-virtual {v3}, Lv67$b;->e()I

    move-result v3

    int-to-long v6, v3

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 12
    iget-object v0, p0, Lv67;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 13
    sget-object v0, Lv67$c;->e:Lv67$c;

    iput-object v0, p0, Lv67;->l:Lv67$c;

    const/4 v0, 0x1

    return v0

    .line 14
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Corrupt GZIP trailer"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv67;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv67;->m:Z

    .line 3
    iget-object v0, p0, Lv67;->e:Lc67;

    invoke-virtual {v0}, Lc67;->close()V

    .line 4
    iget-object v0, p0, Lv67;->k:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lv67;->k:Ljava/util/zip/Inflater;

    :cond_0
    return-void
.end method
