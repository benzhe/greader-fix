.class public final Lck6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqk6<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lak6;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lek6;

.field public final n:Lqj6;

.field public final o:Lyk6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyk6<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lzi6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzi6<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lvj6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lck6;->r:[I

    .line 2
    invoke-static {}, Lcl6;->o()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lck6;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILak6;ZZ[IIILek6;Lqj6;Lyk6;Lzi6;Lvj6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lak6;",
            "ZZ[III",
            "Lek6;",
            "Lqj6;",
            "Lyk6<",
            "**>;",
            "Lzi6<",
            "*>;",
            "Lvj6;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lck6;->a:[I

    .line 3
    iput-object p2, p0, Lck6;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lck6;->c:I

    .line 5
    iput p4, p0, Lck6;->d:I

    .line 6
    instance-of p1, p5, Lgj6;

    iput-boolean p1, p0, Lck6;->g:Z

    .line 7
    iput-boolean p6, p0, Lck6;->h:Z

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lzi6;->e(Lak6;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lck6;->f:Z

    .line 9
    iput-boolean p7, p0, Lck6;->i:Z

    .line 10
    iput-object p8, p0, Lck6;->j:[I

    .line 11
    iput p9, p0, Lck6;->k:I

    .line 12
    iput p10, p0, Lck6;->l:I

    .line 13
    iput-object p11, p0, Lck6;->m:Lek6;

    .line 14
    iput-object p12, p0, Lck6;->n:Lqj6;

    .line 15
    iput-object p13, p0, Lck6;->o:Lyk6;

    .line 16
    iput-object p14, p0, Lck6;->p:Lzi6;

    .line 17
    iput-object p5, p0, Lck6;->e:Lak6;

    .line 18
    iput-object p15, p0, Lck6;->q:Lvj6;

    return-void
.end method

.method public static B(Lyj6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lyj6;",
            "Lek6;",
            "Lqj6;",
            "Lyk6<",
            "**>;",
            "Lzi6<",
            "*>;",
            "Lvj6;",
            ")",
            "Lck6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lnk6;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Lnk6;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lck6;->C(Lnk6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p0, Lvk6;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static C(Lnk6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnk6;",
            "Lek6;",
            "Lqj6;",
            "Lyk6<",
            "**>;",
            "Lzi6<",
            "*>;",
            "Lvj6;",
            ")",
            "Lck6<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lkk6;->f:Lkk6;

    iget v2, v0, Lnk6;->d:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lkk6;->e:Lkk6;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 2
    :goto_1
    iget-object v1, v0, Lnk6;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v7, v5, 0x1

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v5, v7, 0x1

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_4
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_5
    if-nez v7, :cond_6

    .line 8
    sget-object v7, Lck6;->r:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v7, v5, 0x1

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_7
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_8
    add-int/lit8 v9, v7, 0x1

    .line 11
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_a
    add-int/lit8 v10, v9, 0x1

    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_b
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_c
    add-int/lit8 v12, v10, 0x1

    .line 15
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v4, 0x1

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v18

    goto :goto_b

    :cond_15
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v18

    :cond_16
    add-int v4, v15, v13

    add-int/2addr v4, v14

    .line 25
    new-array v4, v4, [I

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v4

    move v4, v5

    move/from16 v5, v16

    .line 26
    :goto_c
    sget-object v8, Lck6;->s:Lsun/misc/Unsafe;

    .line 27
    iget-object v3, v0, Lnk6;->c:[Ljava/lang/Object;

    .line 28
    iget-object v6, v0, Lnk6;->a:Lak6;

    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v5

    mul-int/lit8 v5, v12, 0x3

    .line 30
    new-array v5, v5, [I

    mul-int/lit8 v12, v12, 0x2

    .line 31
    new-array v12, v12, [Ljava/lang/Object;

    add-int v21, v15, v13

    move v13, v7

    move/from16 v23, v15

    move/from16 v7, v20

    move/from16 v24, v21

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_d
    if-ge v7, v2, :cond_34

    add-int/lit8 v25, v7, 0x1

    .line 32
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v7, v2, :cond_18

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v2, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_17

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v25

    or-int/2addr v7, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v2, v27

    move/from16 v15, v28

    goto :goto_e

    :cond_17
    shl-int v2, v2, v25

    or-int/2addr v7, v2

    move/from16 v2, v27

    goto :goto_f

    :cond_18
    move/from16 v28, v15

    move/from16 v2, v25

    :goto_f
    add-int/lit8 v15, v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_1a

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v15, 0x1

    .line 35
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_19

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v25

    or-int/2addr v2, v10

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v10, v29

    goto :goto_10

    :cond_19
    shl-int v10, v15, v25

    or-int/2addr v2, v10

    move/from16 v15, v27

    goto :goto_11

    :cond_1a
    move/from16 v29, v10

    move/from16 v15, v25

    :goto_11
    and-int/lit16 v10, v2, 0xff

    move/from16 v25, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v20, 0x1

    .line 36
    aput v22, v14, v20

    move/from16 v20, v9

    :cond_1b
    const/16 v9, 0x33

    if-lt v10, v9, :cond_23

    add-int/lit8 v9, v15, 0x1

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v0, 0xd800

    if-lt v15, v0, :cond_1d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v31, 0xd

    :goto_12
    add-int/lit8 v32, v9, 0x1

    .line 38
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v0, :cond_1c

    and-int/lit16 v0, v9, 0x1fff

    shl-int v0, v0, v31

    or-int/2addr v15, v0

    add-int/lit8 v31, v31, 0xd

    move/from16 v9, v32

    const v0, 0xd800

    goto :goto_12

    :cond_1c
    shl-int v0, v9, v31

    or-int/2addr v15, v0

    move/from16 v9, v32

    :cond_1d
    add-int/lit8 v0, v10, -0x33

    move/from16 v31, v9

    const/16 v9, 0x9

    if-eq v0, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v0, v9, :cond_1e

    goto :goto_13

    :cond_1e
    const/16 v9, 0xc

    if-ne v0, v9, :cond_20

    if-nez v11, :cond_20

    .line 39
    div-int/lit8 v0, v22, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    add-int/2addr v0, v9

    add-int/lit8 v9, v13, 0x1

    aget-object v13, v3, v13

    aput-object v13, v12, v0

    goto :goto_14

    .line 40
    :cond_1f
    :goto_13
    div-int/lit8 v0, v22, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    add-int/2addr v0, v9

    add-int/lit8 v9, v13, 0x1

    aget-object v13, v3, v13

    aput-object v13, v12, v0

    :goto_14
    move v13, v9

    :cond_20
    mul-int/lit8 v15, v15, 0x2

    .line 41
    aget-object v0, v3, v15

    .line 42
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 43
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 44
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lck6;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 45
    aput-object v0, v3, v15

    :goto_15
    move v9, v4

    move-object/from16 v32, v5

    .line 46
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v15, v15, 0x1

    .line 47
    aget-object v4, v3, v15

    .line 48
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    .line 49
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 50
    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lck6;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 51
    aput-object v4, v3, v15

    .line 52
    :goto_16
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    move v4, v0

    move-object/from16 v19, v1

    move/from16 v15, v31

    const v0, 0xd800

    const/16 v18, 0x1

    move/from16 v31, v13

    move-object v13, v6

    const/4 v6, 0x0

    goto/16 :goto_23

    :cond_23
    move v9, v4

    move-object/from16 v32, v5

    add-int/lit8 v0, v13, 0x1

    .line 53
    aget-object v4, v3, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lck6;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v5, 0x31

    const/16 v13, 0x9

    if-eq v10, v13, :cond_2b

    const/16 v13, 0x11

    if-ne v10, v13, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v13, 0x1b

    if-eq v10, v13, :cond_2a

    if-ne v10, v5, :cond_25

    goto :goto_19

    :cond_25
    const/16 v13, 0xc

    if-eq v10, v13, :cond_29

    const/16 v13, 0x1e

    if-eq v10, v13, :cond_29

    const/16 v13, 0x2c

    if-ne v10, v13, :cond_26

    goto :goto_18

    :cond_26
    const/16 v13, 0x32

    if-ne v10, v13, :cond_28

    add-int/lit8 v13, v23, 0x1

    .line 54
    aput v22, v14, v23

    .line 55
    div-int/lit8 v23, v22, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v27, v0, 0x1

    aget-object v0, v3, v0

    aput-object v0, v12, v23

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v0, v27, 0x1

    .line 56
    aget-object v27, v3, v27

    aput-object v27, v12, v23

    move/from16 v23, v13

    goto :goto_17

    :cond_27
    move/from16 v23, v13

    move/from16 v0, v27

    :cond_28
    :goto_17
    const/16 v18, 0x1

    goto :goto_1c

    :cond_29
    :goto_18
    if-nez v11, :cond_28

    .line 57
    div-int/lit8 v13, v22, 0x3

    mul-int/lit8 v13, v13, 0x2

    const/16 v18, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v27, v0, 0x1

    aget-object v0, v3, v0

    aput-object v0, v12, v13

    goto :goto_1a

    :cond_2a
    :goto_19
    const/16 v18, 0x1

    .line 58
    div-int/lit8 v13, v22, 0x3

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v27, v0, 0x1

    aget-object v0, v3, v0

    aput-object v0, v12, v13

    :goto_1a
    move-object v13, v6

    move/from16 v0, v27

    goto :goto_1d

    :cond_2b
    :goto_1b
    const/16 v18, 0x1

    .line 59
    div-int/lit8 v13, v22, 0x3

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v12, v13

    :goto_1c
    move-object v13, v6

    .line 60
    :goto_1d
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v4, v5

    and-int/lit16 v5, v2, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_2c

    const/4 v5, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_30

    const/16 v5, 0x11

    if-gt v10, v5, :cond_30

    add-int/lit8 v5, v15, 0x1

    .line 61
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v15, 0xd800

    if-lt v6, v15, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    const/16 v19, 0xd

    :goto_1f
    add-int/lit8 v30, v5, 0x1

    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v15, :cond_2d

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v19

    or-int/2addr v6, v5

    add-int/lit8 v19, v19, 0xd

    move/from16 v5, v30

    goto :goto_1f

    :cond_2d
    shl-int v5, v5, v19

    or-int/2addr v6, v5

    goto :goto_20

    :cond_2e
    move/from16 v30, v5

    :goto_20
    mul-int/lit8 v5, v9, 0x2

    .line 63
    div-int/lit8 v19, v6, 0x20

    add-int v19, v19, v5

    .line 64
    aget-object v5, v3, v19

    .line 65
    instance-of v15, v5, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2f

    .line 66
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_21

    .line 67
    :cond_2f
    check-cast v5, Ljava/lang/String;

    invoke-static {v13, v5}, Lck6;->T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 68
    aput-object v5, v3, v19

    :goto_21
    move/from16 v31, v0

    move-object/from16 v19, v1

    .line 69
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 70
    rem-int/lit8 v6, v6, 0x20

    move v5, v1

    move/from16 v15, v30

    const v0, 0xd800

    goto :goto_22

    :cond_30
    move/from16 v31, v0

    move-object/from16 v19, v1

    const v0, 0xd800

    const v1, 0xfffff

    const v5, 0xfffff

    const/4 v6, 0x0

    :goto_22
    const/16 v1, 0x12

    if-lt v10, v1, :cond_31

    const/16 v1, 0x31

    if-gt v10, v1, :cond_31

    add-int/lit8 v1, v24, 0x1

    .line 71
    aput v4, v14, v24

    move/from16 v24, v1

    :cond_31
    :goto_23
    add-int/lit8 v1, v22, 0x1

    .line 72
    aput v7, v32, v22

    add-int/lit8 v7, v1, 0x1

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_32

    const/high16 v0, 0x20000000

    goto :goto_24

    :cond_32
    const/4 v0, 0x0

    :goto_24
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_33

    const/high16 v2, 0x10000000

    goto :goto_25

    :cond_33
    const/4 v2, 0x0

    :goto_25
    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x14

    or-int/2addr v0, v2

    or-int/2addr v0, v4

    .line 73
    aput v0, v32, v1

    add-int/lit8 v22, v7, 0x1

    shl-int/lit8 v0, v6, 0x14

    or-int/2addr v0, v5

    .line 74
    aput v0, v32, v7

    move-object/from16 v0, p0

    move v4, v9

    move-object v6, v13

    move v7, v15

    move-object/from16 v1, v19

    move/from16 v9, v25

    move/from16 v2, v26

    move/from16 v15, v28

    move/from16 v10, v29

    move/from16 v13, v31

    move-object/from16 v5, v32

    goto/16 :goto_d

    :cond_34
    move-object/from16 v32, v5

    move/from16 v25, v9

    move/from16 v29, v10

    move/from16 v28, v15

    .line 75
    new-instance v0, Lck6;

    move-object/from16 v1, p0

    .line 76
    iget-object v10, v1, Lnk6;->a:Lak6;

    const/4 v1, 0x0

    move-object/from16 v2, v32

    move-object v5, v0

    move-object v6, v2

    move-object v7, v12

    move/from16 v8, v25

    move/from16 v9, v29

    move v12, v1

    move-object v13, v14

    move/from16 v14, v28

    move/from16 v15, v21

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 77
    invoke-direct/range {v5 .. v20}, Lck6;-><init>([I[Ljava/lang/Object;IILak6;ZZ[IIILek6;Lqj6;Lyk6;Lzi6;Lvj6;)V

    return-object v0
.end method

.method public static D(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static E(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static F(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static G(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static H(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static I(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static X(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static q(Ljava/lang/Object;)Lzk6;
    .locals 2

    .line 1
    check-cast p0, Lgj6;

    iget-object v0, p0, Lgj6;->unknownFields:Lzk6;

    .line 2
    sget-object v1, Lzk6;->f:Lzk6;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lzk6;->b()Lzk6;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lgj6;->unknownFields:Lzk6;

    :cond_0
    return-object v0
.end method

.method public static w(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    .line 2
    aget v0, v0, p3

    .line 3
    invoke-static {v1}, Lck6;->D(I)J

    move-result-wide v1

    .line 4
    invoke-virtual {p0, p2, v0, p3}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, p3}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {p1, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 7
    :cond_1
    invoke-static {p2, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 8
    invoke-static {v3, p2}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    sget-object v3, Lcl6;->e:Lcl6$e;

    invoke-virtual {v3, p1, v1, v2, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, v0, p3}, Lck6;->V(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    sget-object v3, Lcl6;->e:Lcl6$e;

    invoke-virtual {v3, p1, v1, v2, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lck6;->V(Ljava/lang/Object;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final J(Ljava/lang/Object;[BIIIJLni6;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-wide/from16 v1, p6

    move-object/from16 v10, p8

    .line 1
    sget-object v3, Lck6;->s:Lsun/misc/Unsafe;

    .line 2
    iget-object v4, v7, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 v5, p5, 0x3

    const/4 v11, 0x2

    mul-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    .line 3
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 4
    iget-object v6, v7, Lck6;->q:Lvj6;

    invoke-interface {v6, v5}, Lvj6;->h(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    iget-object v6, v7, Lck6;->q:Lvj6;

    invoke-interface {v6, v4}, Lvj6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 6
    iget-object v12, v7, Lck6;->q:Lvj6;

    invoke-interface {v12, v6, v5}, Lvj6;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, v0, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    .line 8
    :cond_0
    iget-object v0, v7, Lck6;->q:Lvj6;

    .line 9
    invoke-interface {v0, v4}, Lvj6;->d(Ljava/lang/Object;)Ltj6$a;

    move-result-object v12

    iget-object v0, v7, Lck6;->q:Lvj6;

    .line 10
    invoke-interface {v0, v5}, Lvj6;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    move/from16 v0, p3

    .line 11
    invoke-static {v8, v0, v10}, Ln56;->i0([BILni6;)I

    move-result v0

    .line 12
    iget v1, v10, Lni6;->a:I

    if-ltz v1, :cond_7

    sub-int v2, v9, v0

    if-gt v1, v2, :cond_7

    add-int v14, v0, v1

    .line 13
    iget-object v1, v12, Ltj6$a;->b:Ljava/lang/Object;

    .line 14
    iget-object v2, v12, Ltj6$a;->d:Ljava/lang/Object;

    move-object v15, v1

    move-object v6, v2

    :goto_0
    if-ge v0, v14, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 15
    aget-byte v0, v8, v0

    if-gez v0, :cond_1

    .line 16
    invoke-static {v0, v8, v1, v10}, Ln56;->h0(I[BILni6;)I

    move-result v0

    .line 17
    iget v1, v10, Lni6;->a:I

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v11, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    iget-object v4, v12, Ltj6$a;->c:Lfl6;

    .line 19
    iget v1, v4, Lfl6;->f:I

    if-ne v3, v1, :cond_4

    .line 20
    iget-object v0, v12, Ltj6$a;->d:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v6, p8

    .line 22
    invoke-virtual/range {v0 .. v6}, Lck6;->l([BIILfl6;Ljava/lang/Class;Lni6;)I

    move-result v0

    .line 23
    iget-object v6, v10, Lni6;->c:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_3
    iget-object v4, v12, Ltj6$a;->a:Lfl6;

    .line 25
    iget v1, v4, Lfl6;->f:I

    if-ne v3, v1, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v15, v6

    move-object/from16 v6, p8

    .line 26
    invoke-virtual/range {v0 .. v6}, Lck6;->l([BIILfl6;Ljava/lang/Class;Lni6;)I

    move-result v0

    .line 27
    iget-object v1, v10, Lni6;->c:Ljava/lang/Object;

    move-object v6, v15

    move-object v15, v1

    goto :goto_0

    .line 28
    :cond_4
    :goto_2
    invoke-static {v0, v8, v2, v9, v10}, Ln56;->d2(I[BIILni6;)I

    move-result v0

    goto :goto_0

    :cond_5
    if-ne v0, v14, :cond_6

    .line 29
    invoke-interface {v13, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v14

    .line 30
    :cond_6
    invoke-static {}, Lkj6;->g()Lkj6;

    move-result-object v0

    throw v0

    .line 31
    :cond_7
    invoke-static {}, Lkj6;->h()Lkj6;

    move-result-object v0

    throw v0
.end method

.method public final K(Ljava/lang/Object;[BIIIIIIIJILni6;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 1
    sget-object v12, Lck6;->s:Lsun/misc/Unsafe;

    .line 2
    iget-object v7, v0, Lck6;->a:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v15, 0x2

    const/4 v7, 0x3

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3
    invoke-virtual {v0, v6}, Lck6;->p(I)Lqk6;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 4
    invoke-static/range {v2 .. v7}, Ln56;->S(Lqk6;[BIIILni6;)I

    move-result v2

    .line 5
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 6
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 7
    iget-object v3, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, v11, Lni6;->c:Ljava/lang/Object;

    .line 9
    invoke-static {v15, v3}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_a

    .line 12
    invoke-static {v3, v4, v11}, Ln56;->k0([BILni6;)I

    move-result v2

    .line 13
    iget-wide v3, v11, Lni6;->b:J

    invoke-static {v3, v4}, Lri6;->c(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_a

    .line 15
    invoke-static {v3, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v2

    .line 16
    iget v3, v11, Lni6;->a:I

    invoke-static {v3}, Lri6;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 17
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_a

    .line 18
    invoke-static {v3, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v3

    .line 19
    iget v4, v11, Lni6;->a:I

    .line 20
    iget-object v5, v0, Lck6;->b:[Ljava/lang/Object;

    div-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget-object v5, v5, v6

    check-cast v5, Ljj6$b;

    if-eqz v5, :cond_3

    .line 21
    invoke-interface {v5, v4}, Ljj6$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    invoke-static/range {p1 .. p1}, Lck6;->q(Ljava/lang/Object;)Lzk6;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lzk6;->c(ILjava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 25
    invoke-static {v3, v4, v11}, Ln56;->P([BILni6;)I

    move-result v2

    .line 26
    iget-object v3, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 28
    invoke-virtual {v0, v6}, Lck6;->p(I)Lqk6;

    move-result-object v2

    move/from16 v5, p4

    .line 29
    invoke-static {v2, v3, v4, v5, v11}, Ln56;->T(Lqk6;[BIILni6;)I

    move-result v2

    .line 30
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 31
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_5

    .line 32
    iget-object v3, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 33
    :cond_5
    iget-object v3, v11, Lni6;->c:Ljava/lang/Object;

    .line 34
    invoke-static {v15, v3}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 37
    invoke-static {v3, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v2

    .line 38
    iget v4, v11, Lni6;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 39
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 40
    invoke-static {v3, v2, v5}, Ldl6;->g([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 41
    :cond_7
    invoke-static {}, Lkj6;->c()Lkj6;

    move-result-object v1

    throw v1

    .line 42
    :cond_8
    :goto_6
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 43
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 44
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_a

    .line 45
    invoke-static {v3, v4, v11}, Ln56;->k0([BILni6;)I

    move-result v2

    .line 46
    iget-wide v3, v11, Lni6;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_a

    .line 48
    invoke-static/range {p2 .. p3}, Ln56;->Q([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 50
    invoke-static/range {p2 .. p3}, Ln56;->R([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 51
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_a

    .line 52
    invoke-static {v3, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v2

    .line 53
    iget v3, v11, Lni6;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_a

    .line 55
    invoke-static {v3, v4, v11}, Ln56;->k0([BILni6;)I

    move-result v2

    .line 56
    iget-wide v3, v11, Lni6;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_a

    .line 58
    invoke-static/range {p2 .. p3}, Ln56;->Q([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    .line 60
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 61
    invoke-static/range {p2 .. p3}, Ln56;->R([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 63
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :cond_a
    :goto_9
    move v2, v4

    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L(Ljava/lang/Object;[BIIILni6;)I
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    .line 1
    sget-object v9, Lck6;->s:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v1, p5

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_20

    add-int/lit8 v4, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v4, v11}, Ln56;->h0(I[BILni6;)I

    move-result v0

    .line 4
    iget v4, v11, Lni6;->a:I

    move v5, v4

    move v4, v0

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    ushr-int/lit8 v0, v5, 0x3

    and-int/lit8 v10, v5, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_2

    .line 5
    div-int/2addr v3, v8

    .line 6
    iget v2, v15, Lck6;->c:I

    if-lt v0, v2, :cond_1

    iget v2, v15, Lck6;->d:I

    if-gt v0, v2, :cond_1

    .line 7
    invoke-virtual {v15, v0, v3}, Lck6;->W(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v15, v0}, Lck6;->O(I)I

    move-result v2

    :goto_2
    move v3, v2

    const/4 v2, -0x1

    :goto_3
    if-ne v3, v2, :cond_3

    move/from16 v24, v0

    move v2, v4

    move v8, v5

    move/from16 v19, v6

    move-object/from16 v29, v9

    const/16 v21, 0x0

    const/16 v28, -0x1

    move v6, v1

    goto/16 :goto_1a

    .line 9
    :cond_3
    iget-object v1, v15, Lck6;->a:[I

    add-int/lit8 v19, v3, 0x1

    aget v1, v1, v19

    .line 10
    invoke-static {v1}, Lck6;->X(I)I

    move-result v8

    .line 11
    invoke-static {v1}, Lck6;->D(I)J

    move-result-wide v12

    const/16 v2, 0x11

    move/from16 v20, v5

    if-gt v8, v2, :cond_13

    .line 12
    iget-object v2, v15, Lck6;->a:[I

    add-int/lit8 v21, v3, 0x2

    aget v2, v2, v21

    ushr-int/lit8 v21, v2, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    move-wide/from16 v23, v12

    const v12, 0xfffff

    and-int/2addr v2, v12

    if-eq v2, v6, :cond_5

    if-eq v6, v12, :cond_4

    int-to-long v12, v6

    .line 13
    invoke-virtual {v9, v14, v12, v13, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    int-to-long v6, v2

    .line 14
    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v2

    :cond_5
    const/4 v2, 0x5

    packed-switch v8, :pswitch_data_0

    :cond_6
    move v12, v0

    move v8, v3

    move v3, v4

    move/from16 v19, v6

    move/from16 v13, v20

    :goto_4
    move-object/from16 v4, p2

    goto/16 :goto_12

    :pswitch_0
    const/4 v8, 0x3

    if-ne v10, v8, :cond_6

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    .line 15
    invoke-virtual {v15, v3}, Lck6;->p(I)Lqk6;

    move-result-object v1

    move v12, v0

    move-object v0, v1

    move-object/from16 v1, p2

    const/4 v13, -0x1

    move v2, v4

    move v8, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v10, v20

    move-object/from16 v5, p6

    .line 16
    invoke-static/range {v0 .. v5}, Ln56;->S(Lqk6;[BIIILni6;)I

    move-result v0

    and-int v1, v7, v21

    if-nez v1, :cond_7

    .line 17
    iget-object v1, v11, Lni6;->c:Ljava/lang/Object;

    move-wide/from16 v2, v23

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_7
    move-wide/from16 v2, v23

    .line 18
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v11, Lni6;->c:Ljava/lang/Object;

    .line 19
    invoke-static {v1, v4}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v1, p5

    move v3, v8

    move v4, v10

    move v2, v12

    move-object/from16 v12, p2

    goto/16 :goto_0

    :pswitch_1
    move v12, v0

    move v8, v3

    move/from16 v5, v20

    move-wide/from16 v2, v23

    const/4 v13, -0x1

    if-nez v10, :cond_8

    move-object/from16 v10, p2

    .line 21
    invoke-static {v10, v4, v11}, Ln56;->k0([BILni6;)I

    move-result v17

    .line 22
    iget-wide v0, v11, Lni6;->b:J

    .line 23
    invoke-static {v0, v1}, Lri6;->c(J)J

    move-result-wide v19

    move-object v0, v9

    move-object/from16 v1, p1

    move v13, v5

    move-wide/from16 v4, v19

    .line 24
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v19, v6

    move-object v6, v10

    goto/16 :goto_f

    :cond_8
    move v13, v5

    move v3, v4

    move/from16 v19, v6

    goto :goto_4

    :pswitch_2
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    move-object/from16 v0, p2

    if-nez v10, :cond_e

    .line 25
    invoke-static {v0, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 26
    iget v4, v11, Lni6;->a:I

    .line 27
    invoke-static {v4}, Lri6;->b(I)I

    move-result v4

    .line 28
    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    move-object/from16 v0, p2

    if-nez v10, :cond_e

    .line 29
    invoke-static {v0, v4, v11}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 30
    iget v4, v11, Lni6;->a:I

    .line 31
    invoke-virtual {v15, v8}, Lck6;->n(I)Ljj6$b;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 32
    invoke-interface {v5, v4}, Ljj6$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    .line 33
    :cond_9
    invoke-static/range {p1 .. p1}, Lck6;->q(Ljava/lang/Object;)Lzk6;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lzk6;->c(ILjava/lang/Object;)V

    move-object v4, v0

    move/from16 v19, v6

    goto/16 :goto_11

    .line 34
    :cond_a
    :goto_6
    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_4
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    const/4 v1, 0x2

    move-object/from16 v0, p2

    if-ne v10, v1, :cond_e

    .line 35
    invoke-static {v0, v4, v11}, Ln56;->P([BILni6;)I

    move-result v1

    .line 36
    iget-object v4, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    move-object v4, v0

    move/from16 v19, v6

    goto/16 :goto_10

    :pswitch_5
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    const/4 v1, 0x2

    move-object/from16 v0, p2

    if-ne v10, v1, :cond_c

    .line 37
    invoke-virtual {v15, v8}, Lck6;->p(I)Lqk6;

    move-result-object v1

    move/from16 v5, p4

    .line 38
    invoke-static {v1, v0, v4, v5, v11}, Ln56;->T(Lqk6;[BIILni6;)I

    move-result v1

    and-int v4, v7, v21

    if-nez v4, :cond_b

    .line 39
    iget-object v4, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 40
    :cond_b
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    iget-object v10, v11, Lni6;->c:Ljava/lang/Object;

    .line 41
    invoke-static {v4, v10}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 42
    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    move/from16 v19, v6

    goto/16 :goto_c

    :cond_c
    move/from16 v5, p4

    goto :goto_a

    :pswitch_6
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    const/4 v5, 0x2

    move-object/from16 v0, p2

    if-ne v10, v5, :cond_e

    const/high16 v5, 0x20000000

    and-int/2addr v1, v5

    if-nez v1, :cond_d

    .line 43
    invoke-static {v0, v4, v11}, Ln56;->e0([BILni6;)I

    move-result v1

    goto :goto_9

    .line 44
    :cond_d
    invoke-static {v0, v4, v11}, Ln56;->f0([BILni6;)I

    move-result v1

    .line 45
    :goto_9
    iget-object v4, v11, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_e
    :goto_a
    move v3, v4

    move/from16 v19, v6

    goto/16 :goto_e

    :pswitch_7
    move v12, v0

    move v8, v3

    move/from16 v13, v20

    move-wide/from16 v2, v23

    move-object/from16 v0, p2

    if-nez v10, :cond_10

    .line 46
    invoke-static {v0, v4, v11}, Ln56;->k0([BILni6;)I

    move-result v1

    move/from16 v19, v6

    .line 47
    iget-wide v5, v11, Lni6;->b:J

    const-wide/16 v22, 0x0

    cmp-long v4, v5, v22

    if-eqz v4, :cond_f

    const/4 v5, 0x1

    goto :goto_b

    :cond_f
    const/4 v5, 0x0

    .line 48
    :goto_b
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, v14, v2, v3, v5}, Lcl6$e;->k(Ljava/lang/Object;JZ)V

    goto :goto_c

    :cond_10
    move/from16 v19, v6

    goto :goto_d

    :pswitch_8
    move v12, v0

    move v8, v3

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    move-object/from16 v0, p2

    if-ne v10, v2, :cond_11

    .line 49
    invoke-static {v0, v4}, Ln56;->Q([BI)I

    move-result v1

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    :goto_c
    or-int v2, v7, v21

    move v0, v1

    move v7, v2

    move/from16 v21, v8

    move/from16 v6, v19

    goto/16 :goto_15

    :pswitch_9
    move v12, v0

    move v8, v3

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    const/4 v1, 0x1

    move-object/from16 v0, p2

    if-ne v10, v1, :cond_11

    .line 50
    invoke-static {v0, v4}, Ln56;->R([BI)J

    move-result-wide v22

    move-object v10, v0

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v6, 0x8

    move-object v4, v10

    goto/16 :goto_10

    :cond_11
    :goto_d
    move v3, v4

    :goto_e
    move-object v4, v0

    goto/16 :goto_12

    :pswitch_a
    move v12, v0

    move v8, v3

    move v3, v4

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    move-object/from16 v4, p2

    if-nez v10, :cond_12

    .line 51
    invoke-static {v4, v3, v11}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 52
    iget v0, v11, Lni6;->a:I

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_10

    :pswitch_b
    move v12, v0

    move v8, v3

    move v3, v4

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    move-object/from16 v4, p2

    if-nez v10, :cond_12

    .line 53
    invoke-static {v4, v3, v11}, Ln56;->k0([BILni6;)I

    move-result v17

    .line 54
    iget-wide v2, v11, Lni6;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-wide v2, v5

    move-object v6, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    or-int v0, v7, v21

    move v7, v0

    move-object v4, v6

    move/from16 v1, v17

    goto :goto_11

    :pswitch_c
    move v12, v0

    move v8, v3

    move v3, v4

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    move-object/from16 v4, p2

    if-ne v10, v2, :cond_12

    .line 55
    invoke-static {v4, v3}, Ln56;->Q([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 56
    sget-object v1, Lcl6;->e:Lcl6$e;

    invoke-virtual {v1, v14, v5, v6, v0}, Lcl6$e;->n(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_10

    :pswitch_d
    move v12, v0

    move v8, v3

    move v3, v4

    move/from16 v19, v6

    move/from16 v13, v20

    move-wide/from16 v5, v23

    const/4 v0, 0x1

    move-object/from16 v4, p2

    if-ne v10, v0, :cond_12

    .line 57
    invoke-static {v4, v3}, Ln56;->R([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 58
    invoke-static {v14, v5, v6, v0, v1}, Lcl6;->t(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v3, 0x8

    :goto_10
    or-int v0, v7, v21

    move v7, v0

    :goto_11
    move/from16 v21, v8

    move/from16 v6, v19

    goto/16 :goto_14

    :cond_12
    :goto_12
    move/from16 v6, p5

    move v2, v3

    move/from16 v21, v8

    move-object/from16 v29, v9

    move/from16 v24, v12

    move v8, v13

    const/16 v28, -0x1

    goto/16 :goto_1a

    :cond_13
    move v5, v3

    move v3, v4

    move/from16 v19, v6

    move-object/from16 v4, p2

    move-wide/from16 v30, v12

    move v12, v0

    move/from16 v13, v20

    move/from16 v20, v7

    move-wide/from16 v6, v30

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_17

    const/4 v0, 0x2

    if-ne v10, v0, :cond_16

    .line 59
    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj6$d;

    .line 60
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_15

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_13

    :cond_14
    mul-int/lit8 v1, v1, 0x2

    .line 62
    :goto_13
    invoke-interface {v0, v1}, Ljj6$d;->E(I)Ljj6$d;

    move-result-object v0

    .line 63
    invoke-virtual {v9, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object v6, v0

    .line 64
    invoke-virtual {v15, v5}, Lck6;->p(I)Lqk6;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v21, v5

    move-object v5, v6

    move-object/from16 v6, p6

    .line 65
    invoke-static/range {v0 .. v6}, Ln56;->U(Lqk6;I[BIILjj6$d;Lni6;)I

    move-result v1

    move/from16 v6, v19

    move/from16 v7, v20

    :goto_14
    move v0, v1

    :goto_15
    move/from16 v1, p5

    move v2, v12

    move v4, v13

    move/from16 v3, v21

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_16
    move/from16 v21, v5

    move v14, v3

    move-object/from16 v29, v9

    move/from16 v24, v12

    move/from16 v18, v13

    const/16 v28, -0x1

    goto/16 :goto_16

    :cond_17
    move/from16 v21, v5

    const/16 v0, 0x31

    if-gt v8, v0, :cond_19

    int-to-long v4, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v23, v3

    move-wide/from16 v24, v4

    move/from16 v4, p4

    move v5, v13

    move-wide/from16 v26, v6

    move v6, v12

    move v7, v10

    move v10, v8

    const/16 v28, -0x1

    move/from16 v8, v21

    move-object/from16 v29, v9

    move/from16 p3, v10

    move-wide/from16 v9, v24

    move/from16 v11, p3

    move/from16 v24, v12

    move/from16 v18, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p6

    .line 66
    invoke-virtual/range {v0 .. v14}, Lck6;->N(Ljava/lang/Object;[BIIIIIIJIJLni6;)I

    move-result v0

    move/from16 v14, v23

    if-eq v0, v14, :cond_18

    goto :goto_17

    :cond_18
    move v4, v0

    goto/16 :goto_19

    :cond_19
    move v14, v3

    move-wide/from16 v26, v6

    move/from16 p3, v8

    move-object/from16 v29, v9

    move/from16 v24, v12

    move/from16 v18, v13

    const/16 v28, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_1b

    const/4 v0, 0x2

    if-ne v10, v0, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v26

    move-object/from16 v8, p6

    .line 67
    invoke-virtual/range {v0 .. v8}, Lck6;->J(Ljava/lang/Object;[BIIIJLni6;)I

    move-result v0

    if-eq v0, v14, :cond_18

    goto :goto_17

    :cond_1a
    :goto_16
    move v4, v14

    goto :goto_19

    :cond_1b
    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v24

    move v7, v10

    move-wide/from16 v10, v26

    move/from16 v12, v21

    move-object/from16 v13, p6

    .line 68
    invoke-virtual/range {v0 .. v13}, Lck6;->K(Ljava/lang/Object;[BIIIIIIIJILni6;)I

    move-result v0

    if-eq v0, v14, :cond_18

    :goto_17
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v1, p5

    move-object/from16 v11, p6

    move/from16 v4, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v3, v21

    move/from16 v2, v24

    :goto_18
    move-object/from16 v9, v29

    goto/16 :goto_0

    :goto_19
    move/from16 v6, p5

    move v2, v4

    move/from16 v8, v18

    move/from16 v7, v20

    :goto_1a
    if-ne v8, v6, :cond_1c

    if-eqz v6, :cond_1c

    move-object/from16 v11, p1

    move v0, v2

    move v1, v6

    move v4, v8

    move/from16 v6, v19

    goto/16 :goto_1d

    .line 69
    :cond_1c
    iget-boolean v0, v15, Lck6;->f:Z

    if-eqz v0, :cond_1f

    move-object/from16 v9, p6

    iget-object v0, v9, Lni6;->d:Lyi6;

    .line 70
    invoke-static {}, Lyi6;->a()Lyi6;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 71
    iget-object v0, v15, Lck6;->e:Lak6;

    .line 72
    iget-object v1, v9, Lni6;->d:Lyi6;

    .line 73
    iget-object v1, v1, Lyi6;->a:Ljava/util/Map;

    new-instance v3, Lyi6$a;

    move/from16 v10, v24

    invoke-direct {v3, v0, v10}, Lyi6$a;-><init>(Ljava/lang/Object;I)V

    .line 74
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj6$e;

    if-nez v0, :cond_1d

    .line 75
    invoke-static/range {p1 .. p1}, Lck6;->q(Ljava/lang/Object;)Lzk6;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 76
    invoke-static/range {v0 .. v5}, Ln56;->g0(I[BIILzk6;Lni6;)I

    move-result v0

    move-object/from16 v11, p1

    goto :goto_1c

    :cond_1d
    move-object/from16 v11, p1

    .line 77
    move-object v0, v11

    check-cast v0, Lgj6$c;

    invoke-virtual {v0}, Lgj6$c;->B()Lcj6;

    .line 78
    throw v17

    :cond_1e
    move-object/from16 v11, p1

    goto :goto_1b

    :cond_1f
    move-object/from16 v11, p1

    move-object/from16 v9, p6

    :goto_1b
    move/from16 v10, v24

    .line 79
    invoke-static/range {p1 .. p1}, Lck6;->q(Ljava/lang/Object;)Lzk6;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 80
    invoke-static/range {v0 .. v5}, Ln56;->g0(I[BIILzk6;Lni6;)I

    move-result v0

    :goto_1c
    move-object/from16 v12, p2

    move/from16 v13, p4

    move v1, v6

    move v4, v8

    move v2, v10

    move-object v14, v11

    move/from16 v6, v19

    move/from16 v3, v21

    move-object v11, v9

    goto :goto_18

    :cond_20
    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v29, v9

    move-object v11, v14

    :goto_1d
    const v2, 0xfffff

    if-eq v6, v2, :cond_21

    int-to-long v2, v6

    move-object/from16 v5, v29

    .line 81
    invoke-virtual {v5, v11, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 82
    :cond_21
    iget v2, v15, Lck6;->k:I

    move-object/from16 v3, v17

    :goto_1e
    iget v5, v15, Lck6;->l:I

    if-ge v2, v5, :cond_22

    .line 83
    iget-object v5, v15, Lck6;->j:[I

    aget v5, v5, v2

    iget-object v6, v15, Lck6;->o:Lyk6;

    .line 84
    invoke-virtual {v15, v11, v5, v3, v6}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzk6;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_22
    if-eqz v3, :cond_23

    .line 85
    iget-object v2, v15, Lck6;->o:Lyk6;

    .line 86
    invoke-virtual {v2, v11, v3}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    if-nez v1, :cond_25

    move/from16 v2, p4

    if-ne v0, v2, :cond_24

    goto :goto_1f

    .line 87
    :cond_24
    invoke-static {}, Lkj6;->g()Lkj6;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v2, p4

    if-gt v0, v2, :cond_26

    if-ne v4, v1, :cond_26

    :goto_1f
    return v0

    .line 88
    :cond_26
    invoke-static {}, Lkj6;->g()Lkj6;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(Ljava/lang/Object;[BIILni6;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1
    sget-object v9, Lck6;->s:Lsun/misc/Unsafe;

    const/4 v8, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v3, v11}, Ln56;->h0(I[BILni6;)I

    move-result v0

    .line 4
    iget v3, v11, Lni6;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_2

    .line 5
    div-int/lit8 v2, v2, 0x3

    .line 6
    iget v0, v15, Lck6;->c:I

    if-lt v5, v0, :cond_1

    iget v0, v15, Lck6;->d:I

    if-gt v5, v0, :cond_1

    .line 7
    invoke-virtual {v15, v5, v2}, Lck6;->W(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v15, v5}, Lck6;->O(I)I

    move-result v0

    :goto_2
    move v2, v0

    :goto_3
    if-ne v2, v8, :cond_3

    move v2, v4

    move/from16 v18, v5

    move-object/from16 v27, v9

    const/4 v11, 0x0

    :goto_4
    const/16 v19, -0x1

    goto/16 :goto_14

    .line 9
    :cond_3
    iget-object v0, v15, Lck6;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    .line 10
    invoke-static {v1}, Lck6;->X(I)I

    move-result v0

    .line 11
    invoke-static {v1}, Lck6;->D(I)J

    move-result-wide v10

    const/16 v8, 0x11

    move/from16 p3, v5

    if-gt v0, v8, :cond_d

    .line 12
    iget-object v8, v15, Lck6;->a:[I

    add-int/lit8 v20, v2, 0x2

    aget v8, v8, v20

    ushr-int/lit8 v20, v8, 0x14

    const/4 v5, 0x1

    shl-int v20, v5, v20

    move-wide/from16 v22, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    if-eq v8, v6, :cond_6

    if-eq v6, v10, :cond_4

    int-to-long v5, v6

    .line 13
    invoke-virtual {v9, v14, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-eq v8, v10, :cond_5

    int-to-long v5, v8

    .line 14
    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :cond_5
    move v6, v8

    :cond_6
    const/4 v5, 0x5

    packed-switch v0, :pswitch_data_0

    :cond_7
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    :cond_8
    move/from16 p3, v6

    goto/16 :goto_d

    :pswitch_0
    if-nez v3, :cond_7

    move-object/from16 v8, p5

    move-wide/from16 v0, v22

    .line 15
    invoke-static {v12, v4, v8}, Ln56;->k0([BILni6;)I

    move-result v11

    .line 16
    iget-wide v3, v8, Lni6;->b:J

    .line 17
    invoke-static {v3, v4}, Lri6;->c(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v11

    move v11, v2

    move-wide/from16 v2, v22

    move/from16 v18, p3

    .line 18
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 p3, v6

    goto/16 :goto_b

    :pswitch_1
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    if-nez v3, :cond_8

    .line 19
    invoke-static {v12, v4, v8}, Ln56;->i0([BILni6;)I

    move-result v0

    .line 20
    iget v1, v8, Lni6;->a:I

    .line 21
    invoke-static {v1}, Lri6;->b(I)I

    move-result v1

    move-wide/from16 v2, v22

    .line 22
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move-wide/from16 v0, v22

    if-nez v3, :cond_8

    .line 23
    invoke-static {v12, v4, v8}, Ln56;->i0([BILni6;)I

    move-result v2

    .line 24
    iget v3, v8, Lni6;->a:I

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move-wide/from16 v0, v22

    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    .line 25
    invoke-static {v12, v4, v8}, Ln56;->P([BILni6;)I

    move-result v2

    .line 26
    iget-object v3, v8, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    move v0, v2

    :goto_6
    move/from16 p3, v6

    goto/16 :goto_c

    :pswitch_4
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move-wide/from16 v0, v22

    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    .line 27
    invoke-virtual {v15, v11}, Lck6;->p(I)Lqk6;

    move-result-object v2

    .line 28
    invoke-static {v2, v12, v4, v13, v8}, Ln56;->T(Lqk6;[BIILni6;)I

    move-result v2

    .line 29
    invoke-virtual {v9, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 30
    iget-object v3, v8, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 31
    :cond_9
    iget-object v4, v8, Lni6;->c:Ljava/lang/Object;

    .line 32
    invoke-static {v3, v4}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    move v0, v2

    move/from16 p3, v6

    goto :goto_a

    :pswitch_5
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x2

    if-ne v3, v0, :cond_c

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 34
    invoke-static {v12, v4, v8}, Ln56;->e0([BILni6;)I

    move-result v0

    goto :goto_8

    .line 35
    :cond_a
    invoke-static {v12, v4, v8}, Ln56;->f0([BILni6;)I

    move-result v0

    .line 36
    :goto_8
    iget-object v1, v8, Lni6;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_6
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x1

    if-nez v3, :cond_c

    .line 37
    invoke-static {v12, v4, v8}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 38
    iget-wide v2, v8, Lni6;->b:J

    const-wide/16 v21, 0x0

    cmp-long v4, v2, v21

    if-eqz v4, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    .line 39
    :goto_9
    sget-object v2, Lcl6;->e:Lcl6$e;

    invoke-virtual {v2, v14, v5, v6, v0}, Lcl6$e;->k(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_a

    :pswitch_7
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x5

    if-ne v3, v0, :cond_c

    .line 40
    invoke-static {v12, v4}, Ln56;->Q([BI)I

    move-result v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v4, 0x4

    move v0, v4

    :goto_a
    or-int v7, v7, v20

    move/from16 v6, p3

    goto/16 :goto_10

    :pswitch_8
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 41
    invoke-static {v12, v4}, Ln56;->R([BI)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v6, 0x8

    goto/16 :goto_c

    :pswitch_9
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_c

    .line 42
    invoke-static {v12, v4, v8}, Ln56;->i0([BILni6;)I

    move-result v0

    .line 43
    iget v1, v8, Lni6;->a:I

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_c

    .line 44
    invoke-static {v12, v4, v8}, Ln56;->k0([BILni6;)I

    move-result v17

    .line 45
    iget-wide v2, v8, Lni6;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v5

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    or-int v0, v7, v20

    move/from16 v6, p3

    move v7, v0

    move/from16 v0, v17

    goto/16 :goto_f

    :pswitch_b
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x5

    if-ne v3, v0, :cond_c

    .line 46
    invoke-static {v12, v4}, Ln56;->Q([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 47
    sget-object v1, Lcl6;->e:Lcl6$e;

    invoke-virtual {v1, v14, v5, v6, v0}, Lcl6$e;->n(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_c

    :pswitch_c
    move/from16 v18, p3

    move-object/from16 v8, p5

    move v11, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 48
    invoke-static {v12, v4}, Ln56;->R([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 49
    invoke-static {v14, v5, v6, v0, v1}, Lcl6;->t(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_c
    or-int v7, v7, v20

    move/from16 v6, p3

    goto :goto_f

    :cond_c
    :goto_d
    move/from16 v6, p3

    move v2, v4

    move-object/from16 v27, v9

    goto/16 :goto_4

    :cond_d
    move/from16 v18, p3

    move-object/from16 v8, p5

    move/from16 v20, v6

    move-wide v5, v10

    const v10, 0xfffff

    move v11, v2

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_11

    const/4 v2, 0x2

    if-ne v3, v2, :cond_10

    .line 50
    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj6$d;

    .line 51
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_e

    :cond_e
    mul-int/lit8 v1, v1, 0x2

    .line 53
    :goto_e
    invoke-interface {v0, v1}, Ljj6$d;->E(I)Ljj6$d;

    move-result-object v0

    .line 54
    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v5, v0

    .line 55
    invoke-virtual {v15, v11}, Lck6;->p(I)Lqk6;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v15, v20

    move-object/from16 v6, p5

    .line 56
    invoke-static/range {v0 .. v6}, Ln56;->U(Lqk6;I[BIILjj6$d;Lni6;)I

    move-result v0

    move v6, v15

    :goto_f
    move-object/from16 v15, p0

    :goto_10
    move v2, v11

    move/from16 v1, v18

    move-object v11, v8

    goto/16 :goto_16

    :cond_10
    move v15, v4

    move/from16 v26, v7

    move-object/from16 v27, v9

    move/from16 v23, v20

    const/16 v19, -0x1

    move/from16 v20, v11

    goto/16 :goto_11

    :cond_11
    move/from16 v15, v20

    const/16 v2, 0x31

    if-gt v0, v2, :cond_13

    int-to-long v1, v1

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v22, v3

    move v3, v4

    move/from16 v23, v15

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v26, v7

    move/from16 v7, v22

    const/16 v19, -0x1

    move v8, v11

    move-object/from16 v27, v9

    move-wide/from16 v9, v20

    move/from16 v20, v11

    move/from16 v11, p3

    move-wide/from16 v12, v24

    move-object/from16 v14, p5

    .line 57
    invoke-virtual/range {v0 .. v14}, Lck6;->N(Ljava/lang/Object;[BIIIIIIJIJLni6;)I

    move-result v0

    if-eq v0, v15, :cond_12

    goto/16 :goto_12

    :cond_12
    move v4, v0

    goto/16 :goto_13

    :cond_13
    move/from16 p3, v0

    move/from16 v22, v3

    move-wide/from16 v24, v5

    move/from16 v26, v7

    move-object/from16 v27, v9

    move/from16 v20, v11

    move/from16 v23, v15

    const/16 v19, -0x1

    move v15, v4

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_15

    move/from16 v7, v22

    const/4 v0, 0x2

    if-ne v7, v0, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v24

    move-object/from16 v8, p5

    .line 58
    invoke-virtual/range {v0 .. v8}, Lck6;->J(Ljava/lang/Object;[BIIIJLni6;)I

    move-result v0

    if-eq v0, v15, :cond_12

    goto :goto_12

    :cond_14
    :goto_11
    move v4, v15

    goto :goto_13

    :cond_15
    move/from16 v7, v22

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v18

    move-wide/from16 v10, v24

    move/from16 v12, v20

    move-object/from16 v13, p5

    .line 59
    invoke-virtual/range {v0 .. v13}, Lck6;->K(Ljava/lang/Object;[BIIIIIIIJILni6;)I

    move-result v0

    if-eq v0, v15, :cond_12

    :goto_12
    move/from16 v2, v20

    move/from16 v6, v23

    move/from16 v7, v26

    goto :goto_15

    :goto_13
    move v2, v4

    move/from16 v11, v20

    move/from16 v6, v23

    move/from16 v7, v26

    .line 60
    :goto_14
    invoke-static/range {p1 .. p1}, Lck6;->q(Ljava/lang/Object;)Lzk6;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 61
    invoke-static/range {v0 .. v5}, Ln56;->g0(I[BIILzk6;Lni6;)I

    move-result v0

    move v2, v11

    :goto_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move-object/from16 v9, v27

    :goto_16
    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_16
    move/from16 v26, v7

    move-object/from16 v27, v9

    const v1, 0xfffff

    if-eq v6, v1, :cond_17

    int-to-long v1, v6

    move-object/from16 v3, p1

    move/from16 v7, v26

    move-object/from16 v4, v27

    .line 62
    invoke-virtual {v4, v3, v1, v2, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_17
    move/from16 v1, p4

    if-ne v0, v1, :cond_18

    return v0

    .line 63
    :cond_18
    invoke-static {}, Lkj6;->g()Lkj6;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Ljava/lang/Object;[BIIIIIIJIJLni6;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 1
    sget-object v11, Lck6;->s:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljj6$d;

    .line 2
    invoke-interface {v12}, Ljj6$d;->F0()Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_1

    .line 3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v13, v13, 0x2

    .line 4
    :goto_0
    invoke-interface {v12, v13}, Ljj6$d;->E(I)Ljj6$d;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x5

    const/4 v13, 0x3

    const/4 v15, 0x1

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    if-ne v6, v13, :cond_2d

    .line 6
    invoke-virtual {v0, v8}, Lck6;->p(I)Lqk6;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Ln56;->S(Lqk6;[BIIILni6;)I

    move-result v4

    .line 8
    iget-object v8, v7, Lni6;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_2d

    .line 9
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v8

    .line 10
    iget v9, v7, Lni6;->a:I

    if-eq v2, v9, :cond_2

    goto/16 :goto_13

    :cond_2
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 11
    invoke-static/range {p6 .. p11}, Ln56;->S(Lqk6;[BIIILni6;)I

    move-result v4

    .line 12
    iget-object v8, v7, Lni6;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v14, :cond_3

    .line 13
    invoke-static {v3, v4, v12, v7}, Ln56;->b0([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_3
    if-nez v6, :cond_2d

    .line 14
    check-cast v12, Lrj6;

    .line 15
    invoke-static {v3, v4, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 16
    iget-wide v8, v7, Lni6;->b:J

    invoke-static {v8, v9}, Lri6;->c(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    :goto_2
    if-ge v1, v5, :cond_2e

    .line 17
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 18
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_4

    goto/16 :goto_14

    .line 19
    :cond_4
    invoke-static {v3, v4, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 20
    iget-wide v8, v7, Lni6;->b:J

    invoke-static {v8, v9}, Lri6;->c(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    goto :goto_2

    :pswitch_2
    if-ne v6, v14, :cond_5

    .line 21
    invoke-static {v3, v4, v12, v7}, Ln56;->a0([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_5
    if-nez v6, :cond_2d

    .line 22
    check-cast v12, Lij6;

    .line 23
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 24
    iget v4, v7, Lni6;->a:I

    invoke-static {v4}, Lri6;->b(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lij6;->h(I)V

    :goto_3
    if-ge v1, v5, :cond_2e

    .line 25
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 26
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_6

    goto/16 :goto_14

    .line 27
    :cond_6
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 28
    iget v4, v7, Lni6;->a:I

    invoke-static {v4}, Lri6;->b(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lij6;->h(I)V

    goto :goto_3

    :pswitch_3
    if-ne v6, v14, :cond_7

    .line 29
    invoke-static {v3, v4, v12, v7}, Ln56;->c0([BILjj6$d;Lni6;)I

    move-result v2

    goto :goto_4

    :cond_7
    if-nez v6, :cond_2d

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 30
    invoke-static/range {v2 .. v7}, Ln56;->j0(I[BIILjj6$d;Lni6;)I

    move-result v2

    .line 31
    :goto_4
    check-cast v1, Lgj6;

    iget-object v3, v1, Lgj6;->unknownFields:Lzk6;

    .line 32
    sget-object v4, Lzk6;->f:Lzk6;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    .line 33
    :cond_8
    iget-object v4, v0, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 v5, v8, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    aget-object v4, v4, v5

    check-cast v4, Ljj6$b;

    .line 34
    iget-object v5, v0, Lck6;->o:Lyk6;

    move/from16 v6, p6

    .line 35
    invoke-static {v6, v12, v4, v3, v5}, Lsk6;->y(ILjava/util/List;Ljj6$b;Ljava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzk6;

    if-eqz v3, :cond_9

    .line 36
    iput-object v3, v1, Lgj6;->unknownFields:Lzk6;

    :cond_9
    move v1, v2

    goto/16 :goto_14

    :pswitch_4
    if-ne v6, v14, :cond_2d

    .line 37
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 38
    iget v4, v7, Lni6;->a:I

    if-ltz v4, :cond_10

    .line 39
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_a

    .line 40
    sget-object v4, Lqi6;->f:Lqi6;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 41
    :cond_a
    invoke-static {v3, v1, v4}, Lqi6;->o([BII)Lqi6;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v1, v4

    :goto_6
    if-ge v1, v5, :cond_2e

    .line 42
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 43
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_b

    goto/16 :goto_14

    .line 44
    :cond_b
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v1

    .line 45
    iget v4, v7, Lni6;->a:I

    if-ltz v4, :cond_e

    .line 46
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 47
    sget-object v4, Lqi6;->f:Lqi6;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 48
    :cond_c
    invoke-static {v3, v1, v4}, Lqi6;->o([BII)Lqi6;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 49
    :cond_d
    invoke-static {}, Lkj6;->h()Lkj6;

    move-result-object v1

    throw v1

    .line 50
    :cond_e
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    .line 51
    :cond_f
    invoke-static {}, Lkj6;->h()Lkj6;

    move-result-object v1

    throw v1

    .line 52
    :cond_10
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v14, :cond_2d

    .line 53
    invoke-virtual {v0, v8}, Lck6;->p(I)Lqk6;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 54
    invoke-static/range {p6 .. p12}, Ln56;->U(Lqk6;I[BIILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_6
    if-ne v6, v14, :cond_2d

    const-wide/32 v13, 0x20000000

    and-long v13, p9, v13

    const-string v1, ""

    cmp-long v6, v13, v9

    if-nez v6, :cond_16

    .line 55
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 56
    iget v6, v7, Lni6;->a:I

    if-ltz v6, :cond_15

    if-nez v6, :cond_11

    .line 57
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 58
    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 59
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v4, v6

    :goto_8
    if-ge v4, v5, :cond_2d

    .line 60
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v6

    .line 61
    iget v8, v7, Lni6;->a:I

    if-eq v2, v8, :cond_12

    goto/16 :goto_13

    .line 62
    :cond_12
    invoke-static {v3, v6, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 63
    iget v6, v7, Lni6;->a:I

    if-ltz v6, :cond_14

    if-nez v6, :cond_13

    .line 64
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 65
    :cond_13
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 66
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 67
    :cond_14
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    .line 68
    :cond_15
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    .line 69
    :cond_16
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 70
    iget v6, v7, Lni6;->a:I

    if-ltz v6, :cond_1d

    if-nez v6, :cond_17

    .line 71
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    add-int v8, v4, v6

    .line 72
    invoke-static {v3, v4, v8}, Ldl6;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 73
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 74
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v4, v8

    :goto_a
    if-ge v4, v5, :cond_2d

    .line 75
    invoke-static {v3, v4, v7}, Ln56;->i0([BILni6;)I

    move-result v6

    .line 76
    iget v8, v7, Lni6;->a:I

    if-eq v2, v8, :cond_18

    goto/16 :goto_13

    .line 77
    :cond_18
    invoke-static {v3, v6, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 78
    iget v6, v7, Lni6;->a:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_19

    .line 79
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    add-int v8, v4, v6

    .line 80
    invoke-static {v3, v4, v8}, Ldl6;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 81
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 82
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 83
    :cond_1a
    invoke-static {}, Lkj6;->c()Lkj6;

    move-result-object v1

    throw v1

    .line 84
    :cond_1b
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    .line 85
    :cond_1c
    invoke-static {}, Lkj6;->c()Lkj6;

    move-result-object v1

    throw v1

    .line 86
    :cond_1d
    invoke-static {}, Lkj6;->f()Lkj6;

    move-result-object v1

    throw v1

    :pswitch_7
    if-ne v6, v14, :cond_1e

    .line 87
    invoke-static {v3, v4, v12, v7}, Ln56;->V([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_1e
    if-nez v6, :cond_2d

    .line 88
    check-cast v12, Loi6;

    .line 89
    invoke-static {v3, v4, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 90
    iget-wide v13, v7, Lni6;->b:J

    const/4 v4, 0x0

    cmp-long v6, v13, v9

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_b

    :cond_1f
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v12, v6}, Loi6;->h(Z)V

    :goto_c
    if-ge v1, v5, :cond_2e

    .line 91
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v6

    .line 92
    iget v8, v7, Lni6;->a:I

    if-eq v2, v8, :cond_20

    goto/16 :goto_14

    .line 93
    :cond_20
    invoke-static {v3, v6, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 94
    iget-wide v13, v7, Lni6;->b:J

    cmp-long v6, v13, v9

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_d

    :cond_21
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v12, v6}, Loi6;->h(Z)V

    goto :goto_c

    :pswitch_8
    if-ne v6, v14, :cond_22

    .line 95
    invoke-static {v3, v4, v12, v7}, Ln56;->X([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_22
    if-ne v6, v11, :cond_2d

    .line 96
    check-cast v12, Lij6;

    .line 97
    invoke-static/range {p2 .. p3}, Ln56;->Q([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lij6;->h(I)V

    :goto_e
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2e

    .line 98
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 99
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_23

    goto/16 :goto_14

    .line 100
    :cond_23
    invoke-static {v3, v4}, Ln56;->Q([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lij6;->h(I)V

    goto :goto_e

    :pswitch_9
    if-ne v6, v14, :cond_24

    .line 101
    invoke-static {v3, v4, v12, v7}, Ln56;->Y([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_24
    if-ne v6, v15, :cond_2d

    .line 102
    check-cast v12, Lrj6;

    .line 103
    invoke-static/range {p2 .. p3}, Ln56;->R([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    :goto_f
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_2e

    .line 104
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 105
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_25

    goto/16 :goto_14

    .line 106
    :cond_25
    invoke-static {v3, v4}, Ln56;->R([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    goto :goto_f

    :pswitch_a
    if-ne v6, v14, :cond_26

    .line 107
    invoke-static {v3, v4, v12, v7}, Ln56;->c0([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_26
    if-nez v6, :cond_2d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 108
    invoke-static/range {p5 .. p10}, Ln56;->j0(I[BIILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_b
    if-ne v6, v14, :cond_27

    .line 109
    invoke-static {v3, v4, v12, v7}, Ln56;->d0([BILjj6$d;Lni6;)I

    move-result v1

    goto/16 :goto_14

    :cond_27
    if-nez v6, :cond_2d

    .line 110
    check-cast v12, Lrj6;

    .line 111
    invoke-static {v3, v4, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 112
    iget-wide v8, v7, Lni6;->b:J

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    :goto_10
    if-ge v1, v5, :cond_2e

    .line 113
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 114
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_28

    goto/16 :goto_14

    .line 115
    :cond_28
    invoke-static {v3, v4, v7}, Ln56;->k0([BILni6;)I

    move-result v1

    .line 116
    iget-wide v8, v7, Lni6;->b:J

    invoke-virtual {v12, v8, v9}, Lrj6;->h(J)V

    goto :goto_10

    :pswitch_c
    if-ne v6, v14, :cond_29

    .line 117
    invoke-static {v3, v4, v12, v7}, Ln56;->Z([BILjj6$d;Lni6;)I

    move-result v1

    goto :goto_14

    :cond_29
    if-ne v6, v11, :cond_2d

    .line 118
    check-cast v12, Lej6;

    .line 119
    invoke-static/range {p2 .. p3}, Ln56;->Q([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 120
    invoke-virtual {v12, v1}, Lej6;->h(F)V

    :goto_11
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2e

    .line 121
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 122
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_2a

    goto :goto_14

    .line 123
    :cond_2a
    invoke-static {v3, v4}, Ln56;->Q([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 124
    invoke-virtual {v12, v1}, Lej6;->h(F)V

    goto :goto_11

    :pswitch_d
    if-ne v6, v14, :cond_2b

    .line 125
    invoke-static {v3, v4, v12, v7}, Ln56;->W([BILjj6$d;Lni6;)I

    move-result v1

    goto :goto_14

    :cond_2b
    if-ne v6, v15, :cond_2d

    .line 126
    check-cast v12, Lvi6;

    .line 127
    invoke-static/range {p2 .. p3}, Ln56;->R([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 128
    invoke-virtual {v12, v8, v9}, Lvi6;->h(D)V

    :goto_12
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_2e

    .line 129
    invoke-static {v3, v1, v7}, Ln56;->i0([BILni6;)I

    move-result v4

    .line 130
    iget v6, v7, Lni6;->a:I

    if-eq v2, v6, :cond_2c

    goto :goto_14

    .line 131
    :cond_2c
    invoke-static {v3, v4}, Ln56;->R([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 132
    invoke-virtual {v12, v8, v9}, Lvi6;->h(D)V

    goto :goto_12

    :cond_2d
    :goto_13
    move v1, v4

    :cond_2e
    :goto_14
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O(I)I
    .locals 1

    .line 1
    iget v0, p0, Lck6;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lck6;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lck6;->W(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final P(Ljava/lang/Object;JLok6;Lqk6;Lyi6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lok6;",
            "Lqk6<",
            "TE;>;",
            "Lyi6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->n:Lqj6;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p4, p1, p5, p6}, Lok6;->f(Ljava/util/List;Lqk6;Lyi6;)V

    return-void
.end method

.method public final Q(Ljava/lang/Object;ILok6;Lqk6;Lyi6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lok6;",
            "Lqk6<",
            "TE;>;",
            "Lyi6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    .line 2
    iget-object p2, p0, Lck6;->n:Lqj6;

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p3, p1, p4, p5}, Lok6;->j(Ljava/util/List;Lqk6;Lyi6;)V

    return-void
.end method

.method public final R(Ljava/lang/Object;ILok6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    invoke-interface {p3}, Lok6;->L()Ljava/lang/String;

    move-result-object p2

    .line 2
    sget-object p3, Lcl6;->e:Lcl6$e;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lck6;->g:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    invoke-interface {p3}, Lok6;->x()Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object p3, Lcl6;->e:Lcl6$e;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    invoke-interface {p3}, Lok6;->D()Lqi6;

    move-result-object p2

    .line 7
    sget-object p3, Lcl6;->e:Lcl6$e;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final S(Ljava/lang/Object;ILok6;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lck6;->n:Lqj6;

    .line 2
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p3, p1}, Lok6;->C(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lck6;->n:Lqj6;

    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lok6;->z(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final U(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 2
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3
    sget-object v2, Lcl6;->e:Lcl6$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final V(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    sget-object p3, Lcl6;->e:Lcl6$e;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final W(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 2
    iget-object v3, p0, Lck6;->a:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final Y(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final Z(Ljava/lang/Object;Lhl6;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhl6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lck6;->f:Z

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Lck6;->p:Lzi6;

    invoke-virtual {v3, v1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcj6;->h()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lcj6;->k()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    iget-object v6, v0, Lck6;->a:[I

    array-length v6, v6

    .line 7
    sget-object v7, Lck6;->s:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 8
    invoke-virtual {v0, v10}, Lck6;->Y(I)I

    move-result v13

    .line 9
    iget-object v14, v0, Lck6;->a:[I

    aget v14, v14, v10

    .line 10
    invoke-static {v13}, Lck6;->X(I)I

    move-result v15

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    .line 11
    iget-object v4, v0, Lck6;->a:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_1

    int-to-long v11, v9

    .line 12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 13
    iget-object v9, v0, Lck6;->p:Lzi6;

    invoke-virtual {v9, v5}, Lzi6;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 14
    iget-object v9, v0, Lck6;->p:Lzi6;

    invoke-virtual {v9, v2, v5}, Lzi6;->j(Lhl6;Ljava/util/Map$Entry;)V

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v13}, Lck6;->D(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 17
    :pswitch_0
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 19
    move-object v9, v2

    check-cast v9, Lui6;

    invoke-virtual {v9, v14, v4, v8}, Lui6;->c(ILjava/lang/Object;Lqk6;)V

    goto :goto_3

    .line 20
    :pswitch_1
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    invoke-static {v1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    invoke-virtual {v4, v14, v8, v9}, Lui6;->g(IJ)V

    goto :goto_3

    .line 22
    :pswitch_2
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    invoke-virtual {v8, v14, v4}, Lui6;->f(II)V

    goto :goto_3

    .line 24
    :pswitch_3
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    invoke-static {v1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 26
    iget-object v4, v4, Lui6;->a:Lti6;

    .line 27
    invoke-virtual {v4, v14, v8, v9}, Lti6;->O(IJ)V

    goto :goto_3

    .line 28
    :pswitch_4
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 30
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 31
    invoke-virtual {v8, v14, v4}, Lti6;->M(II)V

    goto :goto_3

    .line 32
    :pswitch_5
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 34
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 35
    invoke-virtual {v8, v14, v4}, Lti6;->Q(II)V

    goto :goto_3

    .line 36
    :pswitch_6
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 37
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 38
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->Z(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_7
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqi6;

    move-object v8, v2

    check-cast v8, Lui6;

    .line 41
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->K(ILqi6;)V

    goto/16 :goto_3

    .line 42
    :pswitch_8
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 43
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 44
    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lui6;

    invoke-virtual {v9, v14, v4, v8}, Lui6;->d(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_3

    .line 45
    :pswitch_9
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lck6;->b0(ILjava/lang/Object;Lhl6;)V

    goto/16 :goto_3

    .line 47
    :pswitch_a
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    invoke-static {v1, v8, v9}, Lck6;->E(Ljava/lang/Object;J)Z

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 49
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->I(IZ)V

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 52
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->M(II)V

    goto/16 :goto_3

    .line 53
    :pswitch_c
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    invoke-static {v1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 55
    iget-object v4, v4, Lui6;->a:Lti6;

    invoke-virtual {v4, v14, v8, v9}, Lti6;->O(IJ)V

    goto/16 :goto_3

    .line 56
    :pswitch_d
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    invoke-static {v1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 58
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->Q(II)V

    goto/16 :goto_3

    .line 59
    :pswitch_e
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    invoke-static {v1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 61
    iget-object v4, v4, Lui6;->a:Lti6;

    invoke-virtual {v4, v14, v8, v9}, Lti6;->b0(IJ)V

    goto/16 :goto_3

    .line 62
    :pswitch_f
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    invoke-static {v1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 64
    iget-object v4, v4, Lui6;->a:Lti6;

    .line 65
    invoke-virtual {v4, v14, v8, v9}, Lti6;->b0(IJ)V

    goto/16 :goto_3

    .line 66
    :pswitch_10
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 67
    invoke-static {v1, v8, v9}, Lck6;->G(Ljava/lang/Object;J)F

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    invoke-virtual {v8, v14, v4}, Lui6;->b(IF)V

    goto/16 :goto_3

    .line 68
    :pswitch_11
    invoke-virtual {v0, v1, v14, v10}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    invoke-static {v1, v8, v9}, Lck6;->F(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    invoke-virtual {v4, v14, v8, v9}, Lui6;->a(ID)V

    goto/16 :goto_3

    .line 70
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v10}, Lck6;->a0(Lhl6;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 71
    :pswitch_13
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 72
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v9

    .line 74
    invoke-static {v4, v8, v2, v9}, Lsk6;->K(ILjava/util/List;Lhl6;Lqk6;)V

    goto/16 :goto_3

    .line 75
    :pswitch_14
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 76
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    .line 77
    invoke-static {v4, v8, v2, v13}, Lsk6;->R(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 78
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 79
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 80
    invoke-static {v4, v8, v2, v13}, Lsk6;->Q(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 81
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 82
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 83
    invoke-static {v4, v8, v2, v13}, Lsk6;->P(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 84
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 85
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 86
    invoke-static {v4, v8, v2, v13}, Lsk6;->O(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 87
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 88
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 89
    invoke-static {v4, v8, v2, v13}, Lsk6;->G(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 90
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 91
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 92
    invoke-static {v4, v8, v2, v13}, Lsk6;->T(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 93
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 94
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 95
    invoke-static {v4, v8, v2, v13}, Lsk6;->D(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 96
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 97
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 98
    invoke-static {v4, v8, v2, v13}, Lsk6;->H(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 99
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 100
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 101
    invoke-static {v4, v8, v2, v13}, Lsk6;->I(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 102
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 103
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 104
    invoke-static {v4, v8, v2, v13}, Lsk6;->L(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 105
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 106
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 107
    invoke-static {v4, v8, v2, v13}, Lsk6;->U(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 108
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 109
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 110
    invoke-static {v4, v8, v2, v13}, Lsk6;->M(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 111
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 112
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 113
    invoke-static {v4, v8, v2, v13}, Lsk6;->J(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 114
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 115
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 116
    invoke-static {v4, v8, v2, v13}, Lsk6;->F(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 117
    :pswitch_22
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 118
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 119
    invoke-static {v4, v8, v2, v13}, Lsk6;->R(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 120
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 121
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 122
    invoke-static {v4, v8, v2, v13}, Lsk6;->Q(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 123
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 124
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 125
    invoke-static {v4, v8, v2, v13}, Lsk6;->P(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 126
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 127
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 128
    invoke-static {v4, v8, v2, v13}, Lsk6;->O(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 129
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 130
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 131
    invoke-static {v4, v8, v2, v13}, Lsk6;->G(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 132
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 133
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 134
    invoke-static {v4, v8, v2, v13}, Lsk6;->T(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    .line 135
    :pswitch_28
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 136
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 137
    invoke-static {v4, v8, v2}, Lsk6;->E(ILjava/util/List;Lhl6;)V

    goto/16 :goto_3

    .line 138
    :pswitch_29
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 139
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 140
    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v9

    .line 141
    invoke-static {v4, v8, v2, v9}, Lsk6;->N(ILjava/util/List;Lhl6;Lqk6;)V

    goto/16 :goto_3

    .line 142
    :pswitch_2a
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 143
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 144
    invoke-static {v4, v8, v2}, Lsk6;->S(ILjava/util/List;Lhl6;)V

    goto/16 :goto_3

    .line 145
    :pswitch_2b
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 146
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 147
    invoke-static {v4, v8, v2, v13}, Lsk6;->D(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 148
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 149
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 150
    invoke-static {v4, v8, v2, v13}, Lsk6;->H(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 151
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 152
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 153
    invoke-static {v4, v8, v2, v13}, Lsk6;->I(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 154
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 155
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 156
    invoke-static {v4, v8, v2, v13}, Lsk6;->L(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 157
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 158
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 159
    invoke-static {v4, v8, v2, v13}, Lsk6;->U(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 160
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 161
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 162
    invoke-static {v4, v8, v2, v13}, Lsk6;->M(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 163
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 164
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 165
    invoke-static {v4, v8, v2, v13}, Lsk6;->J(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 166
    iget-object v4, v0, Lck6;->a:[I

    aget v4, v4, v10

    .line 167
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 168
    invoke-static {v4, v8, v2, v13}, Lsk6;->F(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 169
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 170
    move-object v9, v2

    check-cast v9, Lui6;

    invoke-virtual {v9, v14, v4, v8}, Lui6;->c(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    invoke-virtual {v4, v14, v8, v9}, Lui6;->g(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    invoke-virtual {v8, v14, v4}, Lui6;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 173
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 174
    iget-object v4, v4, Lui6;->a:Lti6;

    .line 175
    invoke-virtual {v4, v14, v8, v9}, Lti6;->O(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 177
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 178
    invoke-virtual {v8, v14, v4}, Lti6;->M(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 179
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 180
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 181
    invoke-virtual {v8, v14, v4}, Lti6;->Q(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 182
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 183
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->Z(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 184
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqi6;

    move-object v8, v2

    check-cast v8, Lui6;

    .line 185
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->K(ILqi6;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 186
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 187
    invoke-virtual {v0, v10}, Lck6;->p(I)Lqk6;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lui6;

    invoke-virtual {v9, v14, v4, v8}, Lui6;->d(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 188
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lck6;->b0(ILjava/lang/Object;Lhl6;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 189
    invoke-static {v1, v8, v9}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v4

    .line 190
    move-object v8, v2

    check-cast v8, Lui6;

    .line 191
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->I(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 192
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 193
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->M(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 194
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 195
    iget-object v4, v4, Lui6;->a:Lti6;

    invoke-virtual {v4, v14, v8, v9}, Lti6;->O(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 196
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lui6;

    .line 197
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v14, v4}, Lti6;->Q(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 198
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 199
    iget-object v4, v4, Lui6;->a:Lti6;

    invoke-virtual {v4, v14, v8, v9}, Lti6;->b0(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v4, v2

    check-cast v4, Lui6;

    .line 201
    iget-object v4, v4, Lui6;->a:Lti6;

    .line 202
    invoke-virtual {v4, v14, v8, v9}, Lti6;->b0(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 203
    invoke-static {v1, v8, v9}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v4

    .line 204
    move-object v8, v2

    check-cast v8, Lui6;

    invoke-virtual {v8, v14, v4}, Lui6;->b(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    .line 205
    invoke-static {v1, v8, v9}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 206
    move-object v4, v2

    check-cast v4, Lui6;

    invoke-virtual {v4, v14, v8, v9}, Lui6;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 207
    iget-object v4, v0, Lck6;->p:Lzi6;

    invoke-virtual {v4, v2, v5}, Lzi6;->j(Lhl6;Ljava/util/Map$Entry;)V

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 209
    :cond_9
    iget-object v3, v0, Lck6;->o:Lyk6;

    .line 210
    invoke-virtual {v3, v1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lyk6;->s(Ljava/lang/Object;Lhl6;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2
    iget-object v4, p0, Lck6;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 3
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v5

    .line 4
    invoke-static {v4}, Lck6;->X(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 5
    :pswitch_0
    iget-object v4, p0, Lck6;->a:[I

    add-int/lit8 v7, v2, 0x2

    aget v4, v4, v7

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    .line 6
    invoke-static {p1, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    .line 7
    invoke-static {p2, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v7

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 8
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 9
    invoke-static {v4, v5}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 10
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 14
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 16
    invoke-static {v4, v5}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 17
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 19
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 21
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 23
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 25
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 27
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-static {v4, v5}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 32
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34
    invoke-static {v4, v5}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 35
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 37
    invoke-static {v4, v5}, Lsk6;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 38
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-static {p1, v5, v6}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 40
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 42
    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto/16 :goto_2

    .line 44
    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 46
    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    .line 48
    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    .line 50
    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-static {p1, v5, v6}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 52
    invoke-static {p2, v5, v6}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 53
    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lck6;->k(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-static {p1, v5, v6}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 55
    invoke-static {p2, v5, v6}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lck6;->o:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lck6;->o:Lyk6;

    invoke-virtual {v2, p2}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 59
    :cond_4
    iget-boolean v0, p0, Lck6;->f:Z

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lck6;->p:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lck6;->p:Lzi6;

    invoke-virtual {v0, p2}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Lcj6;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a0(Lhl6;ILjava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhl6;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lck6;->q:Lvj6;

    .line 2
    iget-object v1, p0, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x3

    const/4 v2, 0x2

    mul-int/lit8 p4, p4, 0x2

    aget-object p4, v1, p4

    .line 3
    invoke-interface {v0, p4}, Lvj6;->d(Ljava/lang/Object;)Ltj6$a;

    move-result-object p4

    iget-object v0, p0, Lck6;->q:Lvj6;

    .line 4
    invoke-interface {v0, p3}, Lvj6;->i(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 5
    check-cast p1, Lui6;

    .line 6
    iget-object v0, p1, Lui6;->a:Lti6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    iget-object v1, p1, Lui6;->a:Lti6;

    invoke-virtual {v1, p2, v2}, Lti6;->Y(II)V

    .line 9
    iget-object v1, p1, Lui6;->a:Lti6;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p4, v3, v4}, Ltj6;->a(Ltj6$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 11
    invoke-virtual {v1, v3}, Lti6;->a0(I)V

    .line 12
    iget-object v1, p1, Lui6;->a:Lti6;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v3, v0}, Ltj6;->b(Lti6;Ltj6$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lck6;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 3
    aget v1, v1, v2

    .line 4
    invoke-static {v1}, Lck6;->D(I)J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lck6;->a:[I

    aget v4, v4, v0

    .line 6
    invoke-static {v1}, Lck6;->X(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lck6;->A(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0, p2, v4, v0}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p2, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 10
    sget-object v5, Lcl6;->e:Lcl6$e;

    invoke-virtual {v5, p1, v2, v3, v1}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p1, v4, v0}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lck6;->A(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 13
    :pswitch_3
    invoke-virtual {p0, p2, v4, v0}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {p2, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 15
    sget-object v5, Lcl6;->e:Lcl6$e;

    invoke-virtual {v5, p1, v2, v3, v1}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1, v4, v0}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 17
    :pswitch_4
    iget-object v1, p0, Lck6;->q:Lvj6;

    .line 18
    sget-object v4, Lsk6;->a:Ljava/lang/Class;

    .line 19
    invoke-static {p1, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 20
    invoke-interface {v1, v4, v5}, Lvj6;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 22
    :pswitch_5
    iget-object v1, p0, Lck6;->n:Lqj6;

    invoke-virtual {v1, p1, p2, v2, v3}, Lqj6;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 23
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lck6;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p2, v2, v3}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 26
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 29
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 30
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 31
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p2, v2, v3}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 36
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 37
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 40
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 41
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 42
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 44
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 45
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 46
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 48
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 50
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lck6;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 51
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p2, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 53
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 55
    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2, v2, v3}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v1

    .line 57
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->k(Ljava/lang/Object;JZ)V

    .line 58
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 59
    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 61
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 62
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 63
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {p2, v2, v3}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 65
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 66
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p2, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v1

    .line 68
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->o(Ljava/lang/Object;JI)V

    .line 69
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 70
    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {p2, v2, v3}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 72
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 73
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p2, v2, v3}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 75
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 76
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p2, v2, v3}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v1

    .line 78
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v2, v3, v1}, Lcl6$e;->n(Ljava/lang/Object;JF)V

    .line 79
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_1

    .line 80
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p2, v2, v3}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcl6;->t(Ljava/lang/Object;JD)V

    .line 82
    invoke-virtual {p0, p1, v0}, Lck6;->U(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lck6;->o:Lyk6;

    .line 84
    sget-object v1, Lsk6;->a:Ljava/lang/Class;

    .line 85
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-virtual {v0, p2}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lyk6;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-virtual {v0, p1, v1}, Lyk6;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iget-boolean v0, p0, Lck6;->f:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lck6;->p:Lzi6;

    invoke-static {v0, p1, p2}, Lsk6;->A(Lzi6;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b0(ILjava/lang/Object;Lhl6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lui6;

    .line 3
    iget-object p3, p3, Lui6;->a:Lti6;

    invoke-virtual {p3, p1, p2}, Lti6;->W(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Lqi6;

    check-cast p3, Lui6;

    .line 5
    iget-object p3, p3, Lui6;->a:Lti6;

    invoke-virtual {p3, p1, p2}, Lti6;->K(ILqi6;)V

    :goto_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->m:Lek6;

    iget-object v1, p0, Lck6;->e:Lak6;

    invoke-interface {v0, v1}, Lek6;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lck6;->Y(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lck6;->a:[I

    aget v4, v4, v1

    .line 4
    invoke-static {v3}, Lck6;->D(I)J

    move-result-wide v5

    .line 5
    invoke-static {v3}, Lck6;->X(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 6
    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 23
    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lck6;->E(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ljj6;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lck6;->G(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 42
    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lck6;->F(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 46
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 55
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ljj6;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Ljj6;->b(J)I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lck6;->o:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 68
    iget-boolean v1, p0, Lck6;->f:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    .line 69
    iget-object v1, p0, Lck6;->p:Lzi6;

    invoke-virtual {v1, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object p1

    invoke-virtual {p1}, Lcj6;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public e(Ljava/lang/Object;Lhl6;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lhl6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lck6;->h:Z

    if-eqz v0, :cond_7

    .line 3
    iget-boolean v0, p0, Lck6;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lck6;->p:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcj6;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcj6;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 8
    :goto_0
    iget-object v3, p0, Lck6;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 9
    invoke-virtual {p0, v5}, Lck6;->Y(I)I

    move-result v6

    .line 10
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    .line 11
    iget-object v8, p0, Lck6;->p:Lzi6;

    invoke-virtual {v8, v2}, Lzi6;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 12
    iget-object v8, p0, Lck6;->p:Lzi6;

    invoke-virtual {v8, p2, v2}, Lzi6;->j(Lhl6;Ljava/util/Map$Entry;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v6}, Lck6;->X(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 15
    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 17
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 18
    move-object v9, p2

    check-cast v9, Lui6;

    invoke-virtual {v9, v7, v6, v8}, Lui6;->c(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_3

    .line 19
    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    invoke-virtual {v6, v7, v8, v9}, Lui6;->g(IJ)V

    goto/16 :goto_3

    .line 21
    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    invoke-virtual {v8, v7, v6}, Lui6;->f(II)V

    goto/16 :goto_3

    .line 23
    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 24
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    .line 25
    iget-object v6, v6, Lui6;->a:Lti6;

    .line 26
    invoke-virtual {v6, v7, v8, v9}, Lti6;->O(IJ)V

    goto/16 :goto_3

    .line 27
    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 28
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 29
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 30
    invoke-virtual {v8, v7, v6}, Lti6;->M(II)V

    goto/16 :goto_3

    .line 31
    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 32
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 33
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 34
    invoke-virtual {v8, v7, v6}, Lti6;->Q(II)V

    goto/16 :goto_3

    .line 35
    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 36
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 37
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->Z(II)V

    goto/16 :goto_3

    .line 38
    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 39
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqi6;

    .line 40
    move-object v8, p2

    check-cast v8, Lui6;

    .line 41
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->K(ILqi6;)V

    goto/16 :goto_3

    .line 42
    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 43
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 44
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lui6;

    invoke-virtual {v9, v7, v6, v8}, Lui6;->d(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_3

    .line 45
    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lck6;->b0(ILjava/lang/Object;Lhl6;)V

    goto/16 :goto_3

    .line 47
    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 48
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->E(Ljava/lang/Object;J)Z

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 49
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->I(IZ)V

    goto/16 :goto_3

    .line 50
    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 51
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 52
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->M(II)V

    goto/16 :goto_3

    .line 53
    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    .line 55
    iget-object v6, v6, Lui6;->a:Lti6;

    invoke-virtual {v6, v7, v8, v9}, Lti6;->O(IJ)V

    goto/16 :goto_3

    .line 56
    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    .line 58
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->Q(II)V

    goto/16 :goto_3

    .line 59
    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    .line 61
    iget-object v6, v6, Lui6;->a:Lti6;

    invoke-virtual {v6, v7, v8, v9}, Lti6;->b0(IJ)V

    goto/16 :goto_3

    .line 62
    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 63
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    .line 64
    iget-object v6, v6, Lui6;->a:Lti6;

    .line 65
    invoke-virtual {v6, v7, v8, v9}, Lti6;->b0(IJ)V

    goto/16 :goto_3

    .line 66
    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 67
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->G(Ljava/lang/Object;J)F

    move-result v6

    move-object v8, p2

    check-cast v8, Lui6;

    invoke-virtual {v8, v7, v6}, Lui6;->b(IF)V

    goto/16 :goto_3

    .line 68
    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 69
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lck6;->F(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lui6;

    invoke-virtual {v6, v7, v8, v9}, Lui6;->a(ID)V

    goto/16 :goto_3

    .line 70
    :pswitch_12
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lck6;->a0(Lhl6;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 71
    :pswitch_13
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 72
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 73
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 74
    invoke-static {v7, v6, p2, v8}, Lsk6;->K(ILjava/util/List;Lhl6;Lqk6;)V

    goto/16 :goto_3

    .line 75
    :pswitch_14
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 76
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 77
    invoke-static {v7, v6, p2, v9}, Lsk6;->R(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 78
    :pswitch_15
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 79
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 80
    invoke-static {v7, v6, p2, v9}, Lsk6;->Q(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 81
    :pswitch_16
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 82
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    invoke-static {v7, v6, p2, v9}, Lsk6;->P(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 84
    :pswitch_17
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 85
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 86
    invoke-static {v7, v6, p2, v9}, Lsk6;->O(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 87
    :pswitch_18
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 88
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 89
    invoke-static {v7, v6, p2, v9}, Lsk6;->G(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 90
    :pswitch_19
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 91
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 92
    invoke-static {v7, v6, p2, v9}, Lsk6;->T(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 93
    :pswitch_1a
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 94
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 95
    invoke-static {v7, v6, p2, v9}, Lsk6;->D(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 96
    :pswitch_1b
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 97
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 98
    invoke-static {v7, v6, p2, v9}, Lsk6;->H(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 99
    :pswitch_1c
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 100
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 101
    invoke-static {v7, v6, p2, v9}, Lsk6;->I(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 102
    :pswitch_1d
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 103
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 104
    invoke-static {v7, v6, p2, v9}, Lsk6;->L(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 105
    :pswitch_1e
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 106
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 107
    invoke-static {v7, v6, p2, v9}, Lsk6;->U(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 108
    :pswitch_1f
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 109
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 110
    invoke-static {v7, v6, p2, v9}, Lsk6;->M(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 111
    :pswitch_20
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 112
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 113
    invoke-static {v7, v6, p2, v9}, Lsk6;->J(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 114
    :pswitch_21
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 115
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 116
    invoke-static {v7, v6, p2, v9}, Lsk6;->F(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 117
    :pswitch_22
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 118
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 119
    invoke-static {v7, v6, p2, v4}, Lsk6;->R(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 120
    :pswitch_23
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 121
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 122
    invoke-static {v7, v6, p2, v4}, Lsk6;->Q(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 123
    :pswitch_24
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 124
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 125
    invoke-static {v7, v6, p2, v4}, Lsk6;->P(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 126
    :pswitch_25
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 127
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 128
    invoke-static {v7, v6, p2, v4}, Lsk6;->O(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 129
    :pswitch_26
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 130
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    invoke-static {v7, v6, p2, v4}, Lsk6;->G(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 132
    :pswitch_27
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 133
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 134
    invoke-static {v7, v6, p2, v4}, Lsk6;->T(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 135
    :pswitch_28
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 136
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 137
    invoke-static {v7, v6, p2}, Lsk6;->E(ILjava/util/List;Lhl6;)V

    goto/16 :goto_3

    .line 138
    :pswitch_29
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 139
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 140
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 141
    invoke-static {v7, v6, p2, v8}, Lsk6;->N(ILjava/util/List;Lhl6;Lqk6;)V

    goto/16 :goto_3

    .line 142
    :pswitch_2a
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 143
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 144
    invoke-static {v7, v6, p2}, Lsk6;->S(ILjava/util/List;Lhl6;)V

    goto/16 :goto_3

    .line 145
    :pswitch_2b
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 146
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 147
    invoke-static {v7, v6, p2, v4}, Lsk6;->D(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 148
    :pswitch_2c
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 149
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 150
    invoke-static {v7, v6, p2, v4}, Lsk6;->H(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 151
    :pswitch_2d
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 152
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 153
    invoke-static {v7, v6, p2, v4}, Lsk6;->I(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 154
    :pswitch_2e
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 155
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 156
    invoke-static {v7, v6, p2, v4}, Lsk6;->L(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 157
    :pswitch_2f
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 158
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 159
    invoke-static {v7, v6, p2, v4}, Lsk6;->U(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 160
    :pswitch_30
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 161
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 162
    invoke-static {v7, v6, p2, v4}, Lsk6;->M(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 163
    :pswitch_31
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 164
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 165
    invoke-static {v7, v6, p2, v4}, Lsk6;->J(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 166
    :pswitch_32
    iget-object v7, p0, Lck6;->a:[I

    aget v7, v7, v5

    .line 167
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 168
    invoke-static {v7, v6, p2, v4}, Lsk6;->F(ILjava/util/List;Lhl6;Z)V

    goto/16 :goto_3

    .line 169
    :pswitch_33
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 170
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 171
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    .line 172
    move-object v9, p2

    check-cast v9, Lui6;

    invoke-virtual {v9, v7, v6, v8}, Lui6;->c(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_3

    .line 173
    :pswitch_34
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 175
    invoke-static {p1, v8, v9}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 176
    move-object v6, p2

    check-cast v6, Lui6;

    invoke-virtual {v6, v7, v8, v9}, Lui6;->g(IJ)V

    goto/16 :goto_3

    .line 177
    :pswitch_35
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 178
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 179
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 180
    move-object v8, p2

    check-cast v8, Lui6;

    invoke-virtual {v8, v7, v6}, Lui6;->f(II)V

    goto/16 :goto_3

    .line 181
    :pswitch_36
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 182
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 183
    invoke-static {p1, v8, v9}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 184
    move-object v6, p2

    check-cast v6, Lui6;

    .line 185
    iget-object v6, v6, Lui6;->a:Lti6;

    .line 186
    invoke-virtual {v6, v7, v8, v9}, Lti6;->O(IJ)V

    goto/16 :goto_3

    .line 187
    :pswitch_37
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 188
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 189
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 190
    move-object v8, p2

    check-cast v8, Lui6;

    .line 191
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 192
    invoke-virtual {v8, v7, v6}, Lti6;->M(II)V

    goto/16 :goto_3

    .line 193
    :pswitch_38
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 195
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 196
    move-object v8, p2

    check-cast v8, Lui6;

    .line 197
    iget-object v8, v8, Lui6;->a:Lti6;

    .line 198
    invoke-virtual {v8, v7, v6}, Lti6;->Q(II)V

    goto/16 :goto_3

    .line 199
    :pswitch_39
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 201
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 202
    move-object v8, p2

    check-cast v8, Lui6;

    .line 203
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->Z(II)V

    goto/16 :goto_3

    .line 204
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqi6;

    .line 206
    move-object v8, p2

    check-cast v8, Lui6;

    .line 207
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->K(ILqi6;)V

    goto/16 :goto_3

    .line 208
    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 210
    invoke-virtual {p0, v5}, Lck6;->p(I)Lqk6;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lui6;

    invoke-virtual {v9, v7, v6, v8}, Lui6;->d(ILjava/lang/Object;Lqk6;)V

    goto/16 :goto_3

    .line 211
    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 212
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lck6;->b0(ILjava/lang/Object;Lhl6;)V

    goto/16 :goto_3

    .line 213
    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 215
    invoke-static {p1, v8, v9}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result v6

    .line 216
    move-object v8, p2

    check-cast v8, Lui6;

    .line 217
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->I(IZ)V

    goto/16 :goto_3

    .line 218
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 219
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 220
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 221
    move-object v8, p2

    check-cast v8, Lui6;

    .line 222
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->M(II)V

    goto/16 :goto_3

    .line 223
    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 225
    invoke-static {p1, v8, v9}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 226
    move-object v6, p2

    check-cast v6, Lui6;

    .line 227
    iget-object v6, v6, Lui6;->a:Lti6;

    invoke-virtual {v6, v7, v8, v9}, Lti6;->O(IJ)V

    goto :goto_3

    .line 228
    :pswitch_40
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 230
    invoke-static {p1, v8, v9}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v6

    .line 231
    move-object v8, p2

    check-cast v8, Lui6;

    .line 232
    iget-object v8, v8, Lui6;->a:Lti6;

    invoke-virtual {v8, v7, v6}, Lti6;->Q(II)V

    goto :goto_3

    .line 233
    :pswitch_41
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 235
    invoke-static {p1, v8, v9}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 236
    move-object v6, p2

    check-cast v6, Lui6;

    .line 237
    iget-object v6, v6, Lui6;->a:Lti6;

    invoke-virtual {v6, v7, v8, v9}, Lti6;->b0(IJ)V

    goto :goto_3

    .line 238
    :pswitch_42
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 239
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 240
    invoke-static {p1, v8, v9}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 241
    move-object v6, p2

    check-cast v6, Lui6;

    .line 242
    iget-object v6, v6, Lui6;->a:Lti6;

    .line 243
    invoke-virtual {v6, v7, v8, v9}, Lti6;->b0(IJ)V

    goto :goto_3

    .line 244
    :pswitch_43
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 246
    invoke-static {p1, v8, v9}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result v6

    .line 247
    move-object v8, p2

    check-cast v8, Lui6;

    invoke-virtual {v8, v7, v6}, Lui6;->b(IF)V

    goto :goto_3

    .line 248
    :pswitch_44
    invoke-virtual {p0, p1, v5}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 249
    invoke-static {v6}, Lck6;->D(I)J

    move-result-wide v8

    .line 250
    invoke-static {p1, v8, v9}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 251
    move-object v6, p2

    check-cast v6, Lui6;

    invoke-virtual {v6, v7, v8, v9}, Lui6;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 252
    iget-object v3, p0, Lck6;->p:Lzi6;

    invoke-virtual {v3, p2, v2}, Lzi6;->j(Lhl6;Ljava/util/Map$Entry;)V

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    .line 254
    :cond_6
    iget-object v0, p0, Lck6;->o:Lyk6;

    .line 255
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lyk6;->s(Ljava/lang/Object;Lhl6;)V

    goto :goto_5

    .line 256
    :cond_7
    invoke-virtual {p0, p1, p2}, Lck6;->Z(Ljava/lang/Object;Lhl6;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public f(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lck6;->k:I

    :goto_0
    iget v1, p0, Lck6;->l:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lck6;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lck6;->Y(I)I

    move-result v1

    invoke-static {v1}, Lck6;->D(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lck6;->q:Lvj6;

    invoke-interface {v4, v3}, Lvj6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    sget-object v4, Lcl6;->e:Lcl6$e;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lck6;->j:[I

    array-length v0, v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 7
    iget-object v2, p0, Lck6;->n:Lqj6;

    iget-object v3, p0, Lck6;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lqj6;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lck6;->o:Lyk6;

    invoke-virtual {v0, p1}, Lyk6;->j(Ljava/lang/Object;)V

    .line 9
    iget-boolean v0, p0, Lck6;->f:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lck6;->p:Lzi6;

    invoke-virtual {v0, p1}, Lzi6;->f(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1
    :goto_0
    iget v2, v6, Lck6;->k:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_11

    .line 2
    iget-object v2, v6, Lck6;->j:[I

    aget v12, v2, v10

    .line 3
    iget-object v2, v6, Lck6;->a:[I

    aget v13, v2, v12

    .line 4
    invoke-virtual {v6, v12}, Lck6;->Y(I)I

    move-result v14

    .line 5
    iget-object v2, v6, Lck6;->a:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 6
    sget-object v0, Lck6;->s:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 7
    invoke-virtual/range {v0 .. v5}, Lck6;->u(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    .line 8
    :cond_3
    invoke-static {v14}, Lck6;->X(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x11

    if-eq v0, v1, :cond_f

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_a

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    const/16 v1, 0x31

    if-eq v0, v1, :cond_b

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_6

    .line 9
    :cond_4
    iget-object v0, v6, Lck6;->q:Lvj6;

    invoke-static {v14}, Lck6;->D(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lvj6;->i(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    iget-object v1, v6, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v12, v12, 0x2

    aget-object v1, v1, v12

    .line 12
    iget-object v2, v6, Lck6;->q:Lvj6;

    invoke-interface {v2, v1}, Lvj6;->d(Ljava/lang/Object;)Ltj6$a;

    move-result-object v1

    .line 13
    iget-object v1, v1, Ltj6$a;->c:Lfl6;

    .line 14
    iget-object v1, v1, Lfl6;->e:Lgl6;

    .line 15
    sget-object v2, Lgl6;->n:Lgl6;

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_8

    .line 17
    sget-object v1, Llk6;->c:Llk6;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Llk6;->a(Ljava/lang/Class;)Lqk6;

    move-result-object v1

    .line 19
    :cond_8
    invoke-interface {v1, v2}, Lqk6;->g(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v11, 0x0

    :cond_9
    :goto_3
    if-nez v11, :cond_10

    return v9

    .line 20
    :cond_a
    invoke-virtual {v6, v7, v13, v12}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    invoke-virtual {v6, v12}, Lck6;->p(I)Lqk6;

    move-result-object v0

    .line 22
    invoke-static {v14}, Lck6;->D(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lqk6;->g(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    .line 24
    :cond_b
    invoke-static {v14}, Lck6;->D(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    .line 26
    :cond_c
    invoke-virtual {v6, v12}, Lck6;->p(I)Lqk6;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-interface {v1, v3}, Lqk6;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v11, 0x0

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-nez v11, :cond_10

    return v9

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 30
    invoke-virtual/range {v0 .. v5}, Lck6;->u(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 31
    invoke-virtual {v6, v12}, Lck6;->p(I)Lqk6;

    move-result-object v0

    .line 32
    invoke-static {v14}, Lck6;->D(I)J

    move-result-wide v1

    invoke-static {v7, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lqk6;->g(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v9

    :cond_10
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 34
    :cond_11
    iget-boolean v0, v6, Lck6;->f:Z

    if-eqz v0, :cond_12

    .line 35
    iget-object v0, v6, Lck6;->p:Lzi6;

    invoke-virtual {v0, v7}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object v0

    invoke-virtual {v0}, Lcj6;->i()Z

    move-result v0

    if-nez v0, :cond_12

    return v9

    :cond_12
    return v11
.end method

.method public h(Ljava/lang/Object;Lok6;Lyi6;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lok6;",
            "Lyi6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lck6;->o:Lyk6;

    iget-object v2, p0, Lck6;->p:Lzi6;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lck6;->x(Lyk6;Lzi6;Ljava/lang/Object;Lok6;Lyi6;)V

    return-void
.end method

.method public i(Ljava/lang/Object;[BIILni6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lni6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lck6;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lck6;->M(Ljava/lang/Object;[BIILni6;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 3
    invoke-virtual/range {v1 .. v7}, Lck6;->L(Ljava/lang/Object;[BIIILni6;)I

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lck6;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lck6;->s(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lck6;->r(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l([BIILfl6;Ljava/lang/Class;Lni6;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lfl6;",
            "Ljava/lang/Class<",
            "*>;",
            "Lni6;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    packed-switch p4, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    invoke-static {p1, p2, p6}, Ln56;->k0([BILni6;)I

    move-result p1

    .line 4
    iget-wide p2, p6, Lni6;->b:J

    invoke-static {p2, p3}, Lri6;->c(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lni6;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 5
    :pswitch_2
    invoke-static {p1, p2, p6}, Ln56;->i0([BILni6;)I

    move-result p1

    .line 6
    iget p2, p6, Lni6;->a:I

    invoke-static {p2}, Lri6;->b(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lni6;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 7
    :pswitch_3
    invoke-static {p1, p2, p6}, Ln56;->P([BILni6;)I

    move-result p1

    goto/16 :goto_3

    .line 8
    :pswitch_4
    sget-object p4, Llk6;->c:Llk6;

    .line 9
    invoke-virtual {p4, p5}, Llk6;->a(Ljava/lang/Class;)Lqk6;

    move-result-object p4

    .line 10
    invoke-static {p4, p1, p2, p3, p6}, Ln56;->T(Lqk6;[BIILni6;)I

    move-result p1

    goto/16 :goto_3

    .line 11
    :pswitch_5
    invoke-static {p1, p2, p6}, Ln56;->f0([BILni6;)I

    move-result p1

    goto :goto_3

    .line 12
    :pswitch_6
    invoke-static {p1, p2, p6}, Ln56;->k0([BILni6;)I

    move-result p1

    .line 13
    iget-wide p2, p6, Lni6;->b:J

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lni6;->c:Ljava/lang/Object;

    goto :goto_3

    .line 14
    :pswitch_7
    invoke-static {p1, p2}, Ln56;->Q([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lni6;->c:Ljava/lang/Object;

    goto :goto_1

    .line 15
    :pswitch_8
    invoke-static {p1, p2}, Ln56;->R([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lni6;->c:Ljava/lang/Object;

    goto :goto_2

    .line 16
    :pswitch_9
    invoke-static {p1, p2, p6}, Ln56;->i0([BILni6;)I

    move-result p1

    .line 17
    iget p2, p6, Lni6;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lni6;->c:Ljava/lang/Object;

    goto :goto_3

    .line 18
    :pswitch_a
    invoke-static {p1, p2, p6}, Ln56;->k0([BILni6;)I

    move-result p1

    .line 19
    iget-wide p2, p6, Lni6;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lni6;->c:Ljava/lang/Object;

    goto :goto_3

    .line 20
    :pswitch_b
    invoke-static {p1, p2}, Ln56;->Q([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lni6;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p2, 0x4

    goto :goto_3

    .line 22
    :pswitch_c
    invoke-static {p1, p2}, Ln56;->R([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p3

    .line 23
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lni6;->c:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p1, p2, 0x8

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lyk6<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    aget v1, v0, p2

    add-int/lit8 v2, p2, 0x1

    .line 2
    aget v0, v0, v2

    .line 3
    invoke-static {v0}, Lck6;->D(I)J

    move-result-wide v2

    .line 4
    invoke-static {p1, v2, v3}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 5
    :cond_0
    iget-object v0, p0, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 p2, p2, 0x3

    const/4 v2, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, p2, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljj6$b;

    if-nez v0, :cond_1

    return-object p3

    .line 6
    :cond_1
    iget-object v3, p0, Lck6;->q:Lvj6;

    invoke-interface {v3, p1}, Lvj6;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lck6;->q:Lvj6;

    .line 8
    iget-object v4, p0, Lck6;->b:[Ljava/lang/Object;

    aget-object p2, v4, p2

    .line 9
    invoke-interface {v3, p2}, Lvj6;->d(Ljava/lang/Object;)Ltj6$a;

    move-result-object p2

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v4}, Ljj6$b;->a(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p3, :cond_3

    .line 13
    invoke-virtual {p4}, Lyk6;->m()Ljava/lang/Object;

    move-result-object p3

    .line 14
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v4, v5}, Ltj6;->a(Ltj6$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 15
    new-array v5, v4, [B

    .line 16
    sget-object v6, Lti6;->b:Ljava/util/logging/Logger;

    .line 17
    new-instance v6, Lti6$c;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Lti6$c;-><init>([BII)V

    .line 18
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 19
    iget-object v7, p2, Ltj6$a;->a:Lfl6;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v4}, Lcj6;->p(Lti6;Lfl6;ILjava/lang/Object;)V

    .line 20
    iget-object v4, p2, Ltj6$a;->c:Lfl6;

    invoke-static {v6, v4, v2, v3}, Lcj6;->p(Lti6;Lfl6;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-virtual {v6}, Lti6;->b()V

    .line 22
    new-instance v3, Lqi6$h;

    invoke-direct {v3, v5}, Lqi6$h;-><init>([B)V

    .line 23
    invoke-virtual {p4, p3, v1, v3}, Lyk6;->d(Ljava/lang/Object;ILqi6;)V

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method public final n(I)Ljj6$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Ljj6$b;

    return-object p1
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lck6;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final p(I)Lqk6;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2
    iget-object v0, p0, Lck6;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lqk6;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Llk6;->c:Llk6;

    add-int/lit8 v2, p1, 0x1

    .line 4
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Llk6;->a(Ljava/lang/Class;)Lqk6;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lck6;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lck6;->s:Lsun/misc/Unsafe;

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    .line 2
    :goto_0
    iget-object v8, v0, Lck6;->a:[I

    array-length v8, v8

    if-ge v4, v8, :cond_14

    .line 3
    invoke-virtual {v0, v4}, Lck6;->Y(I)I

    move-result v8

    .line 4
    iget-object v9, v0, Lck6;->a:[I

    aget v9, v9, v4

    .line 5
    invoke-static {v8}, Lck6;->X(I)I

    move-result v10

    const/16 v11, 0x11

    const/4 v12, 0x1

    if-gt v10, v11, :cond_0

    .line 6
    iget-object v11, v0, Lck6;->a:[I

    add-int/lit8 v13, v4, 0x2

    aget v11, v11, v13

    and-int/2addr v3, v11

    ushr-int/lit8 v13, v11, 0x14

    shl-int/2addr v12, v13

    if-eq v3, v6, :cond_2

    int-to-long v6, v3

    .line 7
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v6

    move v6, v3

    goto :goto_2

    .line 8
    :cond_0
    iget-boolean v11, v0, Lck6;->i:Z

    if-eqz v11, :cond_1

    sget-object v11, Ldj6;->P:Ldj6;

    .line 9
    iget v11, v11, Ldj6;->e:I

    if-lt v10, v11, :cond_1

    .line 10
    sget-object v11, Ldj6;->c0:Ldj6;

    .line 11
    iget v11, v11, Ldj6;->e:I

    if-gt v10, v11, :cond_1

    .line 12
    iget-object v11, v0, Lck6;->a:[I

    add-int/lit8 v12, v4, 0x2

    aget v11, v11, v12

    and-int/2addr v3, v11

    move v11, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    .line 13
    :cond_2
    :goto_2
    invoke-static {v8}, Lck6;->D(I)J

    move-result-wide v13

    const/4 v3, 0x0

    move v8, v6

    move v15, v7

    const-wide/16 v6, 0x0

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_6

    .line 14
    :pswitch_0
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lak6;

    .line 16
    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    .line 17
    invoke-static {v9, v3, v6}, Lti6;->k(ILak6;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    .line 18
    :pswitch_1
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 19
    invoke-static {v1, v13, v14}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->u(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 20
    :pswitch_2
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 21
    invoke-static {v1, v13, v14}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->s(II)I

    move-result v3

    goto/16 :goto_5

    .line 22
    :pswitch_3
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 23
    invoke-static {v9, v6, v7}, Lti6;->r(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 24
    :pswitch_4
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 25
    invoke-static {v9, v3}, Lti6;->q(II)I

    move-result v3

    goto/16 :goto_5

    .line 26
    :pswitch_5
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 27
    invoke-static {v1, v13, v14}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->g(II)I

    move-result v3

    goto/16 :goto_5

    .line 28
    :pswitch_6
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 29
    invoke-static {v1, v13, v14}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->z(II)I

    move-result v3

    goto/16 :goto_5

    .line 30
    :pswitch_7
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 31
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqi6;

    .line 32
    invoke-static {v9, v3}, Lti6;->d(ILqi6;)I

    move-result v3

    goto/16 :goto_5

    .line 33
    :pswitch_8
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 34
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    invoke-static {v9, v3, v6}, Lsk6;->n(ILjava/lang/Object;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    .line 36
    :pswitch_9
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 37
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v6, v3, Lqi6;

    if-eqz v6, :cond_3

    .line 39
    check-cast v3, Lqi6;

    invoke-static {v9, v3}, Lti6;->d(ILqi6;)I

    move-result v3

    goto/16 :goto_4

    .line 40
    :cond_3
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lti6;->w(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    .line 41
    :pswitch_a
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    .line 42
    invoke-static {v9, v3}, Lti6;->c(IZ)I

    move-result v3

    goto/16 :goto_5

    .line 43
    :pswitch_b
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 44
    invoke-static {v9, v3}, Lti6;->h(II)I

    move-result v3

    goto/16 :goto_5

    .line 45
    :pswitch_c
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 46
    invoke-static {v9, v6, v7}, Lti6;->i(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 47
    :pswitch_d
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 48
    invoke-static {v1, v13, v14}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->l(II)I

    move-result v3

    goto/16 :goto_5

    .line 49
    :pswitch_e
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 50
    invoke-static {v1, v13, v14}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->B(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 51
    :pswitch_f
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 52
    invoke-static {v1, v13, v14}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->n(IJ)I

    move-result v3

    goto/16 :goto_5

    .line 53
    :pswitch_10
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 54
    invoke-static {v9, v3}, Lti6;->j(IF)I

    move-result v3

    goto/16 :goto_5

    .line 55
    :pswitch_11
    invoke-virtual {v0, v1, v9, v4}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 56
    invoke-static {v9, v6, v7}, Lti6;->f(ID)I

    move-result v3

    goto/16 :goto_5

    .line 57
    :pswitch_12
    iget-object v3, v0, Lck6;->q:Lvj6;

    .line 58
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4}, Lck6;->o(I)Ljava/lang/Object;

    move-result-object v7

    .line 59
    invoke-interface {v3, v9, v6, v7}, Lvj6;->g(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_5

    .line 60
    :pswitch_13
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    .line 62
    invoke-static {v9, v3, v6}, Lsk6;->i(ILjava/util/List;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    .line 63
    :pswitch_14
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v3}, Lsk6;->s(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 65
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_4

    int-to-long v6, v11

    .line 66
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 67
    :cond_4
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 68
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 69
    :pswitch_15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    invoke-static {v3}, Lsk6;->q(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 71
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_5

    int-to-long v6, v11

    .line 72
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 73
    :cond_5
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 74
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 75
    :pswitch_16
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    invoke-static {v3}, Lsk6;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 77
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_6

    int-to-long v6, v11

    .line 78
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 79
    :cond_6
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 80
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 81
    :pswitch_17
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    invoke-static {v3}, Lsk6;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 83
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_7

    int-to-long v6, v11

    .line 84
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 85
    :cond_7
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 86
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 87
    :pswitch_18
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 88
    invoke-static {v3}, Lsk6;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 89
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_8

    int-to-long v6, v11

    .line 90
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 91
    :cond_8
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 92
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 93
    :pswitch_19
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 94
    invoke-static {v3}, Lsk6;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 95
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_9

    int-to-long v6, v11

    .line 96
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 97
    :cond_9
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 98
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 99
    :pswitch_1a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 100
    sget-object v6, Lsk6;->a:Ljava/lang/Class;

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 102
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_a

    int-to-long v6, v11

    .line 103
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_a
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 105
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 106
    :pswitch_1b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 107
    invoke-static {v3}, Lsk6;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 108
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_b

    int-to-long v6, v11

    .line 109
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_b
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 111
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 112
    :pswitch_1c
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    invoke-static {v3}, Lsk6;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 114
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_c

    int-to-long v6, v11

    .line 115
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_c
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 117
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 118
    :pswitch_1d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 119
    invoke-static {v3}, Lsk6;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 120
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_d

    int-to-long v6, v11

    .line 121
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_d
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 123
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto/16 :goto_3

    .line 124
    :pswitch_1e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    invoke-static {v3}, Lsk6;->x(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 126
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_e

    int-to-long v6, v11

    .line 127
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_e
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 129
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto :goto_3

    .line 130
    :pswitch_1f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 131
    invoke-static {v3}, Lsk6;->m(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 132
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_f

    int-to-long v6, v11

    .line 133
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_f
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 135
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto :goto_3

    .line 136
    :pswitch_20
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 137
    invoke-static {v3}, Lsk6;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 138
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_10

    int-to-long v6, v11

    .line 139
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_10
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 141
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    goto :goto_3

    .line 142
    :pswitch_21
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 143
    invoke-static {v3}, Lsk6;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_13

    .line 144
    iget-boolean v6, v0, Lck6;->i:Z

    if-eqz v6, :cond_11

    int-to-long v6, v11

    .line 145
    invoke-virtual {v2, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 146
    :cond_11
    invoke-static {v9}, Lti6;->y(I)I

    move-result v6

    .line 147
    invoke-static {v3}, Lti6;->A(I)I

    move-result v7

    :goto_3
    add-int/2addr v7, v6

    add-int/2addr v7, v3

    add-int/2addr v5, v7

    goto/16 :goto_6

    .line 148
    :pswitch_22
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    .line 149
    invoke-static {v9, v3, v6}, Lsk6;->r(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_23
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 151
    invoke-static {v9, v6, v3}, Lsk6;->p(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_24
    const/4 v3, 0x0

    .line 152
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 153
    invoke-static {v9, v6, v3}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_25
    const/4 v3, 0x0

    .line 154
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 155
    invoke-static {v9, v6, v3}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_26
    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 157
    invoke-static {v9, v6, v3}, Lsk6;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_27
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 159
    invoke-static {v9, v6, v3}, Lsk6;->u(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    .line 160
    :pswitch_28
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 161
    invoke-static {v9, v3}, Lsk6;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    .line 162
    :pswitch_29
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    .line 163
    invoke-static {v9, v3, v6}, Lsk6;->o(ILjava/util/List;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    .line 164
    :pswitch_2a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v9, v3}, Lsk6;->t(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    .line 165
    :pswitch_2b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v6, 0x0

    .line 166
    invoke-static {v9, v3, v6}, Lsk6;->a(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2c
    const/4 v3, 0x0

    .line 167
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 168
    invoke-static {v9, v6, v3}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2d
    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 170
    invoke-static {v9, v6, v3}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2e
    const/4 v3, 0x0

    .line 171
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 172
    invoke-static {v9, v6, v3}, Lsk6;->j(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2f
    const/4 v3, 0x0

    .line 173
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 174
    invoke-static {v9, v6, v3}, Lsk6;->w(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_30
    const/4 v3, 0x0

    .line 175
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 176
    invoke-static {v9, v6, v3}, Lsk6;->l(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_31
    const/4 v3, 0x0

    .line 177
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 178
    invoke-static {v9, v6, v3}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_32
    const/4 v3, 0x0

    .line 179
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 180
    invoke-static {v9, v6, v3}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_5

    :pswitch_33
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 181
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lak6;

    .line 182
    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    .line 183
    invoke-static {v9, v3, v6}, Lti6;->k(ILak6;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_34
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 184
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->u(IJ)I

    move-result v3

    goto/16 :goto_5

    :pswitch_35
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 185
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->s(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_36
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 186
    invoke-static {v9, v6, v7}, Lti6;->r(IJ)I

    move-result v3

    goto/16 :goto_5

    :pswitch_37
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 187
    invoke-static {v9, v3}, Lti6;->q(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_38
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 188
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->g(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_39
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 189
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->z(II)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3a
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 190
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqi6;

    .line 191
    invoke-static {v9, v3}, Lti6;->d(ILqi6;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3b
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 192
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v4}, Lck6;->p(I)Lqk6;

    move-result-object v6

    invoke-static {v9, v3, v6}, Lsk6;->n(ILjava/lang/Object;Lqk6;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3c
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 194
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 195
    instance-of v6, v3, Lqi6;

    if-eqz v6, :cond_12

    .line 196
    check-cast v3, Lqi6;

    invoke-static {v9, v3}, Lti6;->d(ILqi6;)I

    move-result v3

    goto :goto_4

    .line 197
    :cond_12
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Lti6;->w(ILjava/lang/String;)I

    move-result v3

    :goto_4
    add-int/2addr v5, v3

    goto :goto_6

    :pswitch_3d
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    .line 198
    invoke-static {v9, v3}, Lti6;->c(IZ)I

    move-result v3

    goto :goto_5

    :pswitch_3e
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 199
    invoke-static {v9, v3}, Lti6;->h(II)I

    move-result v3

    goto :goto_5

    :pswitch_3f
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    const-wide/16 v6, 0x0

    .line 200
    invoke-static {v9, v6, v7}, Lti6;->i(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_40
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 201
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Lti6;->l(II)I

    move-result v3

    goto :goto_5

    :pswitch_41
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 202
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->B(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_42
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 203
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v9, v6, v7}, Lti6;->n(IJ)I

    move-result v3

    goto :goto_5

    :pswitch_43
    and-int v6, v15, v12

    if-eqz v6, :cond_13

    .line 204
    invoke-static {v9, v3}, Lti6;->j(IF)I

    move-result v3

    goto :goto_5

    :pswitch_44
    and-int v3, v15, v12

    if-eqz v3, :cond_13

    .line 205
    invoke-static {v9, v6, v7}, Lti6;->f(ID)I

    move-result v3

    :goto_5
    add-int/2addr v5, v3

    :cond_13
    :goto_6
    add-int/lit8 v4, v4, 0x3

    const v3, 0xfffff

    move v6, v8

    move v7, v15

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    .line 206
    iget-object v3, v0, Lck6;->o:Lyk6;

    .line 207
    invoke-virtual {v3, v1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Lyk6;->h(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v5

    .line 209
    iget-boolean v4, v0, Lck6;->f:Z

    if-eqz v4, :cond_17

    .line 210
    iget-object v4, v0, Lck6;->p:Lzi6;

    invoke-virtual {v4, v1}, Lzi6;->c(Ljava/lang/Object;)Lcj6;

    move-result-object v1

    const/4 v4, 0x0

    .line 211
    :goto_7
    iget-object v5, v1, Lcj6;->a:Luk6;

    invoke-virtual {v5}, Luk6;->d()I

    move-result v5

    if-ge v4, v5, :cond_15

    .line 212
    iget-object v5, v1, Lcj6;->a:Luk6;

    invoke-virtual {v5, v4}, Luk6;->c(I)Ljava/util/Map$Entry;

    move-result-object v5

    .line 213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcj6$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcj6;->e(Lcj6$a;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 214
    :cond_15
    iget-object v1, v1, Lcj6;->a:Luk6;

    invoke-virtual {v1}, Luk6;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcj6$a;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcj6;->e(Lcj6$a;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_8

    :cond_16
    add-int/2addr v3, v2

    :cond_17
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final s(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lck6;->s:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lck6;->a:[I

    array-length v4, v4

    if-ge v2, v4, :cond_12

    .line 3
    invoke-virtual {p0, v2}, Lck6;->Y(I)I

    move-result v4

    .line 4
    invoke-static {v4}, Lck6;->X(I)I

    move-result v5

    .line 5
    iget-object v6, p0, Lck6;->a:[I

    aget v6, v6, v2

    .line 6
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v7

    .line 7
    sget-object v4, Ldj6;->P:Ldj6;

    .line 8
    iget v4, v4, Ldj6;->e:I

    if-lt v5, v4, :cond_0

    .line 9
    sget-object v4, Ldj6;->c0:Ldj6;

    .line 10
    iget v4, v4, Ldj6;->e:I

    if-gt v5, v4, :cond_0

    .line 11
    iget-object v4, p0, Lck6;->a:[I

    add-int/lit8 v9, v2, 0x2

    aget v4, v4, v9

    const v9, 0xfffff

    and-int/2addr v4, v9

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 12
    :pswitch_0
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 13
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lak6;

    .line 14
    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    .line 15
    invoke-static {v6, v4, v5}, Lti6;->k(ILak6;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 16
    :pswitch_1
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 17
    invoke-static {p1, v7, v8}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->u(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 18
    :pswitch_2
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 19
    invoke-static {p1, v7, v8}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->s(II)I

    move-result v4

    goto/16 :goto_3

    .line 20
    :pswitch_3
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 21
    invoke-static {v6, v9, v10}, Lti6;->r(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 22
    :pswitch_4
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 23
    invoke-static {v6, v1}, Lti6;->q(II)I

    move-result v4

    goto/16 :goto_3

    .line 24
    :pswitch_5
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 25
    invoke-static {p1, v7, v8}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->g(II)I

    move-result v4

    goto/16 :goto_3

    .line 26
    :pswitch_6
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 27
    invoke-static {p1, v7, v8}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->z(II)I

    move-result v4

    goto/16 :goto_3

    .line 28
    :pswitch_7
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 29
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqi6;

    .line 30
    invoke-static {v6, v4}, Lti6;->d(ILqi6;)I

    move-result v4

    goto/16 :goto_3

    .line 31
    :pswitch_8
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 32
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lsk6;->n(ILjava/lang/Object;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 34
    :pswitch_9
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 35
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 36
    instance-of v5, v4, Lqi6;

    if-eqz v5, :cond_1

    .line 37
    check-cast v4, Lqi6;

    invoke-static {v6, v4}, Lti6;->d(ILqi6;)I

    move-result v4

    goto/16 :goto_3

    .line 38
    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lti6;->w(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 39
    :pswitch_a
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 40
    invoke-static {v6, v4}, Lti6;->c(IZ)I

    move-result v4

    goto/16 :goto_3

    .line 41
    :pswitch_b
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 42
    invoke-static {v6, v1}, Lti6;->h(II)I

    move-result v4

    goto/16 :goto_3

    .line 43
    :pswitch_c
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 44
    invoke-static {v6, v9, v10}, Lti6;->i(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 45
    :pswitch_d
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 46
    invoke-static {p1, v7, v8}, Lck6;->H(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->l(II)I

    move-result v4

    goto/16 :goto_3

    .line 47
    :pswitch_e
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 48
    invoke-static {p1, v7, v8}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->B(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 49
    :pswitch_f
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 50
    invoke-static {p1, v7, v8}, Lck6;->I(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->n(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 51
    :pswitch_10
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 52
    invoke-static {v6, v4}, Lti6;->j(IF)I

    move-result v4

    goto/16 :goto_3

    .line 53
    :pswitch_11
    invoke-virtual {p0, p1, v6, v2}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 54
    invoke-static {v6, v11, v12}, Lti6;->f(ID)I

    move-result v4

    goto/16 :goto_3

    .line 55
    :pswitch_12
    iget-object v4, p0, Lck6;->q:Lvj6;

    .line 56
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2}, Lck6;->o(I)Ljava/lang/Object;

    move-result-object v7

    .line 57
    invoke-interface {v4, v6, v5, v7}, Lvj6;->g(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    .line 58
    :pswitch_13
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    .line 59
    invoke-static {v6, v4, v5}, Lsk6;->i(ILjava/util/List;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 60
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 61
    invoke-static {v5}, Lsk6;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 62
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_2

    int-to-long v7, v4

    .line 63
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 64
    :cond_2
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 65
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 66
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 67
    invoke-static {v5}, Lsk6;->q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 68
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_3

    int-to-long v7, v4

    .line 69
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 70
    :cond_3
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 71
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 72
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 73
    invoke-static {v5}, Lsk6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 74
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_4

    int-to-long v7, v4

    .line 75
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 76
    :cond_4
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 77
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 78
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 79
    invoke-static {v5}, Lsk6;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 80
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_5

    int-to-long v7, v4

    .line 81
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 82
    :cond_5
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 83
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 84
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 85
    invoke-static {v5}, Lsk6;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 86
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_6

    int-to-long v7, v4

    .line 87
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 88
    :cond_6
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 89
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 90
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 91
    invoke-static {v5}, Lsk6;->v(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 92
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_7

    int-to-long v7, v4

    .line 93
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 94
    :cond_7
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 95
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 96
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    sget-object v7, Lsk6;->a:Ljava/lang/Class;

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 99
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_8

    int-to-long v7, v4

    .line 100
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 101
    :cond_8
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 102
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 103
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-static {v5}, Lsk6;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 105
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_9

    int-to-long v7, v4

    .line 106
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 107
    :cond_9
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 108
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 109
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 110
    invoke-static {v5}, Lsk6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 111
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_a

    int-to-long v7, v4

    .line 112
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 113
    :cond_a
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 114
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 115
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v5}, Lsk6;->k(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 117
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_b

    int-to-long v7, v4

    .line 118
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 119
    :cond_b
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 120
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto/16 :goto_2

    .line 121
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 122
    invoke-static {v5}, Lsk6;->x(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 123
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_c

    int-to-long v7, v4

    .line 124
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 125
    :cond_c
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 126
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto :goto_2

    .line 127
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 128
    invoke-static {v5}, Lsk6;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 129
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_d

    int-to-long v7, v4

    .line 130
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 131
    :cond_d
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 132
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto :goto_2

    .line 133
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 134
    invoke-static {v5}, Lsk6;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 135
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_e

    int-to-long v7, v4

    .line 136
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 137
    :cond_e
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 138
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    goto :goto_2

    .line 139
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 140
    invoke-static {v5}, Lsk6;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 141
    iget-boolean v7, p0, Lck6;->i:Z

    if-eqz v7, :cond_f

    int-to-long v7, v4

    .line 142
    invoke-virtual {v0, p1, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 143
    :cond_f
    invoke-static {v6}, Lti6;->y(I)I

    move-result v4

    .line 144
    invoke-static {v5}, Lti6;->A(I)I

    move-result v6

    :goto_2
    add-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    move v3, v6

    goto/16 :goto_4

    .line 145
    :pswitch_22
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->r(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 146
    :pswitch_23
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 147
    invoke-static {v6, v4, v1}, Lsk6;->p(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 148
    :pswitch_24
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 149
    :pswitch_25
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 150
    :pswitch_26
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 151
    invoke-static {v6, v4, v1}, Lsk6;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 152
    :pswitch_27
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-static {v6, v4, v1}, Lsk6;->u(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 154
    :pswitch_28
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 155
    invoke-static {v6, v4}, Lsk6;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3

    .line 156
    :pswitch_29
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    .line 157
    invoke-static {v6, v4, v5}, Lsk6;->o(ILjava/util/List;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 158
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4}, Lsk6;->t(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3

    .line 159
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->a(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 160
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 161
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 162
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-static {v6, v4, v1}, Lsk6;->j(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 164
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->w(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 165
    :pswitch_30
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->l(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 166
    :pswitch_31
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 167
    :pswitch_32
    invoke-static {p1, v7, v8}, Lck6;->w(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lsk6;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 168
    :pswitch_33
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 169
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lak6;

    .line 170
    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    .line 171
    invoke-static {v6, v4, v5}, Lti6;->k(ILak6;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 172
    :pswitch_34
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 173
    invoke-static {p1, v7, v8}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->u(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 174
    :pswitch_35
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 175
    invoke-static {p1, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->s(II)I

    move-result v4

    goto/16 :goto_3

    .line 176
    :pswitch_36
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 177
    invoke-static {v6, v9, v10}, Lti6;->r(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 178
    :pswitch_37
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 179
    invoke-static {v6, v1}, Lti6;->q(II)I

    move-result v4

    goto/16 :goto_3

    .line 180
    :pswitch_38
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 181
    invoke-static {p1, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->g(II)I

    move-result v4

    goto/16 :goto_3

    .line 182
    :pswitch_39
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 183
    invoke-static {p1, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->z(II)I

    move-result v4

    goto/16 :goto_3

    .line 184
    :pswitch_3a
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqi6;

    .line 186
    invoke-static {v6, v4}, Lti6;->d(ILqi6;)I

    move-result v4

    goto/16 :goto_3

    .line 187
    :pswitch_3b
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 188
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-virtual {p0, v2}, Lck6;->p(I)Lqk6;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lsk6;->n(ILjava/lang/Object;Lqk6;)I

    move-result v4

    goto/16 :goto_3

    .line 190
    :pswitch_3c
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 191
    invoke-static {p1, v7, v8}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 192
    instance-of v5, v4, Lqi6;

    if-eqz v5, :cond_10

    .line 193
    check-cast v4, Lqi6;

    invoke-static {v6, v4}, Lti6;->d(ILqi6;)I

    move-result v4

    goto/16 :goto_3

    .line 194
    :cond_10
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lti6;->w(ILjava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 195
    :pswitch_3d
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 196
    invoke-static {v6, v4}, Lti6;->c(IZ)I

    move-result v4

    goto :goto_3

    .line 197
    :pswitch_3e
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 198
    invoke-static {v6, v1}, Lti6;->h(II)I

    move-result v4

    goto :goto_3

    .line 199
    :pswitch_3f
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 200
    invoke-static {v6, v9, v10}, Lti6;->i(IJ)I

    move-result v4

    goto :goto_3

    .line 201
    :pswitch_40
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 202
    invoke-static {p1, v7, v8}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v6, v4}, Lti6;->l(II)I

    move-result v4

    goto :goto_3

    .line 203
    :pswitch_41
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 204
    invoke-static {p1, v7, v8}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->B(IJ)I

    move-result v4

    goto :goto_3

    .line 205
    :pswitch_42
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 206
    invoke-static {p1, v7, v8}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lti6;->n(IJ)I

    move-result v4

    goto :goto_3

    .line 207
    :pswitch_43
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 208
    invoke-static {v6, v4}, Lti6;->j(IF)I

    move-result v4

    goto :goto_3

    .line 209
    :pswitch_44
    invoke-virtual {p0, p1, v2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 210
    invoke-static {v6, v11, v12}, Lti6;->f(ID)I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    :cond_11
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 211
    :cond_12
    iget-object v0, p0, Lck6;->o:Lyk6;

    .line 212
    invoke-virtual {v0, p1}, Lyk6;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    invoke-virtual {v0, p1}, Lyk6;->h(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final t(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 v1, p2, 0x2

    aget v1, v0, v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_11

    add-int/2addr p2, v7

    .line 2
    aget p2, v0, p2

    .line 3
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    .line 4
    invoke-static {p2}, Lck6;->X(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    .line 7
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6

    .line 8
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    :cond_2
    return v6

    .line 9
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    .line 10
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v6, 0x1

    :cond_4
    return v6

    .line 11
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v6, 0x1

    :cond_5
    return v6

    .line 12
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    :cond_6
    return v6

    .line 13
    :pswitch_7
    sget-object p2, Lqi6;->f:Lqi6;

    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 14
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v6, 0x1

    :cond_7
    return v6

    .line 15
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 18
    :cond_8
    instance-of p2, p1, Lqi6;

    if-eqz p2, :cond_9

    .line 19
    sget-object p2, Lqi6;->f:Lqi6;

    invoke-virtual {p2, p1}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    .line 20
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcl6;->f(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v6, 0x1

    :cond_a
    return v6

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    :cond_b
    return v6

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v6, 0x1

    :cond_c
    return v6

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d

    const/4 v6, 0x1

    :cond_d
    return v6

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcl6;->m(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :cond_e
    return v6

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcl6;->k(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_f

    const/4 v6, 0x1

    :cond_f
    return v6

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcl6;->j(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_10

    const/4 v6, 0x1

    :cond_10
    return v6

    :cond_11
    ushr-int/lit8 p2, v1, 0x14

    shl-int p2, v7, p2

    .line 29
    invoke-static {p1, v2, v3}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    const/4 v6, 0x1

    :cond_12
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final u(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final v(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcl6;->l(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x(Lyk6;Lzi6;Ljava/lang/Object;Lok6;Lyi6;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcj6$a<",
            "TET;>;>(",
            "Lyk6<",
            "TUT;TUB;>;",
            "Lzi6<",
            "TET;>;TT;",
            "Lok6;",
            "Lyi6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lok6;->y()I

    move-result v1

    .line 2
    invoke-virtual {v8, v1}, Lck6;->O(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_c

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 3
    iget v0, v8, Lck6;->k:I

    :goto_1
    iget v1, v8, Lck6;->l:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, v8, Lck6;->j:[I

    aget v1, v1, v0

    .line 5
    invoke-virtual {v8, v10, v1, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_2

    .line 6
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    :try_start_1
    iget-boolean v2, v8, Lck6;->f:Z

    if-nez v2, :cond_4

    move-object/from16 v15, p2

    move-object v3, v12

    goto :goto_2

    :cond_4
    iget-object v2, v8, Lck6;->e:Lak6;

    move-object/from16 v15, p2

    .line 8
    invoke-virtual {v15, v11, v2, v1}, Lzi6;->b(Lyi6;Lak6;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    if-nez v14, :cond_5

    .line 9
    invoke-virtual/range {p2 .. p3}, Lzi6;->d(Ljava/lang/Object;)Lcj6;

    move-result-object v1

    move-object v14, v1

    :cond_5
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lzi6;->g(Lok6;Ljava/lang/Object;Lyi6;Lcj6;Ljava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {v9, v0}, Lyk6;->p(Lok6;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    invoke-interface/range {p4 .. p4}, Lok6;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_7
    if-nez v13, :cond_8

    .line 13
    invoke-virtual {v9, v10}, Lyk6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 14
    :cond_8
    invoke-virtual {v9, v13, v0}, Lyk6;->l(Ljava/lang/Object;Lok6;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_0

    .line 15
    :cond_9
    iget v0, v8, Lck6;->k:I

    :goto_3
    iget v1, v8, Lck6;->l:I

    if-ge v0, v1, :cond_a

    .line 16
    iget-object v1, v8, Lck6;->j:[I

    aget v1, v1, v0

    .line 17
    invoke-virtual {v8, v10, v1, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-eqz v13, :cond_b

    .line 18
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    move-object/from16 v15, p2

    .line 19
    :try_start_2
    invoke-virtual {v8, v3}, Lck6;->Y(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    invoke-static {v4}, Lck6;->X(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    if-nez v13, :cond_14

    .line 21
    invoke-virtual/range {p1 .. p1}, Lyk6;->m()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 22
    :pswitch_0
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    .line 23
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lok6;->m(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 26
    :pswitch_1
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->v()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 27
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 28
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 29
    :pswitch_2
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 30
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 31
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 32
    :pswitch_3
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 35
    :pswitch_4
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->H()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 38
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lok6;->s()I

    move-result v2

    .line 39
    invoke-virtual {v8, v3}, Lck6;->n(I)Ljj6$b;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 40
    invoke-interface {v5, v2}, Ljj6$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    .line 41
    :cond_d
    invoke-static {v1, v2, v13, v9}, Lsk6;->C(IILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 42
    :cond_e
    :goto_4
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 44
    :pswitch_6
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 45
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 47
    :pswitch_7
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->D()Lqi6;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 49
    :pswitch_8
    invoke-virtual {v8, v10, v1, v3}, Lck6;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 50
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v5

    .line 52
    invoke-interface {v0, v5, v11}, Lok6;->A(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v5

    .line 53
    invoke-static {v2, v5}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 55
    :cond_f
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    .line 56
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v2

    .line 57
    invoke-interface {v0, v2, v11}, Lok6;->A(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 59
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    .line 60
    :goto_5
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 61
    :pswitch_9
    invoke-virtual {v8, v10, v4, v0}, Lck6;->R(Ljava/lang/Object;ILok6;)V

    .line 62
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 63
    :pswitch_a
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 64
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 65
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 66
    :pswitch_b
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 68
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 69
    :pswitch_c
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 70
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 71
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 72
    :pswitch_d
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 75
    :pswitch_e
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 76
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 78
    :pswitch_f
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->K()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 80
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 81
    :pswitch_10
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 82
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 83
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 84
    :pswitch_11
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lok6;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 85
    invoke-static {v10, v4, v5, v2}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 86
    invoke-virtual {v8, v10, v1, v3}, Lck6;->V(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 87
    :pswitch_12
    invoke-virtual {v8, v3}, Lck6;->o(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lck6;->y(Ljava/lang/Object;ILjava/lang/Object;Lyi6;Lok6;)V

    goto/16 :goto_0

    .line 88
    :pswitch_13
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    .line 89
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 90
    invoke-virtual/range {v1 .. v7}, Lck6;->P(Ljava/lang/Object;JLok6;Lqk6;Lyi6;)V

    goto/16 :goto_0

    .line 91
    :pswitch_14
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 92
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Lok6;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    :pswitch_15
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 95
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Lok6;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 97
    :pswitch_16
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 98
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Lok6;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 100
    :pswitch_17
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 101
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Lok6;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 103
    :pswitch_18
    iget-object v2, v8, Lck6;->n:Lqj6;

    .line 104
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v0, v2}, Lok6;->r(Ljava/util/List;)V

    .line 106
    invoke-virtual {v8, v3}, Lck6;->n(I)Ljj6$b;

    move-result-object v3

    .line 107
    invoke-static {v1, v2, v3, v13, v9}, Lsk6;->y(ILjava/util/List;Ljj6$b;Ljava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 108
    :pswitch_19
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 109
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lok6;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 111
    :pswitch_1a
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 112
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Lok6;->w(Ljava/util/List;)V

    goto/16 :goto_0

    .line 114
    :pswitch_1b
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 115
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Lok6;->t(Ljava/util/List;)V

    goto/16 :goto_0

    .line 117
    :pswitch_1c
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 118
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Lok6;->M(Ljava/util/List;)V

    goto/16 :goto_0

    .line 120
    :pswitch_1d
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 121
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {v0, v1}, Lok6;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 123
    :pswitch_1e
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 124
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-interface {v0, v1}, Lok6;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 126
    :pswitch_1f
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 127
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Lok6;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 129
    :pswitch_20
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 130
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Lok6;->E(Ljava/util/List;)V

    goto/16 :goto_0

    .line 132
    :pswitch_21
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 133
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lok6;->J(Ljava/util/List;)V

    goto/16 :goto_0

    .line 135
    :pswitch_22
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 136
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Lok6;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 138
    :pswitch_23
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 139
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Lok6;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 141
    :pswitch_24
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 142
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-interface {v0, v1}, Lok6;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 144
    :pswitch_25
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 145
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Lok6;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 147
    :pswitch_26
    iget-object v2, v8, Lck6;->n:Lqj6;

    .line 148
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-interface {v0, v2}, Lok6;->r(Ljava/util/List;)V

    .line 150
    invoke-virtual {v8, v3}, Lck6;->n(I)Ljj6$b;

    move-result-object v3

    .line 151
    invoke-static {v1, v2, v3, v13, v9}, Lsk6;->y(ILjava/util/List;Ljj6$b;Ljava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 152
    :pswitch_27
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 153
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Lok6;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 155
    :pswitch_28
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 156
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Lok6;->I(Ljava/util/List;)V

    goto/16 :goto_0

    .line 158
    :pswitch_29
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 159
    invoke-virtual/range {v1 .. v6}, Lck6;->Q(Ljava/lang/Object;ILok6;Lqk6;Lyi6;)V

    goto/16 :goto_0

    .line 160
    :pswitch_2a
    invoke-virtual {v8, v10, v4, v0}, Lck6;->S(Ljava/lang/Object;ILok6;)V

    goto/16 :goto_0

    .line 161
    :pswitch_2b
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 162
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Lok6;->w(Ljava/util/List;)V

    goto/16 :goto_0

    .line 164
    :pswitch_2c
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 165
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v0, v1}, Lok6;->t(Ljava/util/List;)V

    goto/16 :goto_0

    .line 167
    :pswitch_2d
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 168
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-interface {v0, v1}, Lok6;->M(Ljava/util/List;)V

    goto/16 :goto_0

    .line 170
    :pswitch_2e
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 171
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Lok6;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 173
    :pswitch_2f
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 174
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Lok6;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 176
    :pswitch_30
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 177
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Lok6;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 179
    :pswitch_31
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 180
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Lok6;->E(Ljava/util/List;)V

    goto/16 :goto_0

    .line 182
    :pswitch_32
    iget-object v1, v8, Lck6;->n:Lqj6;

    .line 183
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lqj6;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Lok6;->J(Ljava/util/List;)V

    goto/16 :goto_0

    .line 185
    :pswitch_33
    invoke-virtual {v8, v10, v3}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 186
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v2

    .line 188
    invoke-interface {v0, v2, v11}, Lok6;->m(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 191
    :cond_10
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    .line 192
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v4

    .line 193
    invoke-interface {v0, v4, v11}, Lok6;->m(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v4

    .line 194
    invoke-static {v10, v1, v2, v4}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 195
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 196
    :pswitch_34
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->v()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 197
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 198
    :pswitch_35
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->u()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 199
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 200
    :pswitch_36
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->k()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 201
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 202
    :pswitch_37
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->H()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 203
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 204
    :pswitch_38
    invoke-interface/range {p4 .. p4}, Lok6;->s()I

    move-result v2

    .line 205
    invoke-virtual {v8, v3}, Lck6;->n(I)Ljj6$b;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 206
    invoke-interface {v5, v2}, Ljj6$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    .line 207
    :cond_11
    invoke-static {v1, v2, v13, v9}, Lsk6;->C(IILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 208
    :cond_12
    :goto_6
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 209
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 210
    :pswitch_39
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->n()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 211
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 212
    :pswitch_3a
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->D()Lqi6;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 213
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 214
    :pswitch_3b
    invoke-virtual {v8, v10, v3}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 215
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 216
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v2

    .line 217
    invoke-interface {v0, v2, v11}, Lok6;->A(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-static {v1, v2}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    :cond_13
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    .line 221
    invoke-virtual {v8, v3}, Lck6;->p(I)Lqk6;

    move-result-object v4

    .line 222
    invoke-interface {v0, v4, v11}, Lok6;->A(Lqk6;Lyi6;)Ljava/lang/Object;

    move-result-object v4

    .line 223
    invoke-static {v10, v1, v2, v4}, Lcl6;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 225
    :pswitch_3c
    invoke-virtual {v8, v10, v4, v0}, Lck6;->R(Ljava/lang/Object;ILok6;)V

    .line 226
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 227
    :pswitch_3d
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->i()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->p(Ljava/lang/Object;JZ)V

    .line 228
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 229
    :pswitch_3e
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->h()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 230
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 231
    :pswitch_3f
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->c()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 232
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 233
    :pswitch_40
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->F()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->v(Ljava/lang/Object;JI)V

    .line 234
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 235
    :pswitch_41
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->b()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 236
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 237
    :pswitch_42
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->K()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->w(Ljava/lang/Object;JJ)V

    .line 238
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 239
    :pswitch_43
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcl6;->u(Ljava/lang/Object;JF)V

    .line 240
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 241
    :pswitch_44
    invoke-static {v4}, Lck6;->D(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lok6;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcl6;->t(Ljava/lang/Object;JD)V

    .line 242
    invoke-virtual {v8, v10, v3}, Lck6;->U(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :goto_7
    move-object v13, v1

    .line 243
    :cond_14
    invoke-virtual {v9, v13, v0}, Lyk6;->l(Ljava/lang/Object;Lok6;)Z

    move-result v1
    :try_end_3
    .catch Lkj6$a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 244
    iget v0, v8, Lck6;->k:I

    :goto_8
    iget v1, v8, Lck6;->l:I

    if-ge v0, v1, :cond_15

    .line 245
    iget-object v1, v8, Lck6;->j:[I

    aget v1, v1, v0

    .line 246
    invoke-virtual {v8, v10, v1, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    if-eqz v13, :cond_16

    .line 247
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 248
    :catch_0
    :try_start_4
    invoke-virtual {v9, v0}, Lyk6;->p(Lok6;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 249
    invoke-interface/range {p4 .. p4}, Lok6;->G()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 250
    iget v0, v8, Lck6;->k:I

    :goto_9
    iget v1, v8, Lck6;->l:I

    if-ge v0, v1, :cond_17

    .line 251
    iget-object v1, v8, Lck6;->j:[I

    aget v1, v1, v0

    .line 252
    invoke-virtual {v8, v10, v1, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    if-eqz v13, :cond_18

    .line 253
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void

    :cond_19
    if-nez v13, :cond_1a

    .line 254
    :try_start_5
    invoke-virtual {v9, v10}, Lyk6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 255
    :cond_1a
    invoke-virtual {v9, v13, v0}, Lyk6;->l(Ljava/lang/Object;Lok6;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_0

    .line 256
    iget v0, v8, Lck6;->k:I

    :goto_a
    iget v1, v8, Lck6;->l:I

    if-ge v0, v1, :cond_1b

    .line 257
    iget-object v1, v8, Lck6;->j:[I

    aget v1, v1, v0

    .line 258
    invoke-virtual {v8, v10, v1, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    if-eqz v13, :cond_1c

    .line 259
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    .line 260
    iget v1, v8, Lck6;->k:I

    :goto_b
    iget v2, v8, Lck6;->l:I

    if-ge v1, v2, :cond_1d

    .line 261
    iget-object v2, v8, Lck6;->j:[I

    aget v2, v2, v1

    .line 262
    invoke-virtual {v8, v10, v2, v13, v9}, Lck6;->m(Ljava/lang/Object;ILjava/lang/Object;Lyk6;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    if-eqz v13, :cond_1e

    .line 263
    invoke-virtual {v9, v10, v13}, Lyk6;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_1e
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final y(Ljava/lang/Object;ILjava/lang/Object;Lyi6;Lok6;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lyi6;",
            "Lok6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 p2, p2, 0x1

    aget p2, v0, p2

    .line 2
    invoke-static {p2}, Lck6;->D(I)J

    move-result-wide v0

    .line 3
    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lck6;->q:Lvj6;

    invoke-interface {p2, p3}, Lvj6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    sget-object v2, Lcl6;->e:Lcl6$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lck6;->q:Lvj6;

    invoke-interface {v2, p2}, Lvj6;->h(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lck6;->q:Lvj6;

    invoke-interface {v2, p3}, Lvj6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lck6;->q:Lvj6;

    invoke-interface {v3, v2, p2}, Lvj6;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p2, Lcl6;->e:Lcl6$e;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lck6;->q:Lvj6;

    .line 11
    invoke-interface {p1, p2}, Lvj6;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lck6;->q:Lvj6;

    .line 12
    invoke-interface {p2, p3}, Lvj6;->d(Ljava/lang/Object;)Ltj6$a;

    move-result-object p2

    .line 13
    invoke-interface {p5, p1, p2, p4}, Lok6;->B(Ljava/util/Map;Ltj6$a;Lyi6;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lck6;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    .line 2
    invoke-static {v0}, Lck6;->D(I)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, p2, p3}, Lck6;->t(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-static {p2, v0, v1}, Lcl6;->n(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v2, p2}, Ljj6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    sget-object v2, Lcl6;->e:Lcl6$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, p3}, Lck6;->U(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    sget-object v2, Lcl6;->e:Lcl6$e;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcl6$e;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, p3}, Lck6;->U(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method
