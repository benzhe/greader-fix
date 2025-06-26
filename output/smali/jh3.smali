.class public final Ljh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig3;


# static fields
.field public static final y:I

.field public static final z:[B


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmh3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lal3;

.field public final c:Lal3;

.field public final d:Lal3;

.field public final e:Lal3;

.field public final f:Lal3;

.field public final g:[B

.field public final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lzg3;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lkh3;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:J

.field public m:I

.field public n:Lal3;

.field public o:J

.field public p:I

.field public q:J

.field public r:J

.field public s:Lmh3;

.field public t:I

.field public u:I

.field public v:I

.field public w:Lkg3;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "seig"

    .line 1
    invoke-static {v0}, Lel3;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljh3;->y:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Ljh3;->z:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lal3;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lal3;-><init>(I)V

    iput-object v0, p0, Ljh3;->f:Lal3;

    .line 3
    new-instance v0, Lal3;

    sget-object v2, Lzk3;->a:[B

    invoke-direct {v0, v2}, Lal3;-><init>([B)V

    iput-object v0, p0, Ljh3;->b:Lal3;

    .line 4
    new-instance v0, Lal3;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lal3;-><init>(I)V

    iput-object v0, p0, Ljh3;->c:Lal3;

    .line 5
    new-instance v0, Lal3;

    invoke-direct {v0}, Lal3;-><init>()V

    iput-object v0, p0, Ljh3;->d:Lal3;

    .line 6
    new-instance v0, Lal3;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lal3;-><init>(I)V

    iput-object v0, p0, Ljh3;->e:Lal3;

    new-array v0, v1, [B

    .line 7
    iput-object v0, p0, Ljh3;->g:[B

    .line 8
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ljh3;->h:Ljava/util/Stack;

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljh3;->i:Ljava/util/LinkedList;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ljh3;->a:Landroid/util/SparseArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Ljh3;->q:J

    .line 12
    iput-wide v0, p0, Ljh3;->r:J

    .line 13
    invoke-virtual {p0}, Ljh3;->h()V

    return-void
.end method

.method public static b(Lal3;ILth3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lal3;->h(I)V

    .line 2
    invoke-virtual {p0}, Lal3;->b()I

    move-result p1

    .line 3
    sget v0, Lah3;->b:I

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lal3;->o()I

    move-result v1

    .line 5
    iget v2, p2, Lth3;->e:I

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v2, p2, Lth3;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lal3;->m()I

    move-result p1

    invoke-virtual {p2, p1}, Lth3;->a(I)V

    .line 8
    iget-object p1, p2, Lth3;->p:Lal3;

    iget-object p1, p1, Lal3;->a:[B

    iget v1, p2, Lth3;->o:I

    invoke-virtual {p0, p1, v0, v1}, Lal3;->l([BII)V

    .line 9
    iget-object p0, p2, Lth3;->p:Lal3;

    invoke-virtual {p0, v0}, Lal3;->h(I)V

    .line 10
    iput-boolean v0, p2, Lth3;->q:Z

    return-void

    .line 11
    :cond_1
    new-instance p0, Lne3;

    iget p1, p2, Lth3;->e:I

    const/16 p2, 0x29

    const-string v0, "Length mismatch: "

    const-string v2, ", "

    invoke-static {p2, v0, v1, v2, p1}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lne3;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Lne3;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lne3;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch3;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzjo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch3;

    .line 3
    iget v6, v5, Lah3;->a:I

    sget v7, Lah3;->V:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lch3;->P0:Lal3;

    iget-object v5, v5, Lal3;->a:[B

    .line 6
    new-instance v6, Lal3;

    invoke-direct {v6, v5}, Lal3;-><init>([B)V

    .line 7
    iget v8, v6, Lal3;->c:I

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v6, v1}, Lal3;->h(I)V

    .line 9
    invoke-virtual {v6}, Lal3;->b()I

    move-result v8

    .line 10
    invoke-virtual {v6}, Lal3;->m()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v6}, Lal3;->b()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6}, Lal3;->b()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/16 v6, 0x25

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported pssh version: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsshAtomUtil"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lal3;->c()J

    move-result-wide v10

    invoke-virtual {v6}, Lal3;->c()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 15
    invoke-virtual {v6}, Lal3;->o()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 16
    invoke-virtual {v6, v7}, Lal3;->i(I)V

    .line 17
    :cond_5
    invoke-virtual {v6}, Lal3;->o()I

    move-result v7

    .line 18
    invoke-virtual {v6}, Lal3;->m()I

    move-result v8

    if-eq v7, v8, :cond_6

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 19
    :cond_6
    new-array v8, v7, [B

    .line 20
    iget-object v10, v6, Lal3;->a:[B

    iget v11, v6, Lal3;->b:I

    invoke-static {v10, v11, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v10, v6, Lal3;->b:I

    add-int/2addr v10, v7

    iput v10, v6, Lal3;->b:I

    .line 22
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 23
    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 24
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 25
    :cond_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzjo$zza;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzjo$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    return-object v2

    .line 26
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzjo;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzjo$zza;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzjo$zza;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Z[Lcom/google/android/gms/internal/ads/zzjo$zza;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lgg3;Lng3;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, Ljh3;->j:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_22

    if-eq v2, v7, :cond_1b

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_16

    if-ne v2, v11, :cond_c

    .line 2
    iget-object v2, v0, Ljh3;->s:Lmh3;

    if-nez v2, :cond_6

    .line 3
    iget-object v2, v0, Ljh3;->a:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    .line 5
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmh3;

    .line 6
    iget v11, v15, Lmh3;->g:I

    iget-object v5, v15, Lmh3;->a:Lth3;

    iget v8, v5, Lth3;->d:I

    if-eq v11, v8, :cond_1

    .line 7
    iget-object v5, v5, Lth3;->f:[J

    aget-wide v17, v5, v11

    cmp-long v5, v17, v9

    if-gez v5, :cond_1

    move-object v14, v15

    move-wide/from16 v9, v17

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    if-nez v14, :cond_4

    .line 8
    iget-wide v2, v0, Ljh3;->o:J

    move-object v4, v1

    check-cast v4, Leg3;

    .line 9
    iget-wide v7, v4, Leg3;->c:J

    sub-long/2addr v2, v7

    long-to-int v3, v2

    if-ltz v3, :cond_3

    .line 10
    invoke-virtual {v4, v3}, Leg3;->d(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljh3;->h()V

    const/4 v7, 0x0

    goto/16 :goto_c

    .line 12
    :cond_3
    new-instance v1, Lne3;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    iget-object v2, v14, Lmh3;->a:Lth3;

    iget-object v2, v2, Lth3;->f:[J

    iget v5, v14, Lmh3;->g:I

    aget-wide v8, v2, v5

    .line 14
    move-object v2, v1

    check-cast v2, Leg3;

    .line 15
    iget-wide v10, v2, Leg3;->c:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    if-gez v5, :cond_5

    const-string v5, "FragmentedMp4Extractor"

    const-string v8, "Ignoring negative offset to sample data."

    .line 16
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 17
    :cond_5
    invoke-virtual {v2, v5}, Leg3;->d(I)V

    .line 18
    iput-object v14, v0, Ljh3;->s:Lmh3;

    .line 19
    :cond_6
    iget-object v2, v0, Ljh3;->s:Lmh3;

    iget-object v5, v2, Lmh3;->a:Lth3;

    iget-object v8, v5, Lth3;->h:[I

    iget v9, v2, Lmh3;->e:I

    aget v8, v8, v9

    iput v8, v0, Ljh3;->t:I

    .line 20
    iget-boolean v8, v5, Lth3;->l:Z

    if-eqz v8, :cond_a

    .line 21
    iget-object v8, v5, Lth3;->p:Lal3;

    .line 22
    iget-object v10, v5, Lth3;->a:Lih3;

    iget v10, v10, Lih3;->a:I

    .line 23
    iget-object v11, v5, Lth3;->n:Lqh3;

    if-eqz v11, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    iget-object v11, v2, Lmh3;->c:Lrh3;

    iget-object v11, v11, Lrh3;->h:[Lqh3;

    aget-object v11, v11, v10

    .line 25
    :goto_2
    iget v10, v11, Lqh3;->a:I

    .line 26
    iget-object v5, v5, Lth3;->m:[Z

    aget-boolean v5, v5, v9

    .line 27
    iget-object v9, v0, Ljh3;->e:Lal3;

    iget-object v11, v9, Lal3;->a:[B

    if-eqz v5, :cond_8

    const/16 v12, 0x80

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    or-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    .line 28
    invoke-virtual {v9, v6}, Lal3;->h(I)V

    .line 29
    iget-object v2, v2, Lmh3;->b:Lhj3;

    .line 30
    iget-object v9, v0, Ljh3;->e:Lal3;

    invoke-virtual {v2, v9, v7}, Lhj3;->e(Lal3;I)V

    .line 31
    invoke-virtual {v2, v8, v10}, Lhj3;->e(Lal3;I)V

    if-nez v5, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 32
    :cond_9
    invoke-virtual {v8}, Lal3;->e()I

    move-result v5

    const/4 v9, -0x2

    .line 33
    invoke-virtual {v8, v9}, Lal3;->i(I)V

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v3

    .line 34
    invoke-virtual {v2, v8, v5}, Lhj3;->e(Lal3;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v5

    .line 35
    :goto_4
    iput v10, v0, Ljh3;->u:I

    .line 36
    iget v2, v0, Ljh3;->t:I

    add-int/2addr v2, v10

    iput v2, v0, Ljh3;->t:I

    goto :goto_5

    .line 37
    :cond_a
    iput v6, v0, Ljh3;->u:I

    .line 38
    :goto_5
    iget-object v2, v0, Ljh3;->s:Lmh3;

    iget-object v2, v2, Lmh3;->c:Lrh3;

    iget v2, v2, Lrh3;->g:I

    if-ne v2, v7, :cond_b

    .line 39
    iget v2, v0, Ljh3;->t:I

    sub-int/2addr v2, v4

    iput v2, v0, Ljh3;->t:I

    .line 40
    move-object v2, v1

    check-cast v2, Leg3;

    invoke-virtual {v2, v4}, Leg3;->d(I)V

    :cond_b
    const/4 v2, 0x4

    .line 41
    iput v2, v0, Ljh3;->j:I

    .line 42
    iput v6, v0, Ljh3;->v:I

    .line 43
    :cond_c
    iget-object v2, v0, Ljh3;->s:Lmh3;

    iget-object v4, v2, Lmh3;->a:Lth3;

    .line 44
    iget-object v5, v2, Lmh3;->c:Lrh3;

    .line 45
    iget-object v8, v2, Lmh3;->b:Lhj3;

    .line 46
    iget v2, v2, Lmh3;->e:I

    .line 47
    iget v9, v5, Lrh3;->k:I

    if-eqz v9, :cond_e

    .line 48
    iget-object v10, v0, Ljh3;->c:Lal3;

    iget-object v10, v10, Lal3;->a:[B

    .line 49
    aput-byte v6, v10, v6

    .line 50
    aput-byte v6, v10, v7

    .line 51
    aput-byte v6, v10, v3

    add-int/lit8 v3, v9, 0x1

    rsub-int/lit8 v9, v9, 0x4

    .line 52
    :goto_6
    iget v11, v0, Ljh3;->u:I

    iget v12, v0, Ljh3;->t:I

    if-ge v11, v12, :cond_f

    .line 53
    iget v11, v0, Ljh3;->v:I

    if-nez v11, :cond_d

    .line 54
    move-object v11, v1

    check-cast v11, Leg3;

    .line 55
    invoke-virtual {v11, v10, v9, v3, v6}, Leg3;->c([BIIZ)Z

    .line 56
    iget-object v11, v0, Ljh3;->c:Lal3;

    invoke-virtual {v11, v6}, Lal3;->h(I)V

    .line 57
    iget-object v11, v0, Ljh3;->c:Lal3;

    invoke-virtual {v11}, Lal3;->o()I

    move-result v11

    sub-int/2addr v11, v7

    iput v11, v0, Ljh3;->v:I

    .line 58
    iget-object v11, v0, Ljh3;->b:Lal3;

    invoke-virtual {v11, v6}, Lal3;->h(I)V

    .line 59
    iget-object v11, v0, Ljh3;->b:Lal3;

    const/4 v12, 0x4

    invoke-virtual {v8, v11, v12}, Lhj3;->e(Lal3;I)V

    .line 60
    iget-object v11, v0, Ljh3;->c:Lal3;

    invoke-virtual {v8, v11, v7}, Lhj3;->e(Lal3;I)V

    .line 61
    iget v11, v0, Ljh3;->u:I

    add-int/lit8 v11, v11, 0x5

    iput v11, v0, Ljh3;->u:I

    .line 62
    iget v11, v0, Ljh3;->t:I

    add-int/2addr v11, v9

    iput v11, v0, Ljh3;->t:I

    goto :goto_6

    .line 63
    :cond_d
    invoke-virtual {v8, v1, v11}, Lhj3;->b(Lgg3;I)I

    move-result v11

    .line 64
    iget v12, v0, Ljh3;->u:I

    add-int/2addr v12, v11

    iput v12, v0, Ljh3;->u:I

    .line 65
    iget v12, v0, Ljh3;->v:I

    sub-int/2addr v12, v11

    iput v12, v0, Ljh3;->v:I

    goto :goto_6

    .line 66
    :cond_e
    :goto_7
    iget v3, v0, Ljh3;->u:I

    iget v9, v0, Ljh3;->t:I

    if-ge v3, v9, :cond_f

    sub-int/2addr v9, v3

    .line 67
    invoke-virtual {v8, v1, v9}, Lhj3;->b(Lgg3;I)I

    move-result v3

    .line 68
    iget v9, v0, Ljh3;->u:I

    add-int/2addr v9, v3

    iput v9, v0, Ljh3;->u:I

    goto :goto_7

    .line 69
    :cond_f
    iget-object v3, v4, Lth3;->j:[J

    aget-wide v9, v3, v2

    iget-object v3, v4, Lth3;->i:[I

    aget v3, v3, v2

    int-to-long v11, v3

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    .line 70
    iget-boolean v3, v4, Lth3;->l:Z

    if-eqz v3, :cond_10

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    .line 71
    :goto_8
    iget-object v12, v4, Lth3;->k:[Z

    aget-boolean v2, v12, v2

    or-int/2addr v11, v2

    if-eqz v3, :cond_13

    .line 72
    iget-object v2, v4, Lth3;->n:Lqh3;

    if-eqz v2, :cond_11

    goto :goto_9

    .line 73
    :cond_11
    iget-object v2, v5, Lrh3;->h:[Lqh3;

    iget-object v3, v4, Lth3;->a:Lih3;

    iget v3, v3, Lih3;->a:I

    aget-object v2, v2, v3

    .line 74
    :goto_9
    iget-object v3, v0, Ljh3;->s:Lmh3;

    iget-object v5, v3, Lmh3;->i:Lqh3;

    if-eq v2, v5, :cond_12

    .line 75
    new-instance v3, Lqg3;

    iget-object v5, v2, Lqh3;->b:[B

    invoke-direct {v3, v5}, Lqg3;-><init>([B)V

    goto :goto_a

    .line 76
    :cond_12
    iget-object v3, v3, Lmh3;->h:Lqg3;

    :goto_a
    move-object v14, v3

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 77
    :goto_b
    iget-object v3, v0, Ljh3;->s:Lmh3;

    iput-object v14, v3, Lmh3;->h:Lqg3;

    .line 78
    iput-object v2, v3, Lmh3;->i:Lqh3;

    .line 79
    iget v12, v0, Ljh3;->t:I

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lhj3;->c(JIIILqg3;)V

    .line 80
    iget-object v2, v0, Ljh3;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 81
    iget-object v2, v0, Ljh3;->s:Lmh3;

    iget v3, v2, Lmh3;->e:I

    add-int/2addr v3, v7

    iput v3, v2, Lmh3;->e:I

    .line 82
    iget v3, v2, Lmh3;->f:I

    add-int/2addr v3, v7

    iput v3, v2, Lmh3;->f:I

    .line 83
    iget-object v4, v4, Lth3;->g:[I

    iget v5, v2, Lmh3;->g:I

    aget v4, v4, v5

    if-ne v3, v4, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 84
    iput v5, v2, Lmh3;->g:I

    .line 85
    iput v6, v2, Lmh3;->f:I

    const/4 v2, 0x0

    .line 86
    iput-object v2, v0, Ljh3;->s:Lmh3;

    :cond_14
    const/4 v2, 0x3

    .line 87
    iput v2, v0, Ljh3;->j:I

    :goto_c
    if-eqz v7, :cond_0

    return v6

    .line 88
    :cond_15
    iget-object v1, v0, Ljh3;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkh3;

    .line 89
    iget v2, v0, Ljh3;->p:I

    iget v1, v1, Lkh3;->a:I

    sub-int/2addr v2, v1

    iput v2, v0, Ljh3;->p:I

    const/4 v1, 0x0

    .line 90
    throw v1

    .line 91
    :cond_16
    iget-object v2, v0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v3, v2, :cond_18

    .line 92
    iget-object v4, v0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh3;

    iget-object v4, v4, Lmh3;->a:Lth3;

    .line 93
    iget-boolean v7, v4, Lth3;->q:Z

    if-eqz v7, :cond_17

    iget-wide v7, v4, Lth3;->c:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_17

    .line 94
    iget-object v4, v0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh3;

    move-object v5, v4

    move-wide v9, v7

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_18
    if-nez v5, :cond_19

    const/4 v2, 0x3

    .line 95
    iput v2, v0, Ljh3;->j:I

    goto/16 :goto_0

    .line 96
    :cond_19
    move-object v2, v1

    check-cast v2, Leg3;

    .line 97
    iget-wide v3, v2, Leg3;->c:J

    sub-long/2addr v9, v3

    long-to-int v3, v9

    if-ltz v3, :cond_1a

    .line 98
    invoke-virtual {v2, v3}, Leg3;->d(I)V

    .line 99
    iget-object v3, v5, Lmh3;->a:Lth3;

    .line 100
    iget-object v4, v3, Lth3;->p:Lal3;

    iget-object v4, v4, Lal3;->a:[B

    iget v5, v3, Lth3;->o:I

    .line 101
    invoke-virtual {v2, v4, v6, v5, v6}, Leg3;->c([BIIZ)Z

    .line 102
    iget-object v2, v3, Lth3;->p:Lal3;

    invoke-virtual {v2, v6}, Lal3;->h(I)V

    .line 103
    iput-boolean v6, v3, Lth3;->q:Z

    goto/16 :goto_0

    .line 104
    :cond_1a
    new-instance v1, Lne3;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_1b
    iget-wide v8, v0, Ljh3;->l:J

    long-to-int v2, v8

    iget v5, v0, Ljh3;->m:I

    sub-int/2addr v2, v5

    .line 106
    iget-object v5, v0, Ljh3;->n:Lal3;

    if-eqz v5, :cond_21

    .line 107
    iget-object v5, v5, Lal3;->a:[B

    move-object v8, v1

    check-cast v8, Leg3;

    .line 108
    invoke-virtual {v8, v5, v4, v2, v6}, Leg3;->c([BIIZ)Z

    .line 109
    new-instance v2, Lch3;

    iget v5, v0, Ljh3;->k:I

    iget-object v9, v0, Ljh3;->n:Lal3;

    invoke-direct {v2, v5, v9}, Lch3;-><init>(ILal3;)V

    .line 110
    iget-wide v8, v8, Leg3;->c:J

    .line 111
    iget-object v5, v0, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 112
    iget-object v3, v0, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzg3;

    .line 113
    iget-object v3, v3, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 114
    :cond_1c
    iget v5, v2, Lah3;->a:I

    sget v10, Lah3;->B:I

    if-ne v5, v10, :cond_20

    .line 115
    iget-object v2, v2, Lch3;->P0:Lal3;

    .line 116
    invoke-virtual {v2, v4}, Lal3;->h(I)V

    .line 117
    invoke-virtual {v2}, Lal3;->b()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x4

    .line 118
    invoke-virtual {v2, v5}, Lal3;->i(I)V

    .line 119
    invoke-virtual {v2}, Lal3;->n()J

    move-result-wide v17

    if-nez v4, :cond_1d

    .line 120
    invoke-virtual {v2}, Lal3;->n()J

    move-result-wide v4

    .line 121
    invoke-virtual {v2}, Lal3;->n()J

    move-result-wide v10

    goto :goto_e

    .line 122
    :cond_1d
    invoke-virtual {v2}, Lal3;->p()J

    move-result-wide v4

    .line 123
    invoke-virtual {v2}, Lal3;->p()J

    move-result-wide v10

    :goto_e
    add-long/2addr v8, v10

    const-wide/32 v12, 0xf4240

    move-wide v10, v4

    move-wide/from16 v14, v17

    .line 124
    invoke-static/range {v10 .. v15}, Lel3;->b(JJJ)J

    move-result-wide v19

    .line 125
    invoke-virtual {v2, v3}, Lal3;->i(I)V

    .line 126
    invoke-virtual {v2}, Lal3;->e()I

    move-result v3

    .line 127
    new-array v14, v3, [I

    .line 128
    new-array v15, v3, [J

    .line 129
    new-array v12, v3, [J

    .line 130
    new-array v13, v3, [J

    move-wide/from16 v10, v19

    :goto_f
    if-ge v6, v3, :cond_1f

    .line 131
    invoke-virtual {v2}, Lal3;->b()I

    move-result v16

    const/high16 v21, -0x80000000

    and-int v21, v16, v21

    if-nez v21, :cond_1e

    .line 132
    invoke-virtual {v2}, Lal3;->n()J

    move-result-wide v21

    const v23, 0x7fffffff

    and-int v16, v16, v23

    .line 133
    aput v16, v14, v6

    .line 134
    aput-wide v8, v15, v6

    .line 135
    aput-wide v10, v13, v6

    add-long v4, v4, v21

    const-wide/32 v21, 0xf4240

    move-wide v10, v4

    move/from16 v16, v3

    move-object v7, v12

    move-object v3, v13

    move-wide/from16 v12, v21

    move-wide/from16 v21, v4

    move-object v4, v14

    move-object v5, v15

    move-wide/from16 v14, v17

    .line 136
    invoke-static/range {v10 .. v15}, Lel3;->b(JJJ)J

    move-result-wide v10

    .line 137
    aget-wide v12, v3, v6

    sub-long v12, v10, v12

    aput-wide v12, v7, v6

    const/4 v12, 0x4

    .line 138
    invoke-virtual {v2, v12}, Lal3;->i(I)V

    .line 139
    aget v13, v4, v6

    int-to-long v13, v13

    add-long/2addr v8, v13

    add-int/lit8 v6, v6, 0x1

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object v12, v7

    move/from16 v3, v16

    move-wide/from16 v4, v21

    const/4 v7, 0x1

    goto :goto_f

    .line 140
    :cond_1e
    new-instance v1, Lne3;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    move-object v7, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    .line 141
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lfg3;

    invoke-direct {v6, v4, v5, v7, v3}, Lfg3;-><init>([I[J[J[J)V

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 142
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ljh3;->r:J

    .line 143
    iget-object v3, v0, Ljh3;->w:Lkg3;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lmg3;

    check-cast v3, Lmi3;

    invoke-virtual {v3, v2}, Lmi3;->j(Lmg3;)V

    const/4 v2, 0x1

    .line 144
    iput-boolean v2, v0, Ljh3;->x:Z

    goto :goto_10

    .line 145
    :cond_20
    sget v2, Lah3;->G0:I

    goto :goto_10

    .line 146
    :cond_21
    move-object v3, v1

    check-cast v3, Leg3;

    invoke-virtual {v3, v2}, Leg3;->d(I)V

    .line 147
    :goto_10
    move-object v2, v1

    check-cast v2, Leg3;

    .line 148
    iget-wide v2, v2, Leg3;->c:J

    .line 149
    invoke-virtual {v0, v2, v3}, Ljh3;->g(J)V

    goto/16 :goto_0

    .line 150
    :cond_22
    iget v2, v0, Ljh3;->m:I

    if-nez v2, :cond_24

    .line 151
    iget-object v2, v0, Ljh3;->f:Lal3;

    iget-object v2, v2, Lal3;->a:[B

    move-object v5, v1

    check-cast v5, Leg3;

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v4, v7}, Leg3;->c([BIIZ)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_18

    .line 152
    :cond_23
    iput v4, v0, Ljh3;->m:I

    .line 153
    iget-object v2, v0, Ljh3;->f:Lal3;

    invoke-virtual {v2, v6}, Lal3;->h(I)V

    .line 154
    iget-object v2, v0, Ljh3;->f:Lal3;

    invoke-virtual {v2}, Lal3;->n()J

    move-result-wide v7

    iput-wide v7, v0, Ljh3;->l:J

    .line 155
    iget-object v2, v0, Ljh3;->f:Lal3;

    invoke-virtual {v2}, Lal3;->b()I

    move-result v2

    iput v2, v0, Ljh3;->k:I

    .line 156
    :cond_24
    iget-wide v7, v0, Ljh3;->l:J

    const-wide/16 v9, 0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_25

    .line 157
    iget-object v2, v0, Ljh3;->f:Lal3;

    iget-object v2, v2, Lal3;->a:[B

    move-object v5, v1

    check-cast v5, Leg3;

    .line 158
    invoke-virtual {v5, v2, v4, v4, v6}, Leg3;->c([BIIZ)Z

    .line 159
    iget v2, v0, Ljh3;->m:I

    add-int/2addr v2, v4

    iput v2, v0, Ljh3;->m:I

    .line 160
    iget-object v2, v0, Ljh3;->f:Lal3;

    invoke-virtual {v2}, Lal3;->p()J

    move-result-wide v7

    iput-wide v7, v0, Ljh3;->l:J

    .line 161
    :cond_25
    iget-wide v7, v0, Ljh3;->l:J

    iget v2, v0, Ljh3;->m:I

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_33

    .line 162
    move-object v2, v1

    check-cast v2, Leg3;

    .line 163
    iget-wide v7, v2, Leg3;->c:J

    sub-long/2addr v7, v9

    .line 164
    iget v5, v0, Ljh3;->k:I

    sget v9, Lah3;->L:I

    if-ne v5, v9, :cond_26

    .line 165
    iget-object v5, v0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v5, :cond_26

    .line 166
    iget-object v10, v0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmh3;

    iget-object v10, v10, Lmh3;->a:Lth3;

    .line 167
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iput-wide v7, v10, Lth3;->c:J

    .line 169
    iput-wide v7, v10, Lth3;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 170
    :cond_26
    iget v5, v0, Ljh3;->k:I

    sget v9, Lah3;->i:I

    if-ne v5, v9, :cond_28

    const/4 v9, 0x0

    .line 171
    iput-object v9, v0, Ljh3;->s:Lmh3;

    .line 172
    iget-wide v4, v0, Ljh3;->l:J

    add-long/2addr v7, v4

    iput-wide v7, v0, Ljh3;->o:J

    .line 173
    iget-boolean v2, v0, Ljh3;->x:Z

    if-nez v2, :cond_27

    .line 174
    iget-object v2, v0, Ljh3;->w:Lkg3;

    new-instance v4, Log3;

    iget-wide v5, v0, Ljh3;->q:J

    invoke-direct {v4, v5, v6}, Log3;-><init>(J)V

    check-cast v2, Lmi3;

    .line 175
    iput-object v4, v2, Lmi3;->u:Lmg3;

    .line 176
    iget-object v4, v2, Lmi3;->r:Landroid/os/Handler;

    iget-object v2, v2, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    .line 177
    iput-boolean v2, v0, Ljh3;->x:Z

    .line 178
    :cond_27
    iput v3, v0, Ljh3;->j:I

    goto :goto_14

    .line 179
    :cond_28
    sget v3, Lah3;->C:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->E:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->F:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->G:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->H:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->L:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->M:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->N:I

    if-eq v5, v3, :cond_2a

    sget v3, Lah3;->Q:I

    if-ne v5, v3, :cond_29

    goto :goto_12

    :cond_29
    const/4 v3, 0x0

    goto :goto_13

    :cond_2a
    :goto_12
    const/4 v3, 0x1

    :goto_13
    if-eqz v3, :cond_2c

    .line 180
    iget-wide v2, v2, Leg3;->c:J

    .line 181
    iget-wide v4, v0, Ljh3;->l:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 182
    iget-object v4, v0, Ljh3;->h:Ljava/util/Stack;

    new-instance v5, Lzg3;

    iget v6, v0, Ljh3;->k:I

    invoke-direct {v5, v6, v2, v3}, Lzg3;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 183
    iget-wide v4, v0, Ljh3;->l:J

    iget v6, v0, Ljh3;->m:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2b

    .line 184
    invoke-virtual {v0, v2, v3}, Ljh3;->g(J)V

    goto :goto_14

    .line 185
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Ljh3;->h()V

    :goto_14
    const/4 v2, 0x1

    goto/16 :goto_17

    .line 186
    :cond_2c
    sget v2, Lah3;->T:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->S:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->D:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->B:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->U:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->x:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->y:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->P:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->z:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->A:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->V:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->d0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->e0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->i0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->h0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->f0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->g0:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->R:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->O:I

    if-eq v5, v2, :cond_2e

    sget v2, Lah3;->G0:I

    if-ne v5, v2, :cond_2d

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    :cond_2e
    :goto_15
    const/4 v2, 0x1

    :goto_16
    const-wide/32 v7, 0x7fffffff

    if-eqz v2, :cond_31

    .line 187
    iget v2, v0, Ljh3;->m:I

    if-ne v2, v4, :cond_30

    .line 188
    iget-wide v2, v0, Ljh3;->l:J

    cmp-long v5, v2, v7

    if-gtz v5, :cond_2f

    .line 189
    new-instance v5, Lal3;

    long-to-int v3, v2

    invoke-direct {v5, v3}, Lal3;-><init>(I)V

    iput-object v5, v0, Ljh3;->n:Lal3;

    .line 190
    iget-object v2, v0, Ljh3;->f:Lal3;

    iget-object v2, v2, Lal3;->a:[B

    iget-object v3, v5, Lal3;->a:[B

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 191
    iput v2, v0, Ljh3;->j:I

    goto :goto_17

    .line 192
    :cond_2f
    new-instance v1, Lne3;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_30
    new-instance v1, Lne3;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_31
    iget-wide v2, v0, Ljh3;->l:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_32

    const/4 v2, 0x0

    .line 195
    iput-object v2, v0, Ljh3;->n:Lal3;

    const/4 v2, 0x1

    .line 196
    iput v2, v0, Ljh3;->j:I

    :goto_17
    const/4 v6, 0x1

    :goto_18
    if-nez v6, :cond_0

    const/4 v1, -0x1

    return v1

    .line 197
    :cond_32
    new-instance v1, Lne3;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_33
    new-instance v1, Lne3;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lne3;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(Lkg3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljh3;->w:Lkg3;

    return-void
.end method

.method public final e(Lgg3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Loh3;->a(Lgg3;Z)Z

    move-result p1

    return p1
.end method

.method public final f(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 2
    iget-object p4, p0, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmh3;

    invoke-virtual {p4}, Lmh3;->a()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ljh3;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 4
    iput p2, p0, Ljh3;->p:I

    .line 5
    iget-object p1, p0, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 6
    invoke-virtual {p0}, Ljh3;->h()V

    return-void
.end method

.method public final g(J)V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lne3;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, v1, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, v1, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzg3;

    iget-wide v2, v2, Lzg3;->P0:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_47

    .line 2
    iget-object v2, v1, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzg3;

    .line 3
    iget v3, v2, Lah3;->a:I

    sget v4, Lah3;->C:I

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v3, v4, :cond_a

    const-string v3, "Unexpected moov box."

    .line 4
    invoke-static {v7, v3}, Lc50;->E(ZLjava/lang/Object;)V

    .line 5
    iget-object v3, v2, Lzg3;->Q0:Ljava/util/List;

    invoke-static {v3}, Ljh3;->d(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v3

    .line 6
    sget v4, Lah3;->N:I

    invoke-virtual {v2, v4}, Lzg3;->c(I)Lzg3;

    move-result-object v4

    .line 7
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iget-object v10, v4, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    move-wide v15, v8

    :goto_1
    if-ge v11, v10, :cond_4

    .line 9
    iget-object v8, v4, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch3;

    .line 10
    iget v9, v8, Lah3;->a:I

    sget v12, Lah3;->z:I

    if-ne v9, v12, :cond_1

    .line 11
    iget-object v8, v8, Lch3;->P0:Lal3;

    .line 12
    invoke-virtual {v8, v5}, Lal3;->h(I)V

    .line 13
    invoke-virtual {v8}, Lal3;->b()I

    move-result v5

    .line 14
    invoke-virtual {v8}, Lal3;->o()I

    move-result v9

    sub-int/2addr v9, v7

    .line 15
    invoke-virtual {v8}, Lal3;->o()I

    move-result v12

    .line 16
    invoke-virtual {v8}, Lal3;->o()I

    move-result v13

    .line 17
    invoke-virtual {v8}, Lal3;->b()I

    move-result v8

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lih3;

    invoke-direct {v7, v9, v12, v13, v8}, Lih3;-><init>(IIII)V

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 19
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lih3;

    invoke-virtual {v14, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 20
    :cond_1
    sget v5, Lah3;->O:I

    if-ne v9, v5, :cond_3

    .line 21
    iget-object v5, v8, Lch3;->P0:Lal3;

    .line 22
    invoke-virtual {v5, v6}, Lal3;->h(I)V

    .line 23
    invoke-virtual {v5}, Lal3;->b()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_2

    .line 24
    invoke-virtual {v5}, Lal3;->n()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lal3;->p()J

    move-result-wide v7

    :goto_2
    move-wide v15, v7

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0xc

    const/4 v7, 0x1

    goto :goto_1

    .line 25
    :cond_4
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 26
    iget-object v5, v2, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_6

    .line 27
    iget-object v7, v2, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lzg3;

    .line 28
    iget v7, v8, Lah3;->a:I

    sget v9, Lah3;->E:I

    if-ne v7, v9, :cond_5

    .line 29
    sget v7, Lah3;->D:I

    invoke-virtual {v2, v7}, Lzg3;->b(I)Lch3;

    move-result-object v9

    const/4 v13, 0x0

    move-wide v10, v15

    move-object v12, v3

    invoke-static/range {v8 .. v13}, Lbh3;->b(Lzg3;Lch3;JLcom/google/android/gms/internal/ads/zzjo;Z)Lrh3;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 30
    iget v8, v7, Lrh3;->a:I

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 31
    :cond_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 32
    iget-object v3, v1, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_7

    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrh3;

    .line 34
    new-instance v6, Lmh3;

    iget-object v7, v1, Ljh3;->w:Lkg3;

    iget v8, v5, Lrh3;->b:I

    check-cast v7, Lmi3;

    invoke-virtual {v7, v3, v8}, Lmi3;->o(II)Lhj3;

    move-result-object v7

    invoke-direct {v6, v7}, Lmh3;-><init>(Lhj3;)V

    .line 35
    iget v7, v5, Lrh3;->a:I

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lih3;

    .line 36
    iput-object v5, v6, Lmh3;->c:Lrh3;

    .line 37
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object v7, v6, Lmh3;->d:Lih3;

    .line 39
    iget-object v7, v6, Lmh3;->b:Lhj3;

    iget-object v8, v5, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v7, v8}, Lhj3;->g(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 40
    invoke-virtual {v6}, Lmh3;->a()V

    .line 41
    iget-object v7, v1, Ljh3;->a:Landroid/util/SparseArray;

    iget v8, v5, Lrh3;->a:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-wide v6, v1, Ljh3;->q:J

    iget-wide v8, v5, Lrh3;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Ljh3;->q:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 43
    :cond_7
    iget-object v2, v1, Ljh3;->w:Lkg3;

    check-cast v2, Lmi3;

    invoke-virtual {v2}, Lmi3;->p()V

    goto/16 :goto_0

    .line 44
    :cond_8
    iget-object v3, v1, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lc50;->D(Z)V

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_0

    .line 45
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrh3;

    .line 46
    iget-object v6, v1, Ljh3;->a:Landroid/util/SparseArray;

    iget v7, v5, Lrh3;->a:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmh3;

    iget v7, v5, Lrh3;->a:I

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lih3;

    .line 47
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object v5, v6, Lmh3;->c:Lrh3;

    .line 49
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object v7, v6, Lmh3;->d:Lih3;

    .line 51
    iget-object v7, v6, Lmh3;->b:Lhj3;

    iget-object v5, v5, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v7, v5}, Lhj3;->g(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 52
    invoke-virtual {v6}, Lmh3;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 53
    :cond_a
    sget v4, Lah3;->L:I

    if-ne v3, v4, :cond_45

    .line 54
    iget-object v3, v1, Ljh3;->a:Landroid/util/SparseArray;

    iget-object v1, v1, Ljh3;->g:[B

    .line 55
    iget-object v4, v2, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    :goto_8
    if-ge v5, v4, :cond_43

    .line 56
    iget-object v8, v2, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzg3;

    .line 57
    iget v9, v8, Lah3;->a:I

    sget v10, Lah3;->M:I

    if-ne v9, v10, :cond_42

    .line 58
    sget v9, Lah3;->y:I

    invoke-virtual {v8, v9}, Lzg3;->b(I)Lch3;

    move-result-object v9

    .line 59
    iget-object v9, v9, Lch3;->P0:Lal3;

    .line 60
    invoke-virtual {v9, v6}, Lal3;->h(I)V

    .line 61
    invoke-virtual {v9}, Lal3;->b()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    .line 62
    invoke-virtual {v9}, Lal3;->b()I

    move-result v11

    .line 63
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmh3;

    if-nez v11, :cond_b

    const/4 v11, 0x0

    goto :goto_d

    :cond_b
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_c

    .line 64
    invoke-virtual {v9}, Lal3;->p()J

    move-result-wide v12

    .line 65
    iget-object v14, v11, Lmh3;->a:Lth3;

    iput-wide v12, v14, Lth3;->b:J

    .line 66
    iput-wide v12, v14, Lth3;->c:J

    .line 67
    :cond_c
    iget-object v12, v11, Lmh3;->d:Lih3;

    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_d

    .line 68
    invoke-virtual {v9}, Lal3;->o()I

    move-result v13

    sub-int/2addr v13, v7

    goto :goto_9

    :cond_d
    iget v13, v12, Lih3;->a:I

    :goto_9
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_e

    .line 69
    invoke-virtual {v9}, Lal3;->o()I

    move-result v14

    goto :goto_a

    :cond_e
    iget v14, v12, Lih3;->b:I

    :goto_a
    and-int/lit8 v15, v10, 0x10

    if-eqz v15, :cond_f

    .line 70
    invoke-virtual {v9}, Lal3;->o()I

    move-result v15

    goto :goto_b

    :cond_f
    iget v15, v12, Lih3;->c:I

    :goto_b
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_10

    .line 71
    invoke-virtual {v9}, Lal3;->o()I

    move-result v9

    goto :goto_c

    :cond_10
    iget v9, v12, Lih3;->d:I

    .line 72
    :goto_c
    iget-object v10, v11, Lmh3;->a:Lth3;

    new-instance v12, Lih3;

    invoke-direct {v12, v13, v14, v15, v9}, Lih3;-><init>(IIII)V

    iput-object v12, v10, Lth3;->a:Lih3;

    :goto_d
    if-eqz v11, :cond_42

    .line 73
    iget-object v9, v11, Lmh3;->a:Lth3;

    .line 74
    iget-wide v12, v9, Lth3;->r:J

    .line 75
    invoke-virtual {v11}, Lmh3;->a()V

    .line 76
    sget v10, Lah3;->x:I

    invoke-virtual {v8, v10}, Lzg3;->b(I)Lch3;

    move-result-object v14

    if-eqz v14, :cond_12

    .line 77
    invoke-virtual {v8, v10}, Lzg3;->b(I)Lch3;

    move-result-object v10

    iget-object v10, v10, Lch3;->P0:Lal3;

    .line 78
    invoke-virtual {v10, v6}, Lal3;->h(I)V

    .line 79
    invoke-virtual {v10}, Lal3;->b()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v7, :cond_11

    .line 80
    invoke-virtual {v10}, Lal3;->p()J

    move-result-wide v12

    goto :goto_e

    :cond_11
    invoke-virtual {v10}, Lal3;->n()J

    move-result-wide v12

    .line 81
    :cond_12
    :goto_e
    iget-object v6, v8, Lzg3;->Q0:Ljava/util/List;

    .line 82
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v7, :cond_14

    .line 83
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lch3;

    move/from16 v16, v4

    .line 84
    iget v4, v3, Lah3;->a:I

    move-wide/from16 v18, v12

    sget v12, Lah3;->A:I

    if-ne v4, v12, :cond_13

    .line 85
    iget-object v3, v3, Lch3;->P0:Lal3;

    const/16 v4, 0xc

    .line 86
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    .line 87
    invoke-virtual {v3}, Lal3;->o()I

    move-result v3

    if-lez v3, :cond_13

    add-int/2addr v10, v3

    add-int/lit8 v14, v14, 0x1

    :cond_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move-object/from16 v3, v17

    move-wide/from16 v12, v18

    goto :goto_f

    :cond_14
    move-object/from16 v17, v3

    move/from16 v16, v4

    move-wide/from16 v18, v12

    const/4 v3, 0x0

    .line 88
    iput v3, v11, Lmh3;->g:I

    .line 89
    iput v3, v11, Lmh3;->f:I

    .line 90
    iput v3, v11, Lmh3;->e:I

    .line 91
    iget-object v3, v11, Lmh3;->a:Lth3;

    .line 92
    iput v14, v3, Lth3;->d:I

    .line 93
    iput v10, v3, Lth3;->e:I

    .line 94
    iget-object v4, v3, Lth3;->g:[I

    if-eqz v4, :cond_15

    array-length v4, v4

    if-ge v4, v14, :cond_16

    .line 95
    :cond_15
    new-array v4, v14, [J

    iput-object v4, v3, Lth3;->f:[J

    .line 96
    new-array v4, v14, [I

    iput-object v4, v3, Lth3;->g:[I

    .line 97
    :cond_16
    iget-object v4, v3, Lth3;->h:[I

    if-eqz v4, :cond_17

    array-length v4, v4

    if-ge v4, v10, :cond_18

    :cond_17
    mul-int/lit8 v10, v10, 0x7d

    .line 98
    div-int/lit8 v10, v10, 0x64

    .line 99
    new-array v4, v10, [I

    iput-object v4, v3, Lth3;->h:[I

    .line 100
    new-array v4, v10, [I

    iput-object v4, v3, Lth3;->i:[I

    .line 101
    new-array v4, v10, [J

    iput-object v4, v3, Lth3;->j:[J

    .line 102
    new-array v4, v10, [Z

    iput-object v4, v3, Lth3;->k:[Z

    .line 103
    new-array v4, v10, [Z

    iput-object v4, v3, Lth3;->m:[Z

    :cond_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_10
    if-ge v3, v7, :cond_2b

    .line 104
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lch3;

    .line 105
    iget v13, v12, Lah3;->a:I

    sget v14, Lah3;->A:I

    if-ne v13, v14, :cond_2a

    add-int/lit8 v13, v4, 0x1

    .line 106
    iget-object v12, v12, Lch3;->P0:Lal3;

    const/16 v14, 0x8

    .line 107
    invoke-virtual {v12, v14}, Lal3;->h(I)V

    .line 108
    invoke-virtual {v12}, Lal3;->b()I

    move-result v14

    const v15, 0xffffff

    and-int/2addr v14, v15

    .line 109
    iget-object v15, v11, Lmh3;->c:Lrh3;

    move-object/from16 v20, v6

    .line 110
    iget-object v6, v11, Lmh3;->a:Lth3;

    move/from16 v21, v7

    .line 111
    iget-object v7, v6, Lth3;->a:Lih3;

    move/from16 v22, v13

    .line 112
    iget-object v13, v6, Lth3;->g:[I

    invoke-virtual {v12}, Lal3;->o()I

    move-result v23

    aput v23, v13, v4

    .line 113
    iget-object v13, v6, Lth3;->f:[J

    move-object/from16 v23, v1

    iget-wide v0, v6, Lth3;->b:J

    aput-wide v0, v13, v4

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_19

    .line 114
    aget-wide v0, v13, v4

    move-object/from16 v24, v2

    invoke-virtual {v12}, Lal3;->b()I

    move-result v2

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    int-to-long v8, v2

    add-long/2addr v0, v8

    aput-wide v0, v13, v4

    goto :goto_11

    :cond_19
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_11
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    .line 115
    :goto_12
    iget v1, v7, Lih3;->d:I

    if-eqz v0, :cond_1b

    .line 116
    invoke-virtual {v12}, Lal3;->o()I

    move-result v1

    :cond_1b
    and-int/lit16 v2, v14, 0x100

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    :goto_13
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    goto :goto_14

    :cond_1d
    const/4 v8, 0x0

    :goto_14
    and-int/lit16 v9, v14, 0x400

    if-eqz v9, :cond_1e

    const/4 v9, 0x1

    goto :goto_15

    :cond_1e
    const/4 v9, 0x0

    :goto_15
    and-int/lit16 v13, v14, 0x800

    if-eqz v13, :cond_1f

    const/4 v13, 0x1

    goto :goto_16

    :cond_1f
    const/4 v13, 0x0

    .line 117
    :goto_16
    iget-object v14, v15, Lrh3;->i:[J

    if-eqz v14, :cond_20

    move/from16 v27, v1

    array-length v1, v14

    move/from16 v28, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_21

    const/4 v1, 0x0

    aget-wide v29, v14, v1

    const-wide/16 v31, 0x0

    cmp-long v5, v29, v31

    if-nez v5, :cond_21

    .line 118
    iget-object v5, v15, Lrh3;->j:[J

    aget-wide v29, v5, v1

    const-wide/16 v31, 0x3e8

    move v1, v13

    iget-wide v13, v15, Lrh3;->c:J

    move-wide/from16 v33, v13

    invoke-static/range {v29 .. v34}, Lel3;->b(JJJ)J

    move-result-wide v13

    goto :goto_17

    :cond_20
    move/from16 v27, v1

    move/from16 v28, v5

    :cond_21
    move v1, v13

    const-wide/16 v13, 0x0

    .line 119
    :goto_17
    iget-object v5, v6, Lth3;->h:[I

    move-object/from16 v29, v11

    .line 120
    iget-object v11, v6, Lth3;->i:[I

    move/from16 v30, v3

    .line 121
    iget-object v3, v6, Lth3;->j:[J

    move-object/from16 v31, v5

    .line 122
    iget-object v5, v6, Lth3;->k:[Z

    move-object/from16 v32, v5

    .line 123
    iget-object v5, v6, Lth3;->g:[I

    aget v5, v5, v4

    add-int/2addr v5, v10

    move-wide/from16 v39, v13

    .line 124
    iget-wide v13, v15, Lrh3;->c:J

    if-lez v4, :cond_22

    move-object v15, v3

    .line 125
    iget-wide v3, v6, Lth3;->r:J

    goto :goto_18

    :cond_22
    move-object v15, v3

    move-wide/from16 v3, v18

    :goto_18
    if-ge v10, v5, :cond_29

    if-eqz v2, :cond_23

    .line 126
    invoke-virtual {v12}, Lal3;->o()I

    move-result v33

    move/from16 v41, v2

    move/from16 v2, v33

    goto :goto_19

    :cond_23
    move/from16 v41, v2

    .line 127
    iget v2, v7, Lih3;->b:I

    :goto_19
    if-eqz v8, :cond_24

    .line 128
    invoke-virtual {v12}, Lal3;->o()I

    move-result v33

    move/from16 v42, v5

    move/from16 v5, v33

    goto :goto_1a

    :cond_24
    move/from16 v42, v5

    iget v5, v7, Lih3;->c:I

    :goto_1a
    if-nez v10, :cond_25

    if-eqz v0, :cond_25

    move/from16 v43, v0

    move/from16 v0, v27

    goto :goto_1b

    :cond_25
    if-eqz v9, :cond_26

    .line 129
    invoke-virtual {v12}, Lal3;->b()I

    move-result v33

    move/from16 v43, v0

    move/from16 v0, v33

    goto :goto_1b

    :cond_26
    move/from16 v43, v0

    iget v0, v7, Lih3;->d:I

    :goto_1b
    if-eqz v1, :cond_27

    move/from16 v44, v1

    .line 130
    invoke-virtual {v12}, Lal3;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    move-object/from16 v45, v7

    move/from16 v46, v8

    int-to-long v7, v1

    .line 131
    div-long/2addr v7, v13

    long-to-int v1, v7

    aput v1, v11, v10

    goto :goto_1c

    :cond_27
    move/from16 v44, v1

    move-object/from16 v45, v7

    move/from16 v46, v8

    const/4 v1, 0x0

    .line 132
    aput v1, v11, v10

    :goto_1c
    const-wide/16 v35, 0x3e8

    move-wide/from16 v33, v3

    move-wide/from16 v37, v13

    .line 133
    invoke-static/range {v33 .. v38}, Lel3;->b(JJJ)J

    move-result-wide v7

    sub-long v7, v7, v39

    aput-wide v7, v15, v10

    .line 134
    aput v5, v31, v10

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_1d

    :cond_28
    const/4 v0, 0x0

    .line 135
    :goto_1d
    aput-boolean v0, v32, v10

    int-to-long v0, v2

    add-long/2addr v3, v0

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v41

    move/from16 v5, v42

    move/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v7, v45

    move/from16 v8, v46

    goto/16 :goto_18

    :cond_29
    move/from16 v42, v5

    .line 136
    iput-wide v3, v6, Lth3;->r:J

    move/from16 v4, v22

    move/from16 v10, v42

    goto :goto_1e

    :cond_2a
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v3

    move/from16 v28, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v29, v11

    :goto_1e
    add-int/lit8 v3, v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v5, v28

    move-object/from16 v11, v29

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v28, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v29, v11

    .line 137
    sget v0, Lah3;->d0:I

    invoke-virtual {v8, v0}, Lzg3;->b(I)Lch3;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object/from16 v11, v29

    .line 138
    iget-object v1, v11, Lmh3;->c:Lrh3;

    iget-object v1, v1, Lrh3;->h:[Lqh3;

    move-object/from16 v2, v26

    iget-object v3, v2, Lth3;->a:Lih3;

    iget v3, v3, Lih3;->a:I

    aget-object v1, v1, v3

    .line 139
    iget-object v0, v0, Lch3;->P0:Lal3;

    .line 140
    iget v1, v1, Lqh3;->a:I

    const/16 v3, 0x8

    .line 141
    invoke-virtual {v0, v3}, Lal3;->h(I)V

    .line 142
    invoke-virtual {v0}, Lal3;->b()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2c

    .line 143
    invoke-virtual {v0, v3}, Lal3;->i(I)V

    .line 144
    :cond_2c
    invoke-virtual {v0}, Lal3;->d()I

    move-result v3

    .line 145
    invoke-virtual {v0}, Lal3;->o()I

    move-result v4

    .line 146
    iget v5, v2, Lth3;->e:I

    if-ne v4, v5, :cond_31

    if-nez v3, :cond_2e

    .line 147
    iget-object v3, v2, Lth3;->m:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    if-ge v5, v4, :cond_30

    .line 148
    invoke-virtual {v0}, Lal3;->d()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_2d

    const/4 v7, 0x1

    goto :goto_20

    :cond_2d
    const/4 v7, 0x0

    .line 149
    :goto_20
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2e
    if-le v3, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_21

    :cond_2f
    const/4 v0, 0x0

    :goto_21
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v6, v3, 0x0

    .line 150
    iget-object v3, v2, Lth3;->m:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 151
    :cond_30
    invoke-virtual {v2, v6}, Lth3;->a(I)V

    goto :goto_22

    .line 152
    :cond_31
    new-instance v0, Lne3;

    iget v1, v2, Lth3;->e:I

    const/16 v2, 0x29

    const-string v3, "Length mismatch: "

    const-string v5, ", "

    invoke-static {v2, v3, v4, v5, v1}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move-object/from16 v2, v26

    .line 153
    :goto_22
    sget v0, Lah3;->e0:I

    invoke-virtual {v8, v0}, Lzg3;->b(I)Lch3;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 154
    iget-object v0, v0, Lch3;->P0:Lal3;

    const/16 v1, 0x8

    .line 155
    invoke-virtual {v0, v1}, Lal3;->h(I)V

    .line 156
    invoke-virtual {v0}, Lal3;->b()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_33

    .line 157
    invoke-virtual {v0, v1}, Lal3;->i(I)V

    .line 158
    :cond_33
    invoke-virtual {v0}, Lal3;->o()I

    move-result v1

    if-ne v1, v5, :cond_35

    shr-int/lit8 v1, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 159
    iget-wide v3, v2, Lth3;->c:J

    if-nez v1, :cond_34

    .line 160
    invoke-virtual {v0}, Lal3;->n()J

    move-result-wide v0

    goto :goto_23

    :cond_34
    invoke-virtual {v0}, Lal3;->p()J

    move-result-wide v0

    :goto_23
    add-long/2addr v3, v0

    iput-wide v3, v2, Lth3;->c:J

    goto :goto_24

    .line 161
    :cond_35
    new-instance v0, Lne3;

    const/16 v2, 0x28

    const-string v3, "Unexpected saio entry count: "

    invoke-static {v2, v3, v1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_36
    :goto_24
    sget v0, Lah3;->i0:I

    invoke-virtual {v8, v0}, Lzg3;->b(I)Lch3;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 163
    iget-object v0, v0, Lch3;->P0:Lal3;

    const/4 v1, 0x0

    .line 164
    invoke-static {v0, v1, v2}, Ljh3;->b(Lal3;ILth3;)V

    .line 165
    :cond_37
    sget v0, Lah3;->f0:I

    invoke-virtual {v8, v0}, Lzg3;->b(I)Lch3;

    move-result-object v0

    .line 166
    sget v1, Lah3;->g0:I

    invoke-virtual {v8, v1}, Lzg3;->b(I)Lch3;

    move-result-object v1

    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 167
    iget-object v0, v0, Lch3;->P0:Lal3;

    iget-object v1, v1, Lch3;->P0:Lal3;

    const/16 v3, 0x8

    .line 168
    invoke-virtual {v0, v3}, Lal3;->h(I)V

    .line 169
    invoke-virtual {v0}, Lal3;->b()I

    move-result v3

    .line 170
    invoke-virtual {v0}, Lal3;->b()I

    move-result v4

    sget v5, Ljh3;->y:I

    if-ne v4, v5, :cond_3e

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_38

    .line 171
    invoke-virtual {v0, v4}, Lal3;->i(I)V

    .line 172
    :cond_38
    invoke-virtual {v0}, Lal3;->b()I

    move-result v0

    if-ne v0, v6, :cond_3d

    const/16 v0, 0x8

    .line 173
    invoke-virtual {v1, v0}, Lal3;->h(I)V

    .line 174
    invoke-virtual {v1}, Lal3;->b()I

    move-result v0

    .line 175
    invoke-virtual {v1}, Lal3;->b()I

    move-result v3

    if-ne v3, v5, :cond_3e

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x2

    if-ne v0, v6, :cond_3a

    .line 176
    invoke-virtual {v1}, Lal3;->n()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_39

    goto :goto_25

    .line 177
    :cond_39
    new-instance v0, Lne3;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    if-lt v0, v3, :cond_3b

    .line 178
    invoke-virtual {v1, v4}, Lal3;->i(I)V

    .line 179
    :cond_3b
    :goto_25
    invoke-virtual {v1}, Lal3;->n()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3c

    .line 180
    invoke-virtual {v1, v3}, Lal3;->i(I)V

    .line 181
    invoke-virtual {v1}, Lal3;->d()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3e

    .line 182
    invoke-virtual {v1}, Lal3;->d()I

    move-result v0

    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 183
    iget-object v6, v1, Lal3;->a:[B

    iget v7, v1, Lal3;->b:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v6, v1, Lal3;->b:I

    add-int/2addr v6, v4

    iput v6, v1, Lal3;->b:I

    .line 185
    iput-boolean v3, v2, Lth3;->l:Z

    .line 186
    new-instance v1, Lqh3;

    invoke-direct {v1, v3, v0, v5}, Lqh3;-><init>(ZI[B)V

    iput-object v1, v2, Lth3;->n:Lqh3;

    goto :goto_26

    .line 187
    :cond_3c
    new-instance v0, Lne3;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3d
    new-instance v0, Lne3;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lne3;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3e
    :goto_26
    iget-object v0, v8, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_41

    .line 190
    iget-object v3, v8, Lzg3;->Q0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch3;

    .line 191
    iget v4, v3, Lah3;->a:I

    sget v5, Lah3;->h0:I

    if-ne v4, v5, :cond_3f

    .line 192
    iget-object v3, v3, Lch3;->P0:Lal3;

    const/16 v4, 0x8

    .line 193
    invoke-virtual {v3, v4}, Lal3;->h(I)V

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v6, v23

    .line 194
    invoke-virtual {v3, v6, v5, v4}, Lal3;->l([BII)V

    .line 195
    sget-object v5, Ljh3;->z:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 196
    invoke-static {v3, v4, v2}, Ljh3;->b(Lal3;ILth3;)V

    goto :goto_28

    :cond_3f
    move-object/from16 v6, v23

    :cond_40
    :goto_28
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v23, v6

    goto :goto_27

    :cond_41
    move-object/from16 v6, v23

    goto :goto_29

    :cond_42
    move-object v6, v1

    move-object/from16 v24, v2

    move-object/from16 v17, v3

    move/from16 v16, v4

    move/from16 v28, v5

    :goto_29
    add-int/lit8 v5, v28, 0x1

    const/16 v0, 0x8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v24

    const/16 v6, 0x8

    goto/16 :goto_8

    .line 197
    :cond_43
    iget-object v0, v2, Lzg3;->Q0:Ljava/util/List;

    invoke-static {v0}, Ljh3;->d(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v0

    if-eqz v0, :cond_44

    move-object/from16 v15, p0

    .line 198
    iget-object v1, v15, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_2a
    if-ge v13, v14, :cond_44

    .line 199
    iget-object v1, v15, Ljh3;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh3;

    .line 200
    iget-object v12, v1, Lmh3;->b:Lhj3;

    iget-object v1, v1, Lmh3;->c:Lrh3;

    iget-object v11, v1, Lrh3;->f:Lcom/google/android/gms/internal/ads/zzht;

    .line 201
    new-instance v10, Lcom/google/android/gms/internal/ads/zzht;

    move-object v1, v10

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    iget v6, v11, Lcom/google/android/gms/internal/ads/zzht;->f:I

    iget v7, v11, Lcom/google/android/gms/internal/ads/zzht;->k:I

    iget v8, v11, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v9, v11, Lcom/google/android/gms/internal/ads/zzht;->o:I

    move-object/from16 v16, v10

    iget v10, v11, Lcom/google/android/gms/internal/ads/zzht;->p:F

    move-object/from16 v47, v16

    move-object/from16 v16, v12

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzht;->q:I

    move-object/from16 v29, v1

    move-object v1, v11

    move v11, v12

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzht;->r:F

    move-object/from16 v48, v16

    move/from16 v16, v13

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    move/from16 v30, v16

    move/from16 v16, v14

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzht;->s:I

    move/from16 v31, v16

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    move-object/from16 v32, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->v:I

    move/from16 v16, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->w:I

    move/from16 v17, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->x:I

    move/from16 v18, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->y:I

    move/from16 v19, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->z:I

    move/from16 v20, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->B:I

    move/from16 v21, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    move-object/from16 v22, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzht;->D:I

    move/from16 v23, v2

    move-object/from16 v33, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzht;->A:J

    move-wide/from16 v24, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v26, v2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    move-object/from16 v28, v1

    move-object/from16 v27, v0

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    move-object/from16 v2, v47

    move-object/from16 v1, v48

    .line 202
    invoke-virtual {v1, v2}, Lhj3;->g(Lcom/google/android/gms/internal/ads/zzht;)V

    add-int/lit8 v13, v30, 0x1

    move-object/from16 v15, p0

    move/from16 v14, v31

    goto/16 :goto_2a

    :cond_44
    move-object/from16 v1, p0

    goto :goto_2b

    .line 203
    :cond_45
    iget-object v0, v1, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 204
    iget-object v0, v1, Ljh3;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzg3;

    .line 205
    iget-object v0, v0, Lzg3;->R0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_2b
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 206
    :cond_47
    invoke-virtual/range {p0 .. p0}, Ljh3;->h()V

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ljh3;->j:I

    .line 2
    iput v0, p0, Ljh3;->m:I

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
