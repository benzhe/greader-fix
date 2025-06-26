.class public final Lhf3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:Ljava/lang/reflect/Method;

.field public C:I

.field public D:J

.field public E:J

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:I

.field public K:J

.field public L:J

.field public M:J

.field public N:F

.field public O:[Lxe3;

.field public P:[Ljava/nio/ByteBuffer;

.field public Q:Ljava/nio/ByteBuffer;

.field public R:Ljava/nio/ByteBuffer;

.field public S:[B

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:Z

.field public Z:J

.field public final a:Lnf3;

.field public final b:Luf3;

.field public final c:[Lxe3;

.field public final d:Lqf3;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:[J

.field public final g:Ljf3;

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmf3;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/media/AudioTrack;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:J

.field public r:Lpe3;

.field public s:Lpe3;

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>([Lxe3;Lqf3;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lhf3;->d:Lqf3;

    .line 3
    new-instance p2, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p2, p0, Lhf3;->e:Landroid/os/ConditionVariable;

    .line 4
    sget p2, Lel3;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt p2, v2, :cond_0

    .line 5
    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    .line 6
    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lhf3;->B:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 7
    :cond_0
    :goto_0
    sget p2, Lel3;->a:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_1

    .line 8
    new-instance p2, Lif3;

    invoke-direct {p2}, Lif3;-><init>()V

    iput-object p2, p0, Lhf3;->g:Ljf3;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p2, Ljf3;

    invoke-direct {p2, v1}, Ljf3;-><init>(Lgf3;)V

    iput-object p2, p0, Lhf3;->g:Ljf3;

    .line 10
    :goto_1
    new-instance p2, Lnf3;

    invoke-direct {p2}, Lnf3;-><init>()V

    iput-object p2, p0, Lhf3;->a:Lnf3;

    .line 11
    new-instance v1, Luf3;

    invoke-direct {v1}, Luf3;-><init>()V

    iput-object v1, p0, Lhf3;->b:Luf3;

    .line 12
    array-length v2, p1

    const/4 v3, 0x3

    add-int/2addr v2, v3

    new-array v2, v2, [Lxe3;

    iput-object v2, p0, Lhf3;->c:[Lxe3;

    .line 13
    new-instance v4, Ltf3;

    invoke-direct {v4}, Ltf3;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 14
    aput-object p2, v2, v0

    .line 15
    array-length p2, p1

    const/4 v0, 0x2

    invoke-static {p1, v5, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    array-length p1, p1

    add-int/2addr p1, v0

    aput-object v1, v2, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 17
    iput-object p1, p0, Lhf3;->f:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lhf3;->N:F

    .line 19
    iput v5, p0, Lhf3;->J:I

    .line 20
    iput v3, p0, Lhf3;->n:I

    .line 21
    iput v5, p0, Lhf3;->X:I

    .line 22
    sget-object p1, Lpe3;->d:Lpe3;

    iput-object p1, p0, Lhf3;->s:Lpe3;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lhf3;->U:I

    new-array p1, v5, [Lxe3;

    .line 24
    iput-object p1, p0, Lhf3;->O:[Lxe3;

    new-array p1, v5, [Ljava/nio/ByteBuffer;

    .line 25
    iput-object p1, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    .line 26
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lhf3;->h:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lhf3;->W:Z

    .line 2
    invoke-virtual {p0}, Lhf3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lhf3;->L:J

    .line 4
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lhf3;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lhf3;->D:J

    .line 3
    iput-wide v0, p0, Lhf3;->E:J

    .line 4
    iput-wide v0, p0, Lhf3;->G:J

    .line 5
    iput-wide v0, p0, Lhf3;->H:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lhf3;->I:I

    .line 7
    iget-object v3, p0, Lhf3;->r:Lpe3;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iput-object v3, p0, Lhf3;->s:Lpe3;

    .line 9
    iput-object v4, p0, Lhf3;->r:Lpe3;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf3;

    .line 12
    iget-object v3, v3, Lmf3;->a:Lpe3;

    .line 13
    iput-object v3, p0, Lhf3;->s:Lpe3;

    .line 14
    :cond_1
    :goto_0
    iget-object v3, p0, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 15
    iput-wide v0, p0, Lhf3;->t:J

    .line 16
    iput-wide v0, p0, Lhf3;->u:J

    .line 17
    iput-object v4, p0, Lhf3;->Q:Ljava/nio/ByteBuffer;

    .line 18
    iput-object v4, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 19
    :goto_1
    iget-object v5, p0, Lhf3;->O:[Lxe3;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 20
    aget-object v5, v5, v3

    .line 21
    invoke-interface {v5}, Lxe3;->flush()V

    .line 22
    iget-object v6, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lxe3;->e()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_2
    iput-boolean v2, p0, Lhf3;->V:Z

    const/4 v3, -0x1

    .line 24
    iput v3, p0, Lhf3;->U:I

    .line 25
    iput v2, p0, Lhf3;->J:I

    .line 26
    iput-wide v0, p0, Lhf3;->M:J

    .line 27
    iput-wide v0, p0, Lhf3;->x:J

    .line 28
    iput v2, p0, Lhf3;->w:I

    .line 29
    iput v2, p0, Lhf3;->v:I

    .line 30
    iput-wide v0, p0, Lhf3;->y:J

    .line 31
    iput-boolean v2, p0, Lhf3;->z:Z

    .line 32
    iput-wide v0, p0, Lhf3;->A:J

    .line 33
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 34
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 35
    :cond_3
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    .line 36
    iput-object v4, p0, Lhf3;->i:Landroid/media/AudioTrack;

    .line 37
    iget-object v1, p0, Lhf3;->g:Ljf3;

    invoke-virtual {v1, v4, v2}, Ljf3;->a(Landroid/media/AudioTrack;Z)V

    .line 38
    iget-object v1, p0, Lhf3;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 39
    new-instance v1, Lgf3;

    invoke-direct {v1, p0, v0}, Lgf3;-><init>(Lhf3;Landroid/media/AudioTrack;)V

    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final d(Ljava/lang/String;III[I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llf3;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    const-string v3, "audio/raw"

    .line 1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eqz v3, :cond_4

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "audio/vnd.dts.hd"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_1
    const-string v11, "audio/eac3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_2
    const-string v11, "audio/ac3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_3
    const-string v11, "audio/vnd.dts"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_1

    :cond_4
    move/from16 v0, p4

    :goto_1
    if-nez v3, :cond_7

    move/from16 v10, p2

    move/from16 v11, p4

    .line 3
    invoke-static {v11, v10}, Lel3;->i(II)I

    move-result v11

    iput v11, v1, Lhf3;->C:I

    .line 4
    iget-object v11, v1, Lhf3;->a:Lnf3;

    move-object/from16 v12, p5

    .line 5
    iput-object v12, v11, Lnf3;->d:[I

    .line 6
    iget-object v11, v1, Lhf3;->c:[Lxe3;

    array-length v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v12, :cond_6

    aget-object v15, v11, v13

    .line 7
    :try_start_0
    invoke-interface {v15, v2, v10, v0}, Lxe3;->d(III)Z

    move-result v16
    :try_end_0
    .catch Lwe3; {:try_start_0 .. :try_end_0} :catch_0

    or-int v14, v14, v16

    .line 8
    invoke-interface {v15}, Lxe3;->isActive()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 9
    invoke-interface {v15}, Lxe3;->a()I

    move-result v10

    .line 10
    invoke-interface {v15}, Lxe3;->b()I

    move-result v0

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 11
    new-instance v0, Llf3;

    invoke-direct {v0, v2}, Llf3;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    if-eqz v14, :cond_8

    .line 12
    invoke-virtual/range {p0 .. p0}, Lhf3;->k()V

    goto :goto_3

    :cond_7
    move/from16 v10, p2

    const/4 v14, 0x0

    :cond_8
    :goto_3
    packed-switch v10, :pswitch_data_1

    .line 13
    new-instance v0, Llf3;

    const/16 v2, 0x26

    const-string v3, "Unsupported channel count: "

    invoke-static {v2, v3, v10}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Llf3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_4
    sget v11, Lzd3;->a:I

    goto :goto_4

    :pswitch_5
    const/16 v11, 0x4fc

    goto :goto_4

    :pswitch_6
    const/16 v11, 0xfc

    goto :goto_4

    :pswitch_7
    const/16 v11, 0xdc

    goto :goto_4

    :pswitch_8
    const/16 v11, 0xcc

    goto :goto_4

    :pswitch_9
    const/16 v11, 0x1c

    goto :goto_4

    :pswitch_a
    const/16 v11, 0xc

    goto :goto_4

    :pswitch_b
    const/4 v11, 0x4

    .line 15
    :goto_4
    sget v12, Lel3;->a:I

    const/16 v13, 0x17

    if-gt v12, v13, :cond_b

    sget-object v13, Lel3;->b:Ljava/lang/String;

    const-string v15, "foster"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    sget-object v13, Lel3;->c:Ljava/lang/String;

    const-string v15, "NVIDIA"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eq v10, v7, :cond_a

    if-eq v10, v8, :cond_a

    if-eq v10, v5, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    sget v11, Lzd3;->a:I

    goto :goto_5

    :cond_a
    const/16 v11, 0xfc

    :cond_b
    :goto_5
    const/16 v5, 0x19

    if-gt v12, v5, :cond_c

    .line 17
    sget-object v5, Lel3;->b:Ljava/lang/String;

    const-string v7, "fugu"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v3, :cond_c

    if-ne v10, v4, :cond_c

    const/16 v11, 0xc

    :cond_c
    if-nez v14, :cond_d

    .line 18
    invoke-virtual/range {p0 .. p0}, Lhf3;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v1, Lhf3;->l:I

    if-ne v5, v0, :cond_d

    iget v5, v1, Lhf3;->j:I

    if-ne v5, v2, :cond_d

    iget v5, v1, Lhf3;->k:I

    if-ne v5, v11, :cond_d

    return-void

    .line 19
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lhf3;->c()V

    .line 20
    iput v0, v1, Lhf3;->l:I

    .line 21
    iput-boolean v3, v1, Lhf3;->o:Z

    .line 22
    iput v2, v1, Lhf3;->j:I

    .line 23
    iput v11, v1, Lhf3;->k:I

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x2

    .line 24
    :goto_6
    iput v0, v1, Lhf3;->m:I

    .line 25
    invoke-static {v9, v10}, Lel3;->i(II)I

    move-result v0

    iput v0, v1, Lhf3;->F:I

    if-eqz v3, :cond_11

    .line 26
    iget v0, v1, Lhf3;->m:I

    if-eq v0, v8, :cond_10

    if-ne v0, v6, :cond_f

    goto :goto_7

    :cond_f
    const v0, 0xc000

    goto :goto_9

    :cond_10
    :goto_7
    const/16 v0, 0x5000

    goto :goto_9

    .line 27
    :cond_11
    iget v0, v1, Lhf3;->m:I

    .line 28
    invoke-static {v2, v11, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    .line 29
    :goto_8
    invoke-static {v4}, Lc50;->D(Z)V

    shl-int/lit8 v2, v0, 0x2

    const-wide/32 v4, 0x3d090

    .line 30
    invoke-virtual {v1, v4, v5}, Lhf3;->j(J)J

    move-result-wide v4

    long-to-int v5, v4

    iget v4, v1, Lhf3;->F:I

    mul-int v4, v4, v5

    int-to-long v5, v0

    const-wide/32 v7, 0xb71b0

    .line 31
    invoke-virtual {v1, v7, v8}, Lhf3;->j(J)J

    move-result-wide v7

    iget v0, v1, Lhf3;->F:I

    int-to-long v9, v0

    mul-long v7, v7, v9

    .line 32
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    if-ge v2, v4, :cond_13

    move v0, v4

    goto :goto_9

    :cond_13
    if-le v2, v0, :cond_14

    goto :goto_9

    :cond_14
    move v0, v2

    .line 33
    :goto_9
    iput v0, v1, Lhf3;->p:I

    if-eqz v3, :cond_15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_a

    .line 34
    :cond_15
    iget v2, v1, Lhf3;->F:I

    div-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lhf3;->i(J)J

    move-result-wide v2

    :goto_a
    iput-wide v2, v1, Lhf3;->q:J

    .line 35
    iget-object v0, v1, Lhf3;->s:Lpe3;

    invoke-virtual {v1, v0}, Lhf3;->e(Lpe3;)Lpe3;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final e(Lpe3;)Lpe3;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lhf3;->o:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lpe3;->d:Lpe3;

    iput-object p1, p0, Lhf3;->s:Lpe3;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lpe3;

    iget-object v1, p0, Lhf3;->b:Luf3;

    iget v2, p1, Lpe3;->a:F

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget v3, Lel3;->a:I

    const/high16 v3, 0x41000000    # 8.0f

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 7
    iput v2, v1, Luf3;->e:F

    .line 8
    iget-object v1, p0, Lhf3;->b:Luf3;

    iget p1, p1, Lpe3;->b:F

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11
    iput v3, v1, Luf3;->f:F

    .line 12
    invoke-direct {v0, v2, p1}, Lpe3;-><init>(FF)V

    .line 13
    iget-object p1, p0, Lhf3;->r:Lpe3;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lhf3;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf3;

    .line 16
    iget-object p1, p1, Lmf3;->a:Lpe3;

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lhf3;->s:Lpe3;

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lpe3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lhf3;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iput-object v0, p0, Lhf3;->r:Lpe3;

    goto :goto_1

    .line 21
    :cond_3
    iput-object v0, p0, Lhf3;->s:Lpe3;

    .line 22
    :cond_4
    :goto_1
    iget-object p1, p0, Lhf3;->s:Lpe3;

    return-object p1
.end method

.method public final f(Ljava/nio/ByteBuffer;J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkf3;,
            Lof3;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 1
    iget-object v4, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lc50;->j(Z)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lhf3;->a()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_5

    .line 3
    iget-object v4, v1, Lhf3;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 4
    iget v4, v1, Lhf3;->X:I

    if-nez v4, :cond_2

    .line 5
    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lhf3;->n:I

    iget v10, v1, Lhf3;->j:I

    iget v11, v1, Lhf3;->k:I

    iget v12, v1, Lhf3;->m:I

    iget v13, v1, Lhf3;->p:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    goto :goto_2

    .line 6
    :cond_2
    new-instance v4, Landroid/media/AudioTrack;

    iget v8, v1, Lhf3;->n:I

    iget v9, v1, Lhf3;->j:I

    iget v10, v1, Lhf3;->k:I

    iget v11, v1, Lhf3;->m:I

    iget v12, v1, Lhf3;->p:I

    const/16 v21, 0x1

    iget v13, v1, Lhf3;->X:I

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v22, v13

    invoke-direct/range {v15 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    .line 7
    :goto_2
    iget-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 8
    iget-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 9
    iget v8, v1, Lhf3;->X:I

    if-eq v8, v4, :cond_3

    .line 10
    iput v4, v1, Lhf3;->X:I

    .line 11
    iget-object v8, v1, Lhf3;->d:Lqf3;

    .line 12
    iget-object v8, v8, Lqf3;->a:Lpf3;

    .line 13
    iget-object v8, v8, Lpf3;->T:Lye3;

    .line 14
    iget-object v9, v8, Lye3;->b:Lze3;

    if-eqz v9, :cond_3

    .line 15
    iget-object v9, v8, Lye3;->a:Landroid/os/Handler;

    new-instance v10, Lef3;

    invoke-direct {v10, v8, v4}, Lef3;-><init>(Lye3;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_3
    iget-object v4, v1, Lhf3;->g:Ljf3;

    iget-object v8, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual/range {p0 .. p0}, Lhf3;->p()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljf3;->a(Landroid/media/AudioTrack;Z)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lhf3;->n()V

    .line 18
    iput-boolean v5, v1, Lhf3;->Y:Z

    .line 19
    iget-boolean v4, v1, Lhf3;->W:Z

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual/range {p0 .. p0}, Lhf3;->b()V

    goto :goto_4

    .line 21
    :cond_4
    :try_start_0
    iget-object v0, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iput-object v7, v1, Lhf3;->i:Landroid/media/AudioTrack;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 23
    iput-object v7, v1, Lhf3;->i:Landroid/media/AudioTrack;

    .line 24
    throw v0

    .line 25
    :catch_0
    iput-object v7, v1, Lhf3;->i:Landroid/media/AudioTrack;

    .line 26
    :goto_3
    new-instance v0, Lkf3;

    iget v2, v1, Lhf3;->j:I

    iget v3, v1, Lhf3;->k:I

    iget v5, v1, Lhf3;->p:I

    invoke-direct {v0, v4, v2, v3, v5}, Lkf3;-><init>(IIII)V

    throw v0

    .line 27
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lhf3;->p()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_7

    .line 28
    iget-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 29
    iput-boolean v5, v1, Lhf3;->Y:Z

    return v5

    .line 30
    :cond_6
    iget-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_7

    iget-object v4, v1, Lhf3;->g:Ljf3;

    .line 31
    invoke-virtual {v4}, Ljf3;->e()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_7

    return v5

    .line 32
    :cond_7
    iget-boolean v4, v1, Lhf3;->Y:Z

    .line 33
    invoke-virtual/range {p0 .. p0}, Lhf3;->m()Z

    move-result v11

    iput-boolean v11, v1, Lhf3;->Y:Z

    if-eqz v4, :cond_8

    if-nez v11, :cond_8

    .line 34
    iget-object v4, v1, Lhf3;->i:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_8

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lhf3;->Z:J

    sub-long v20, v11, v13

    .line 36
    iget-object v4, v1, Lhf3;->d:Lqf3;

    iget v11, v1, Lhf3;->p:I

    iget-wide v12, v1, Lhf3;->q:J

    invoke-static {v12, v13}, Lzd3;->a(J)J

    move-result-wide v18

    .line 37
    iget-object v4, v4, Lqf3;->a:Lpf3;

    .line 38
    iget-object v4, v4, Lpf3;->T:Lye3;

    .line 39
    iget-object v12, v4, Lye3;->b:Lze3;

    if-eqz v12, :cond_8

    .line 40
    iget-object v12, v4, Lye3;->a:Landroid/os/Handler;

    new-instance v13, Lcf3;

    move-object v15, v13

    move-object/from16 v16, v4

    move/from16 v17, v11

    invoke-direct/range {v15 .. v21}, Lcf3;-><init>(Lye3;IJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :cond_8
    iget-object v4, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_17

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_9

    return v6

    .line 43
    :cond_9
    iget-boolean v4, v1, Lhf3;->o:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lhf3;->I:I

    if-nez v4, :cond_f

    .line 44
    iget v4, v1, Lhf3;->m:I

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x6

    if-eq v4, v11, :cond_e

    const/16 v11, 0x8

    if-ne v4, v11, :cond_a

    goto :goto_6

    :cond_a
    if-ne v4, v12, :cond_b

    const/16 v4, 0x600

    goto :goto_7

    :cond_b
    if-ne v4, v13, :cond_d

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v13

    const/4 v10, 0x3

    if-ne v4, v10, :cond_c

    goto :goto_5

    .line 46
    :cond_c
    sget-object v4, Lve3;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit8 v10, v10, 0x30

    shr-int/lit8 v10, v10, 0x4

    aget v13, v4, v10

    :goto_5
    mul-int/lit16 v4, v13, 0x100

    goto :goto_7

    .line 47
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    const-string v3, "Unexpected audio encoding: "

    invoke-static {v2, v3, v4}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v11, v4, 0x4

    .line 49
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/2addr v11, v6

    shl-int/2addr v11, v13

    add-int/2addr v4, v12

    .line 50
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xfc

    shr-int/2addr v4, v10

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    shl-int/2addr v4, v12

    .line 51
    :goto_7
    iput v4, v1, Lhf3;->I:I

    .line 52
    :cond_f
    iget-object v4, v1, Lhf3;->r:Lpe3;

    if-eqz v4, :cond_11

    .line 53
    invoke-virtual/range {p0 .. p0}, Lhf3;->l()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    .line 54
    :cond_10
    iget-object v4, v1, Lhf3;->h:Ljava/util/LinkedList;

    new-instance v5, Lmf3;

    iget-object v11, v1, Lhf3;->r:Lpe3;

    .line 55
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 56
    invoke-virtual/range {p0 .. p0}, Lhf3;->o()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lhf3;->i(J)J

    move-result-wide v14

    const/16 v16, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lmf3;-><init>(Lpe3;JJLgf3;)V

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    iput-object v7, v1, Lhf3;->r:Lpe3;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lhf3;->k()V

    .line 60
    :cond_11
    iget v4, v1, Lhf3;->J:I

    if-nez v4, :cond_12

    .line 61
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lhf3;->K:J

    .line 62
    iput v6, v1, Lhf3;->J:I

    goto :goto_a

    .line 63
    :cond_12
    iget-wide v4, v1, Lhf3;->K:J

    .line 64
    iget-boolean v8, v1, Lhf3;->o:Z

    if-eqz v8, :cond_13

    iget-wide v8, v1, Lhf3;->E:J

    goto :goto_8

    :cond_13
    iget-wide v8, v1, Lhf3;->D:J

    iget v10, v1, Lhf3;->C:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 65
    :goto_8
    invoke-virtual {v1, v8, v9}, Lhf3;->i(J)J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 66
    iget v4, v1, Lhf3;->J:I

    if-ne v4, v6, :cond_14

    sub-long v4, v8, v2

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v10, 0x30d40

    cmp-long v12, v4, v10

    if-lez v12, :cond_14

    const/16 v4, 0x50

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioTrack"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 69
    iput v4, v1, Lhf3;->J:I

    goto :goto_9

    :cond_14
    const/4 v4, 0x2

    .line 70
    :goto_9
    iget v5, v1, Lhf3;->J:I

    if-ne v5, v4, :cond_15

    .line 71
    iget-wide v4, v1, Lhf3;->K:J

    sub-long v8, v2, v8

    add-long/2addr v8, v4

    iput-wide v8, v1, Lhf3;->K:J

    .line 72
    iput v6, v1, Lhf3;->J:I

    .line 73
    iget-object v4, v1, Lhf3;->d:Lqf3;

    .line 74
    iget-object v4, v4, Lqf3;->a:Lpf3;

    .line 75
    iput-boolean v6, v4, Lpf3;->Z:Z

    .line 76
    :cond_15
    :goto_a
    iget-boolean v4, v1, Lhf3;->o:Z

    if-eqz v4, :cond_16

    .line 77
    iget-wide v4, v1, Lhf3;->E:J

    iget v8, v1, Lhf3;->I:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lhf3;->E:J

    goto :goto_b

    .line 78
    :cond_16
    iget-wide v4, v1, Lhf3;->D:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lhf3;->D:J

    .line 79
    :goto_b
    iput-object v0, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    .line 80
    :cond_17
    iget-boolean v0, v1, Lhf3;->o:Z

    if-eqz v0, :cond_18

    .line 81
    iget-object v0, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v2, v3}, Lhf3;->g(Ljava/nio/ByteBuffer;J)Z

    goto :goto_c

    .line 82
    :cond_18
    invoke-virtual {v1, v2, v3}, Lhf3;->h(J)V

    .line 83
    :goto_c
    iget-object v0, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    .line 84
    iput-object v7, v1, Lhf3;->Q:Ljava/nio/ByteBuffer;

    return v6

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/nio/ByteBuffer;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lof3;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    .line 2
    :cond_0
    iget-object p2, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-static {p2}, Lc50;->j(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    .line 5
    sget p2, Lel3;->a:I

    if-ge p2, v0, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 7
    iget-object v2, p0, Lhf3;->S:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    .line 8
    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lhf3;->S:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 10
    iget-object v3, p0, Lhf3;->S:[B

    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v1, p0, Lhf3;->T:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 14
    sget v2, Lel3;->a:I

    if-ge v2, v0, :cond_7

    .line 15
    iget-wide v2, p0, Lhf3;->G:J

    iget-object v0, p0, Lhf3;->g:Ljf3;

    .line 16
    invoke-virtual {v0}, Ljf3;->e()J

    move-result-wide v4

    iget v0, p0, Lhf3;->F:I

    int-to-long v6, v0

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 17
    iget v2, p0, Lhf3;->p:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_6

    .line 18
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    iget-object v2, p0, Lhf3;->i:Landroid/media/AudioTrack;

    iget-object v3, p0, Lhf3;->S:[B

    iget v4, p0, Lhf3;->T:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_8

    .line 20
    iget v2, p0, Lhf3;->T:I

    add-int/2addr v2, v0

    iput v2, p0, Lhf3;->T:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 22
    :cond_7
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 24
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lhf3;->Z:J

    if-ltz v0, :cond_c

    .line 25
    iget-boolean p1, p0, Lhf3;->o:Z

    if-nez p1, :cond_9

    .line 26
    iget-wide v2, p0, Lhf3;->G:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lhf3;->G:J

    :cond_9
    if-ne v0, p2, :cond_b

    if-eqz p1, :cond_a

    .line 27
    iget-wide p1, p0, Lhf3;->H:J

    iget v0, p0, Lhf3;->I:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lhf3;->H:J

    :cond_a
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    return p3

    :cond_b
    return v1

    .line 29
    :cond_c
    new-instance p1, Lof3;

    invoke-direct {p1, v0}, Lof3;-><init>(I)V

    throw p1
.end method

.method public final h(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lof3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhf3;->O:[Lxe3;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lhf3;->Q:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lxe3;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lhf3;->g(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lhf3;->O:[Lxe3;

    aget-object v3, v3, v1

    .line 6
    invoke-interface {v3, v2}, Lxe3;->c(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-interface {v3}, Lxe3;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final i(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1
    iget v0, p0, Lhf3;->j:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final j(J)J
    .locals 2

    .line 1
    iget v0, p0, Lhf3;->j:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final k()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lhf3;->c:[Lxe3;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    invoke-interface {v5}, Lxe3;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v5}, Lxe3;->flush()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7
    new-array v2, v1, [Lxe3;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxe3;

    iput-object v0, p0, Lhf3;->O:[Lxe3;

    .line 8
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    .line 9
    iget-object v0, p0, Lhf3;->O:[Lxe3;

    aget-object v0, v0, v3

    .line 10
    invoke-interface {v0}, Lxe3;->flush()V

    .line 11
    iget-object v2, p0, Lhf3;->P:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lxe3;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final l()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lof3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lhf3;->U:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lhf3;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhf3;->O:[Lxe3;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lhf3;->U:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_2
    iget v4, p0, Lhf3;->U:I

    iget-object v5, p0, Lhf3;->O:[Lxe3;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Lxe3;->f()V

    .line 6
    :cond_2
    invoke-virtual {p0, v7, v8}, Lhf3;->h(J)V

    .line 7
    invoke-interface {v4}, Lxe3;->j()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 8
    :cond_3
    iget v0, p0, Lhf3;->U:I

    add-int/2addr v0, v2

    iput v0, p0, Lhf3;->U:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lhf3;->g(Ljava/nio/ByteBuffer;J)Z

    .line 11
    iget-object v0, p0, Lhf3;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 12
    :cond_5
    iput v1, p0, Lhf3;->U:I

    return v2
.end method

.method public final m()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lhf3;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lhf3;->o()J

    move-result-wide v2

    iget-object v0, p0, Lhf3;->g:Ljf3;

    invoke-virtual {v0}, Ljf3;->e()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 3
    invoke-virtual {p0}, Lhf3;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhf3;->i:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lhf3;->i:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhf3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lel3;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lhf3;->N:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lhf3;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lhf3;->N:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method public final o()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lhf3;->o:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lhf3;->H:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lhf3;->G:J

    iget v2, p0, Lhf3;->F:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final p()Z
    .locals 2

    .line 1
    sget v0, Lel3;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lhf3;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
