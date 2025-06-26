.class public final Lnh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig3;
.implements Lmg3;


# static fields
.field public static final p:I


# instance fields
.field public final a:Lal3;

.field public final b:Lal3;

.field public final c:Lal3;

.field public final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lzg3;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:Lal3;

.field public j:I

.field public k:I

.field public l:Lkg3;

.field public m:[Lph3;

.field public n:J

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "qt  "

    .line 1
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnh3;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lal3;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lal3;-><init>(I)V

    iput-object v0, p0, Lnh3;->c:Lal3;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnh3;->d:Ljava/util/Stack;

    .line 4
    new-instance v0, Lal3;

    sget-object v1, Lzk3;->a:[B

    invoke-direct {v0, v1}, Lal3;-><init>([B)V

    iput-object v0, p0, Lnh3;->a:Lal3;

    .line 5
    new-instance v0, Lal3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lal3;-><init>(I)V

    iput-object v0, p0, Lnh3;->b:Lal3;

    return-void
.end method


# virtual methods
.method public final a(Lgg3;Lng3;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    iget v3, v0, Lnh3;->e:I

    const/16 v4, 0x8

    const/4 v5, -0x1

    const/4 v7, 0x1

    if-eqz v3, :cond_14

    const-wide/32 v8, 0x40000

    const/4 v11, 0x2

    if-eq v3, v7, :cond_b

    if-ne v3, v11, :cond_a

    const-wide v3, 0x7fffffffffffffffL

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 2
    :goto_0
    iget-object v14, v0, Lnh3;->m:[Lph3;

    array-length v15, v14

    if-ge v12, v15, :cond_2

    .line 3
    aget-object v14, v14, v12

    .line 4
    iget v15, v14, Lph3;->d:I

    .line 5
    iget-object v14, v14, Lph3;->b:Lsh3;

    iget v10, v14, Lsh3;->a:I

    if-eq v15, v10, :cond_1

    .line 6
    iget-object v10, v14, Lsh3;->b:[J

    aget-wide v14, v10, v15

    cmp-long v10, v14, v3

    if-gez v10, :cond_1

    move v13, v12

    move-wide v3, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    if-ne v13, v5, :cond_3

    return v5

    .line 7
    :cond_3
    aget-object v3, v14, v13

    .line 8
    iget-object v4, v3, Lph3;->c:Lhj3;

    .line 9
    iget v5, v3, Lph3;->d:I

    .line 10
    iget-object v10, v3, Lph3;->b:Lsh3;

    iget-object v12, v10, Lsh3;->b:[J

    aget-wide v13, v12, v5

    .line 11
    iget-object v10, v10, Lsh3;->c:[I

    aget v10, v10, v5

    .line 12
    iget-object v12, v3, Lph3;->a:Lrh3;

    iget v12, v12, Lrh3;->g:I

    if-ne v12, v7, :cond_4

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v10, v10, -0x8

    .line 13
    :cond_4
    move-object v12, v1

    check-cast v12, Leg3;

    .line 14
    iget-wide v6, v12, Leg3;->c:J

    sub-long v6, v13, v6

    .line 15
    iget v15, v0, Lnh3;->j:I

    move-object/from16 v18, v12

    int-to-long v11, v15

    add-long/2addr v6, v11

    const-wide/16 v11, 0x0

    cmp-long v15, v6, v11

    if-ltz v15, :cond_9

    cmp-long v11, v6, v8

    if-ltz v11, :cond_5

    goto/16 :goto_4

    :cond_5
    long-to-int v2, v6

    move-object/from16 v6, v18

    .line 16
    invoke-virtual {v6, v2}, Leg3;->d(I)V

    .line 17
    iget-object v2, v3, Lph3;->a:Lrh3;

    iget v2, v2, Lrh3;->k:I

    if-eqz v2, :cond_7

    .line 18
    iget-object v7, v0, Lnh3;->b:Lal3;

    iget-object v7, v7, Lal3;->a:[B

    const/4 v8, 0x0

    .line 19
    aput-byte v8, v7, v8

    const/4 v9, 0x1

    .line 20
    aput-byte v8, v7, v9

    const/4 v9, 0x2

    .line 21
    aput-byte v8, v7, v9

    rsub-int/lit8 v7, v2, 0x4

    .line 22
    :goto_1
    iget v9, v0, Lnh3;->j:I

    if-ge v9, v10, :cond_8

    .line 23
    iget v9, v0, Lnh3;->k:I

    if-nez v9, :cond_6

    .line 24
    iget-object v9, v0, Lnh3;->b:Lal3;

    iget-object v9, v9, Lal3;->a:[B

    .line 25
    invoke-virtual {v6, v9, v7, v2, v8}, Leg3;->c([BIIZ)Z

    .line 26
    iget-object v9, v0, Lnh3;->b:Lal3;

    invoke-virtual {v9, v8}, Lal3;->h(I)V

    .line 27
    iget-object v9, v0, Lnh3;->b:Lal3;

    invoke-virtual {v9}, Lal3;->o()I

    move-result v9

    iput v9, v0, Lnh3;->k:I

    .line 28
    iget-object v9, v0, Lnh3;->a:Lal3;

    invoke-virtual {v9, v8}, Lal3;->h(I)V

    .line 29
    iget-object v8, v0, Lnh3;->a:Lal3;

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Lhj3;->e(Lal3;I)V

    .line 30
    iget v8, v0, Lnh3;->j:I

    add-int/2addr v8, v9

    iput v8, v0, Lnh3;->j:I

    add-int/2addr v10, v7

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v4, v1, v9}, Lhj3;->b(Lgg3;I)I

    move-result v8

    .line 32
    iget v9, v0, Lnh3;->j:I

    add-int/2addr v9, v8

    iput v9, v0, Lnh3;->j:I

    .line 33
    iget v9, v0, Lnh3;->k:I

    sub-int/2addr v9, v8

    iput v9, v0, Lnh3;->k:I

    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 34
    :cond_7
    :goto_3
    iget v2, v0, Lnh3;->j:I

    if-ge v2, v10, :cond_8

    sub-int v2, v10, v2

    .line 35
    invoke-virtual {v4, v1, v2}, Lhj3;->b(Lgg3;I)I

    move-result v2

    .line 36
    iget v6, v0, Lnh3;->j:I

    add-int/2addr v6, v2

    iput v6, v0, Lnh3;->j:I

    .line 37
    iget v6, v0, Lnh3;->k:I

    sub-int/2addr v6, v2

    iput v6, v0, Lnh3;->k:I

    goto :goto_3

    :cond_8
    move/from16 v20, v10

    .line 38
    iget-object v1, v3, Lph3;->b:Lsh3;

    iget-object v2, v1, Lsh3;->e:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lsh3;->f:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Lhj3;->c(JIIILqg3;)V

    .line 39
    iget v1, v3, Lph3;->d:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lph3;->d:I

    const/4 v1, 0x0

    .line 40
    iput v1, v0, Lnh3;->j:I

    .line 41
    iput v1, v0, Lnh3;->k:I

    return v1

    :cond_9
    :goto_4
    const/4 v4, 0x1

    .line 42
    iput-wide v13, v2, Lng3;->a:J

    return v4

    .line 43
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 44
    :cond_b
    iget-wide v5, v0, Lnh3;->g:J

    iget v3, v0, Lnh3;->h:I

    int-to-long v10, v3

    sub-long/2addr v5, v10

    .line 45
    move-object v7, v1

    check-cast v7, Leg3;

    .line 46
    iget-wide v10, v7, Leg3;->c:J

    add-long v12, v10, v5

    .line 47
    iget-object v14, v0, Lnh3;->i:Lal3;

    if-eqz v14, :cond_10

    .line 48
    iget-object v8, v14, Lal3;->a:[B

    long-to-int v6, v5

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v7, v8, v3, v6, v5}, Leg3;->c([BIIZ)Z

    .line 50
    iget v3, v0, Lnh3;->f:I

    sget v5, Lah3;->b:I

    if-ne v3, v5, :cond_f

    .line 51
    iget-object v3, v0, Lnh3;->i:Lal3;

    .line 52
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    .line 53
    invoke-virtual {v3}, Lal3;->b()I

    move-result v4

    .line 54
    sget v5, Lnh3;->p:I

    if-ne v4, v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x4

    .line 55
    invoke-virtual {v3, v4}, Lal3;->i(I)V

    .line 56
    :cond_d
    invoke-virtual {v3}, Lal3;->m()I

    move-result v4

    if-lez v4, :cond_e

    .line 57
    invoke-virtual {v3}, Lal3;->b()I

    move-result v4

    sget v5, Lnh3;->p:I

    if-ne v4, v5, :cond_d

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    .line 58
    :goto_6
    iput-boolean v3, v0, Lnh3;->o:Z

    goto :goto_7

    .line 59
    :cond_f
    iget-object v3, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 60
    iget-object v3, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzg3;

    new-instance v4, Lch3;

    iget v5, v0, Lnh3;->f:I

    iget-object v6, v0, Lnh3;->i:Lal3;

    invoke-direct {v4, v5, v6}, Lch3;-><init>(ILal3;)V

    .line 61
    iget-object v3, v3, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    cmp-long v3, v5, v8

    if-gez v3, :cond_12

    long-to-int v3, v5

    .line 62
    invoke-virtual {v7, v3}, Leg3;->d(I)V

    :cond_11
    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    add-long/2addr v10, v5

    .line 63
    iput-wide v10, v2, Lng3;->a:J

    const/4 v3, 0x1

    .line 64
    :goto_8
    invoke-virtual {v0, v12, v13}, Lnh3;->h(J)V

    if-eqz v3, :cond_13

    .line 65
    iget v3, v0, Lnh3;->e:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_14
    const/4 v3, 0x1

    .line 66
    iget v6, v0, Lnh3;->h:I

    if-nez v6, :cond_16

    .line 67
    iget-object v6, v0, Lnh3;->c:Lal3;

    iget-object v6, v6, Lal3;->a:[B

    move-object v7, v1

    check-cast v7, Leg3;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v4, v3}, Leg3;->c([BIIZ)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    goto/16 :goto_12

    .line 68
    :cond_15
    iput v4, v0, Lnh3;->h:I

    .line 69
    iget-object v3, v0, Lnh3;->c:Lal3;

    invoke-virtual {v3, v8}, Lal3;->h(I)V

    .line 70
    iget-object v3, v0, Lnh3;->c:Lal3;

    invoke-virtual {v3}, Lal3;->n()J

    move-result-wide v6

    iput-wide v6, v0, Lnh3;->g:J

    .line 71
    iget-object v3, v0, Lnh3;->c:Lal3;

    invoke-virtual {v3}, Lal3;->b()I

    move-result v3

    iput v3, v0, Lnh3;->f:I

    .line 72
    :cond_16
    iget-wide v6, v0, Lnh3;->g:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_17

    .line 73
    iget-object v3, v0, Lnh3;->c:Lal3;

    iget-object v3, v3, Lal3;->a:[B

    move-object v6, v1

    check-cast v6, Leg3;

    const/4 v7, 0x0

    .line 74
    invoke-virtual {v6, v3, v4, v4, v7}, Leg3;->c([BIIZ)Z

    .line 75
    iget v3, v0, Lnh3;->h:I

    add-int/2addr v3, v4

    iput v3, v0, Lnh3;->h:I

    .line 76
    iget-object v3, v0, Lnh3;->c:Lal3;

    invoke-virtual {v3}, Lal3;->p()J

    move-result-wide v6

    iput-wide v6, v0, Lnh3;->g:J

    .line 77
    :cond_17
    iget v3, v0, Lnh3;->f:I

    .line 78
    sget v6, Lah3;->C:I

    if-eq v3, v6, :cond_19

    sget v6, Lah3;->E:I

    if-eq v3, v6, :cond_19

    sget v6, Lah3;->F:I

    if-eq v3, v6, :cond_19

    sget v6, Lah3;->G:I

    if-eq v3, v6, :cond_19

    sget v6, Lah3;->H:I

    if-eq v3, v6, :cond_19

    sget v6, Lah3;->Q:I

    if-ne v3, v6, :cond_18

    goto :goto_a

    :cond_18
    const/16 v16, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/16 v16, 0x1

    :goto_b
    if-eqz v16, :cond_1b

    .line 79
    move-object v3, v1

    check-cast v3, Leg3;

    .line 80
    iget-wide v3, v3, Leg3;->c:J

    .line 81
    iget-wide v6, v0, Lnh3;->g:J

    add-long/2addr v3, v6

    iget v6, v0, Lnh3;->h:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 82
    iget-object v6, v0, Lnh3;->d:Ljava/util/Stack;

    new-instance v7, Lzg3;

    iget v8, v0, Lnh3;->f:I

    invoke-direct {v7, v8, v3, v4}, Lzg3;-><init>(IJ)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 83
    iget-wide v6, v0, Lnh3;->g:J

    iget v8, v0, Lnh3;->h:I

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_1a

    .line 84
    invoke-virtual {v0, v3, v4}, Lnh3;->h(J)V

    goto :goto_c

    .line 85
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lnh3;->i()V

    :goto_c
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 86
    :cond_1b
    sget v6, Lah3;->S:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->D:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->T:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->U:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->m0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->n0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->o0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->R:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->p0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->q0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->r0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->s0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->t0:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->P:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->b:I

    if-eq v3, v6, :cond_1d

    sget v6, Lah3;->A0:I

    if-ne v3, v6, :cond_1c

    goto :goto_d

    :cond_1c
    const/16 v16, 0x0

    goto :goto_e

    :cond_1d
    :goto_d
    const/16 v16, 0x1

    :goto_e
    if-eqz v16, :cond_20

    .line 87
    iget v3, v0, Lnh3;->h:I

    if-ne v3, v4, :cond_1e

    const/16 v16, 0x1

    goto :goto_f

    :cond_1e
    const/16 v16, 0x0

    :goto_f
    invoke-static/range {v16 .. v16}, Lc50;->D(Z)V

    .line 88
    iget-wide v6, v0, Lnh3;->g:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1f

    const/16 v16, 0x1

    goto :goto_10

    :cond_1f
    const/16 v16, 0x0

    :goto_10
    invoke-static/range {v16 .. v16}, Lc50;->D(Z)V

    .line 89
    new-instance v3, Lal3;

    iget-wide v6, v0, Lnh3;->g:J

    long-to-int v7, v6

    invoke-direct {v3, v7}, Lal3;-><init>(I)V

    iput-object v3, v0, Lnh3;->i:Lal3;

    .line 90
    iget-object v6, v0, Lnh3;->c:Lal3;

    iget-object v6, v6, Lal3;->a:[B

    iget-object v3, v3, Lal3;->a:[B

    const/4 v7, 0x0

    invoke-static {v6, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 91
    iput v3, v0, Lnh3;->e:I

    goto :goto_11

    :cond_20
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    iput-object v4, v0, Lnh3;->i:Lal3;

    .line 93
    iput v3, v0, Lnh3;->e:I

    :goto_11
    const/4 v6, 0x1

    :goto_12
    if-nez v6, :cond_0

    return v5
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lkg3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnh3;->l:Lkg3;

    return-void
.end method

.method public final d(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lnh3;->m:[Lph3;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 2
    iget-object v5, v5, Lph3;->b:Lsh3;

    .line 3
    invoke-virtual {v5, p1, p2}, Lsh3;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 4
    invoke-virtual {v5, p1, p2}, Lsh3;->b(J)I

    move-result v6

    .line 5
    :cond_0
    iget-object v5, v5, Lsh3;->b:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final e(Lgg3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Loh3;->a(Lgg3;Z)Z

    move-result p1

    return p1
.end method

.method public final f(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnh3;->h:I

    .line 3
    iput v0, p0, Lnh3;->j:I

    .line 4
    iput v0, p0, Lnh3;->k:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lnh3;->i()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lnh3;->m:[Lph3;

    if-eqz p1, :cond_2

    .line 7
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 8
    iget-object v2, v1, Lph3;->b:Lsh3;

    .line 9
    invoke-virtual {v2, p3, p4}, Lsh3;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 10
    invoke-virtual {v2, p3, p4}, Lsh3;->b(J)I

    move-result v3

    .line 11
    :cond_1
    iput v3, v1, Lph3;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnh3;->n:J

    return-wide v0
.end method

.method public final h(J)V
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzg3;

    iget-wide v3, v1, Lzg3;->P0:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_44

    .line 2
    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzg3;

    .line 3
    iget v3, v1, Lah3;->a:I

    sget v4, Lah3;->C:I

    if-ne v3, v4, :cond_43

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Llg3;

    invoke-direct {v4}, Llg3;-><init>()V

    .line 6
    sget v5, Lah3;->A0:I

    invoke-virtual {v1, v5}, Lzg3;->b(I)Lch3;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_3b

    .line 7
    iget-boolean v10, v0, Lnh3;->o:Z

    .line 8
    sget v11, Lbh3;->a:I

    const-string v11, "iTunSMPB"

    if-eqz v10, :cond_1

    goto/16 :goto_17

    .line 9
    :cond_1
    iget-object v5, v5, Lch3;->P0:Lal3;

    const/16 v10, 0x8

    .line 10
    invoke-virtual {v5, v10}, Lal3;->h(I)V

    .line 11
    :goto_1
    invoke-virtual {v5}, Lal3;->m()I

    move-result v13

    if-lt v13, v10, :cond_34

    .line 12
    iget v13, v5, Lal3;->b:I

    .line 13
    invoke-virtual {v5}, Lal3;->b()I

    move-result v14

    .line 14
    invoke-virtual {v5}, Lal3;->b()I

    move-result v15

    .line 15
    sget v9, Lah3;->B0:I

    if-ne v15, v9, :cond_33

    .line 16
    invoke-virtual {v5, v13}, Lal3;->h(I)V

    add-int/2addr v13, v14

    const/16 v9, 0xc

    .line 17
    invoke-virtual {v5, v9}, Lal3;->i(I)V

    .line 18
    :goto_2
    iget v9, v5, Lal3;->b:I

    if-ge v9, v13, :cond_34

    .line 19
    invoke-virtual {v5}, Lal3;->b()I

    move-result v14

    .line 20
    invoke-virtual {v5}, Lal3;->b()I

    move-result v15

    .line 21
    sget v2, Lah3;->C0:I

    if-ne v15, v2, :cond_32

    .line 22
    invoke-virtual {v5, v9}, Lal3;->h(I)V

    add-int/2addr v9, v14

    .line 23
    invoke-virtual {v5, v10}, Lal3;->i(I)V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_3
    iget v13, v5, Lal3;->b:I

    if-ge v13, v9, :cond_31

    .line 26
    sget v14, Llh3;->a:I

    .line 27
    invoke-virtual {v5}, Lal3;->b()I

    move-result v14

    add-int/2addr v14, v13

    .line 28
    invoke-virtual {v5}, Lal3;->b()I

    move-result v13

    ushr-int/lit8 v15, v13, 0x18

    const/16 v10, 0xa9

    const-string v6, "und"

    const-string v12, "TCON"

    const v19, 0xffffff

    const-string v7, "MetadataUtil"

    if-eq v15, v10, :cond_20

    const v10, 0xfffd

    if-ne v15, v10, :cond_2

    goto/16 :goto_f

    .line 29
    :cond_2
    :try_start_0
    sget v10, Llh3;->m:I

    if-ne v13, v10, :cond_5

    .line 30
    invoke-static {v5}, Llh3;->d(Lal3;)I

    move-result v6

    if-lez v6, :cond_3

    .line 31
    sget-object v10, Llh3;->D:[Ljava/lang/String;

    array-length v13, v10

    if-gt v6, v13, :cond_3

    add-int/lit8 v6, v6, -0x1

    .line 32
    aget-object v6, v10, v6

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_4

    .line 33
    new-instance v7, Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {v7, v12, v6}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v6, "Failed to parse standard genre code"

    .line 34
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    .line 35
    :goto_5
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 36
    :cond_5
    :try_start_1
    sget v10, Llh3;->o:I

    if-ne v13, v10, :cond_6

    const-string v6, "TPOS"

    .line 37
    invoke-static {v13, v6, v5}, Llh3;->c(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 39
    :cond_6
    :try_start_2
    sget v10, Llh3;->p:I

    if-ne v13, v10, :cond_7

    const-string v6, "TRCK"

    .line 40
    invoke-static {v13, v6, v5}, Llh3;->c(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 42
    :cond_7
    :try_start_3
    sget v10, Llh3;->q:I

    if-ne v13, v10, :cond_8

    const-string v6, "TBPM"

    const/4 v7, 0x1

    .line 43
    invoke-static {v13, v6, v5, v7, v8}, Llh3;->b(ILjava/lang/String;Lal3;ZZ)Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_e

    .line 45
    :cond_8
    :try_start_4
    sget v10, Llh3;->r:I

    if-ne v13, v10, :cond_9

    const-string v6, "TCMP"

    const/4 v7, 0x1

    .line 46
    invoke-static {v13, v6, v5, v7, v7}, Llh3;->b(ILjava/lang/String;Lal3;ZZ)Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    move-object v7, v6

    goto/16 :goto_9

    .line 48
    :cond_9
    :try_start_5
    sget v10, Llh3;->l:I

    const/4 v12, 0x4

    if-ne v13, v10, :cond_e

    .line 49
    invoke-virtual {v5}, Lal3;->b()I

    move-result v6

    .line 50
    invoke-virtual {v5}, Lal3;->b()I

    move-result v10

    .line 51
    sget v13, Lah3;->F0:I

    if-ne v10, v13, :cond_d

    .line 52
    invoke-virtual {v5}, Lal3;->b()I

    move-result v10

    and-int v10, v10, v19

    const/16 v13, 0xd

    if-ne v10, v13, :cond_a

    const-string v13, "image/jpeg"

    goto :goto_6

    :cond_a
    const/16 v13, 0xe

    if-ne v10, v13, :cond_b

    const-string v13, "image/png"

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_c

    const/16 v6, 0x29

    .line 53
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unrecognized cover art flags: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 54
    :cond_c
    invoke-virtual {v5, v12}, Lal3;->i(I)V

    const/16 v7, 0x10

    sub-int/2addr v6, v7

    .line 55
    new-array v7, v6, [B

    .line 56
    iget-object v10, v5, Lal3;->a:[B

    iget v12, v5, Lal3;->b:I

    invoke-static {v10, v12, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget v10, v5, Lal3;->b:I

    add-int/2addr v10, v6

    iput v10, v5, Lal3;->b:I

    .line 58
    new-instance v6, Lcom/google/android/gms/internal/ads/zzmi;

    invoke-direct {v6, v13, v7}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(Ljava/lang/String;[B)V

    move-object v7, v6

    goto :goto_8

    :cond_d
    const-string v6, "Failed to parse cover art attribute"

    .line 59
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    const/4 v7, 0x0

    .line 60
    :goto_8
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 61
    :cond_e
    :try_start_6
    sget v10, Llh3;->s:I

    if-ne v13, v10, :cond_f

    const-string v6, "TPE2"

    .line 62
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 63
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 64
    :cond_f
    :try_start_7
    sget v10, Llh3;->t:I

    if-ne v13, v10, :cond_10

    const-string v6, "TSOT"

    .line 65
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 66
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_9

    .line 67
    :cond_10
    :try_start_8
    sget v10, Llh3;->u:I

    if-ne v13, v10, :cond_11

    const-string v6, "TSO2"

    .line 68
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 69
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_9

    .line 70
    :cond_11
    :try_start_9
    sget v10, Llh3;->v:I

    if-ne v13, v10, :cond_12

    const-string v6, "TSOA"

    .line 71
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 72
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_9

    .line 73
    :cond_12
    :try_start_a
    sget v10, Llh3;->w:I

    if-ne v13, v10, :cond_13

    const-string v6, "TSOP"

    .line 74
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 75
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_9

    .line 76
    :cond_13
    :try_start_b
    sget v10, Llh3;->x:I

    if-ne v13, v10, :cond_14

    const-string v6, "TSOC"

    .line 77
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 78
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_9

    .line 79
    :cond_14
    :try_start_c
    sget v10, Llh3;->y:I

    if-ne v13, v10, :cond_15

    const-string v6, "ITUNESADVISORY"

    .line 80
    invoke-static {v13, v6, v5, v8, v8}, Llh3;->b(ILjava/lang/String;Lal3;ZZ)Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 81
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_e

    .line 82
    :cond_15
    :try_start_d
    sget v10, Llh3;->z:I

    if-ne v13, v10, :cond_16

    const-string v6, "ITUNESGAPLESS"

    const/4 v7, 0x1

    .line 83
    invoke-static {v13, v6, v5, v8, v7}, Llh3;->b(ILjava/lang/String;Lal3;ZZ)Lcom/google/android/gms/internal/ads/zzmo;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 84
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_e

    .line 85
    :cond_16
    :try_start_e
    sget v10, Llh3;->A:I

    if-ne v13, v10, :cond_17

    const-string v6, "TVSHOWSORT"

    .line 86
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 87
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_9

    .line 88
    :cond_17
    :try_start_f
    sget v10, Llh3;->B:I

    if-ne v13, v10, :cond_18

    const-string v6, "TVSHOW"

    .line 89
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 90
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    :goto_9
    move-object v6, v7

    goto/16 :goto_e

    .line 91
    :cond_18
    :try_start_10
    sget v10, Llh3;->C:I

    if-ne v13, v10, :cond_1f

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v15, -0x1

    .line 92
    :goto_a
    iget v8, v5, Lal3;->b:I

    if-ge v8, v14, :cond_1c

    .line 93
    invoke-virtual {v5}, Lal3;->b()I

    move-result v19

    .line 94
    invoke-virtual {v5}, Lal3;->b()I

    move-result v12

    move/from16 v21, v8

    const/4 v8, 0x4

    .line 95
    invoke-virtual {v5, v8}, Lal3;->i(I)V

    .line 96
    sget v8, Lah3;->D0:I

    if-ne v12, v8, :cond_19

    add-int/lit8 v7, v19, -0xc

    .line 97
    invoke-virtual {v5, v7}, Lal3;->j(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 98
    :cond_19
    sget v8, Lah3;->E0:I

    if-ne v12, v8, :cond_1a

    add-int/lit8 v8, v19, -0xc

    .line 99
    invoke-virtual {v5, v8}, Lal3;->j(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 100
    :cond_1a
    sget v8, Lah3;->F0:I

    if-ne v12, v8, :cond_1b

    move/from16 v15, v19

    move/from16 v13, v21

    :cond_1b
    add-int/lit8 v8, v19, -0xc

    .line 101
    invoke-virtual {v5, v8}, Lal3;->i(I)V

    :goto_b
    const/4 v12, 0x4

    goto :goto_a

    :cond_1c
    const-string v8, "com.apple.iTunes"

    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, -0x1

    if-ne v13, v7, :cond_1d

    goto :goto_c

    .line 103
    :cond_1d
    invoke-virtual {v5, v13}, Lal3;->h(I)V

    const/16 v7, 0x10

    .line 104
    invoke-virtual {v5, v7}, Lal3;->i(I)V

    add-int/lit8 v15, v15, -0x10

    .line 105
    invoke-virtual {v5, v15}, Lal3;->j(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    new-instance v8, Lcom/google/android/gms/internal/ads/zzmj;

    invoke-direct {v8, v6, v10, v7}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_d

    :cond_1e
    :goto_c
    const/4 v8, 0x0

    .line 107
    :goto_d
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    move-object v6, v8

    :goto_e
    const/16 v10, 0x8

    goto/16 :goto_16

    :cond_1f
    const/16 v10, 0x8

    goto/16 :goto_12

    :cond_20
    :goto_f
    and-int v8, v13, v19

    .line 108
    :try_start_11
    sget v10, Llh3;->c:I

    if-ne v8, v10, :cond_23

    .line 109
    invoke-virtual {v5}, Lal3;->b()I

    move-result v8

    .line 110
    invoke-virtual {v5}, Lal3;->b()I

    move-result v10

    .line 111
    sget v12, Lah3;->F0:I

    if-ne v10, v12, :cond_21

    const/16 v10, 0x8

    .line 112
    invoke-virtual {v5, v10}, Lal3;->i(I)V

    const/16 v7, 0x10

    sub-int/2addr v8, v7

    .line 113
    invoke-virtual {v5, v8}, Lal3;->j(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    new-instance v8, Lcom/google/android/gms/internal/ads/zzmj;

    invoke-direct {v8, v6, v7, v7}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_11

    :cond_21
    const/16 v10, 0x8

    const-string v6, "Failed to parse comment attribute: "

    .line 115
    invoke-static {v13}, Lah3;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_22
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_10
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v6, 0x0

    .line 116
    :goto_11
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_16

    :cond_23
    const/16 v10, 0x8

    .line 117
    :try_start_12
    sget v6, Llh3;->a:I

    if-eq v8, v6, :cond_2f

    sget v6, Llh3;->b:I

    if-ne v8, v6, :cond_24

    goto/16 :goto_15

    .line 118
    :cond_24
    sget v6, Llh3;->h:I

    if-eq v8, v6, :cond_2e

    sget v6, Llh3;->i:I

    if-ne v8, v6, :cond_25

    goto/16 :goto_14

    .line 119
    :cond_25
    sget v6, Llh3;->d:I

    if-ne v8, v6, :cond_26

    const-string v6, "TDRC"

    .line 120
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 121
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_16

    .line 122
    :cond_26
    :try_start_13
    sget v6, Llh3;->e:I

    if-ne v8, v6, :cond_27

    const-string v6, "TPE1"

    .line 123
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 124
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_16

    .line 125
    :cond_27
    :try_start_14
    sget v6, Llh3;->f:I

    if-ne v8, v6, :cond_28

    const-string v6, "TSSE"

    .line 126
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 127
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto/16 :goto_16

    .line 128
    :cond_28
    :try_start_15
    sget v6, Llh3;->g:I

    if-ne v8, v6, :cond_29

    const-string v6, "TALB"

    .line 129
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 130
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_16

    .line 131
    :cond_29
    :try_start_16
    sget v6, Llh3;->j:I

    if-ne v8, v6, :cond_2a

    const-string v6, "USLT"

    .line 132
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 133
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_16

    .line 134
    :cond_2a
    :try_start_17
    sget v6, Llh3;->k:I

    if-ne v8, v6, :cond_2b

    .line 135
    invoke-static {v13, v12, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 136
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_16

    .line 137
    :cond_2b
    :try_start_18
    sget v6, Llh3;->n:I

    if-ne v8, v6, :cond_2c

    const-string v6, "TIT1"

    .line 138
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 139
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_16

    :cond_2c
    :goto_12
    :try_start_19
    const-string v6, "Skipped unknown metadata entry: "

    .line 140
    invoke-static {v13}, Lah3;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    :cond_2d
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_13
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 141
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    const/4 v6, 0x0

    goto :goto_16

    :cond_2e
    :goto_14
    :try_start_1a
    const-string v6, "TCOM"

    .line 142
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 143
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    goto :goto_16

    :cond_2f
    :goto_15
    :try_start_1b
    const-string v6, "TIT2"

    .line 144
    invoke-static {v13, v6, v5}, Llh3;->a(ILjava/lang/String;Lal3;)Lcom/google/android/gms/internal/ads/zzmn;

    move-result-object v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 145
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    :goto_16
    if-eqz v6, :cond_30

    .line 146
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 v8, 0x0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    .line 147
    invoke-virtual {v5, v14}, Lal3;->h(I)V

    .line 148
    throw v0

    .line 149
    :cond_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    new-instance v5, Lcom/google/android/gms/internal/ads/zzmh;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzmh;-><init>(Ljava/util/List;)V

    move-object v9, v5

    goto :goto_18

    :cond_32
    add-int/lit8 v14, v14, -0x8

    .line 150
    invoke-virtual {v5, v14}, Lal3;->i(I)V

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_33
    add-int/lit8 v14, v14, -0x8

    .line 151
    invoke-virtual {v5, v14}, Lal3;->i(I)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_34
    :goto_17
    const/4 v9, 0x0

    :goto_18
    if-eqz v9, :cond_3c

    const/4 v2, 0x0

    .line 152
    :goto_19
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzmh;->e:[Lcom/google/android/gms/internal/ads/zzmh$zza;

    array-length v6, v5

    if-ge v2, v6, :cond_3c

    .line 153
    aget-object v5, v5, v2

    .line 154
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzmj;

    if-eqz v6, :cond_39

    .line 155
    check-cast v5, Lcom/google/android/gms/internal/ads/zzmj;

    .line 156
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzmj;->g:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzmj;->h:Ljava/lang/String;

    .line 157
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    :catch_0
    :cond_35
    const/16 v6, 0x10

    goto :goto_1a

    .line 158
    :cond_36
    sget-object v6, Llg3;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x1

    .line 160
    :try_start_1c
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_0

    const/16 v6, 0x10

    :try_start_1d
    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    .line 161
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-gtz v7, :cond_37

    if-lez v5, :cond_38

    .line 162
    :cond_37
    iput v7, v4, Llg3;->a:I

    .line 163
    iput v5, v4, Llg3;->b:I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_1

    const/4 v7, 0x1

    goto :goto_1b

    :catch_1
    :cond_38
    :goto_1a
    const/4 v7, 0x0

    :goto_1b
    if-eqz v7, :cond_3a

    goto :goto_1c

    :cond_39
    const/16 v6, 0x10

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3b
    const/4 v9, 0x0

    :cond_3c
    :goto_1c
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 164
    :goto_1d
    iget-object v10, v1, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_42

    .line 165
    iget-object v10, v1, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzg3;

    .line 166
    iget v11, v10, Lah3;->a:I

    sget v12, Lah3;->E:I

    if-ne v11, v12, :cond_41

    .line 167
    sget v11, Lah3;->D:I

    invoke-virtual {v1, v11}, Lzg3;->b(I)Lch3;

    move-result-object v12

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    iget-boolean v11, v0, Lnh3;->o:Z

    move/from16 v16, v11

    move-object v11, v10

    invoke-static/range {v11 .. v16}, Lbh3;->b(Lzg3;Lch3;JLcom/google/android/gms/internal/ads/zzjo;Z)Lrh3;

    move-result-object v11

    if-eqz v11, :cond_41

    .line 168
    sget v12, Lah3;->F:I

    invoke-virtual {v10, v12}, Lzg3;->c(I)Lzg3;

    move-result-object v10

    sget v12, Lah3;->G:I

    .line 169
    invoke-virtual {v10, v12}, Lzg3;->c(I)Lzg3;

    move-result-object v10

    sget v12, Lah3;->H:I

    invoke-virtual {v10, v12}, Lzg3;->c(I)Lzg3;

    move-result-object v10

    .line 170
    invoke-static {v11, v10, v4}, Lbh3;->c(Lrh3;Lzg3;Llg3;)Lsh3;

    move-result-object v10

    .line 171
    iget v12, v10, Lsh3;->a:I

    if-eqz v12, :cond_41

    .line 172
    new-instance v12, Lph3;

    iget-object v0, v0, Lnh3;->l:Lkg3;

    iget v13, v11, Lrh3;->b:I

    .line 173
    check-cast v0, Lmi3;

    invoke-virtual {v0, v2, v13}, Lmi3;->o(II)Lhj3;

    move-result-object v0

    invoke-direct {v12, v11, v10, v0}, Lph3;-><init>(Lrh3;Lsh3;Lhj3;)V

    .line 174
    iget v0, v10, Lsh3;->d:I

    add-int/lit8 v0, v0, 0x1e

    move/from16 v26, v0

    .line 175
    iget-object v13, v11, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    .line 176
    new-instance v14, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v20, v14

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    move-object/from16 v21, v15

    move-object/from16 v16, v1

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    move-object/from16 v22, v1

    move/from16 v17, v2

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    move-object/from16 v23, v2

    move-wide/from16 v18, v7

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    move-object/from16 v24, v7

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzht;->f:I

    move/from16 v25, v8

    move-object/from16 v48, v10

    iget v10, v13, Lcom/google/android/gms/internal/ads/zzht;->n:I

    move/from16 v27, v10

    move-object/from16 v49, v3

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzht;->o:I

    move/from16 v28, v3

    move-wide/from16 v50, v5

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzht;->p:F

    move/from16 v29, v5

    iget v6, v13, Lcom/google/android/gms/internal/ads/zzht;->q:I

    move/from16 v30, v6

    move-object/from16 v52, v12

    iget v12, v13, Lcom/google/android/gms/internal/ads/zzht;->r:F

    move/from16 v31, v12

    move-object/from16 v53, v9

    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    move-object/from16 v32, v9

    move-object/from16 v54, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->s:I

    move/from16 v33, v9

    move/from16 v55, v9

    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    move-object/from16 v34, v9

    move-object/from16 v56, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->v:I

    move/from16 v35, v9

    move/from16 v57, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->w:I

    move/from16 v36, v9

    move/from16 v58, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->x:I

    move/from16 v37, v9

    move/from16 v59, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->y:I

    move/from16 v38, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->z:I

    move/from16 v39, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->B:I

    move/from16 v40, v9

    move/from16 v60, v9

    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    move-object/from16 v41, v9

    move-object/from16 v61, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzht;->D:I

    move/from16 v42, v9

    move/from16 v62, v5

    move/from16 v63, v6

    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/zzht;->A:J

    move-wide/from16 v43, v5

    move-wide/from16 v64, v5

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v45, v5

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v46, v5

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    move-object/from16 v47, v5

    invoke-direct/range {v20 .. v47}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    .line 177
    iget v5, v11, Lrh3;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    .line 178
    iget v5, v4, Llg3;->a:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_3d

    iget v6, v4, Llg3;->b:I

    if-eq v6, v13, :cond_3d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_3d
    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_3e

    .line 179
    iget v6, v4, Llg3;->b:I

    move/from16 v39, v6

    .line 180
    new-instance v6, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v20, v6

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v45, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v46, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    move-object/from16 v47, v13

    move-object/from16 v21, v15

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v0

    move/from16 v27, v10

    move/from16 v28, v3

    move/from16 v29, v62

    move/from16 v30, v63

    move/from16 v31, v12

    move-object/from16 v32, v54

    move/from16 v33, v55

    move-object/from16 v34, v56

    move/from16 v35, v57

    move/from16 v36, v58

    move/from16 v37, v59

    move/from16 v38, v5

    move/from16 v40, v60

    move-object/from16 v41, v61

    move/from16 v42, v9

    move-wide/from16 v43, v64

    invoke-direct/range {v20 .. v47}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    move-object v14, v6

    :cond_3e
    if-eqz v53, :cond_3f

    .line 181
    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v20, v0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    move-object/from16 v24, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->f:I

    move/from16 v25, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->k:I

    move/from16 v26, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->n:I

    move/from16 v27, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->o:I

    move/from16 v28, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->p:F

    move/from16 v29, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->q:I

    move/from16 v30, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->r:F

    move/from16 v31, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    move-object/from16 v32, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->s:I

    move/from16 v33, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    move-object/from16 v34, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->v:I

    move/from16 v35, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->w:I

    move/from16 v36, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->x:I

    move/from16 v37, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->y:I

    move/from16 v38, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->z:I

    move/from16 v39, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->B:I

    move/from16 v40, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    move-object/from16 v41, v1

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzht;->D:I

    move/from16 v42, v1

    iget-wide v1, v14, Lcom/google/android/gms/internal/ads/zzht;->A:J

    move-wide/from16 v43, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v45, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v46, v1

    move-object/from16 v47, v53

    invoke-direct/range {v20 .. v47}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    move-object v14, v0

    :cond_3f
    move-object/from16 v0, v52

    .line 182
    iget-object v1, v0, Lph3;->c:Lhj3;

    invoke-virtual {v1, v14}, Lhj3;->g(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 183
    iget-wide v1, v11, Lrh3;->e:J

    move-wide/from16 v5, v50

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-object/from16 v3, v49

    .line 184
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v48

    .line 185
    iget-object v0, v0, Lsh3;->b:[J

    const/4 v7, 0x0

    aget-wide v5, v0, v7

    cmp-long v0, v5, v18

    if-gez v0, :cond_40

    move-wide/from16 v18, v5

    :cond_40
    move-wide v5, v1

    goto :goto_1f

    :cond_41
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v18, v7

    move-object/from16 v53, v9

    const/4 v7, 0x0

    :goto_1f
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v7, v18

    move-object/from16 v9, v53

    goto/16 :goto_1d

    .line 186
    :cond_42
    iput-wide v5, v0, Lnh3;->n:J

    .line 187
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lph3;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lph3;

    iput-object v1, v0, Lnh3;->m:[Lph3;

    .line 188
    iget-object v1, v0, Lnh3;->l:Lkg3;

    check-cast v1, Lmi3;

    invoke-virtual {v1}, Lmi3;->p()V

    .line 189
    iget-object v1, v0, Lnh3;->l:Lkg3;

    check-cast v1, Lmi3;

    .line 190
    iput-object v0, v1, Lmi3;->u:Lmg3;

    .line 191
    iget-object v2, v1, Lmi3;->r:Landroid/os/Handler;

    iget-object v1, v1, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    .line 193
    iput v1, v0, Lnh3;->e:I

    goto/16 :goto_0

    :cond_43
    move-object/from16 v16, v1

    .line 194
    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, v0, Lnh3;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzg3;

    .line 196
    iget-object v1, v1, Lzg3;->R0:Ljava/util/List;

    move-object/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 197
    :cond_44
    iget v0, v0, Lnh3;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    .line 198
    invoke-virtual/range {p0 .. p0}, Lnh3;->i()V

    :cond_45
    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnh3;->e:I

    .line 2
    iput v0, p0, Lnh3;->h:I

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
