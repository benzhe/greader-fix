.class public final Ldm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lom4<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:Lam4;

.field public final d:Z

.field public final e:Z

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lem4;

.field public final j:Lkl4;

.field public final k:Lcn4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn4<",
            "**>;"
        }
    .end annotation
.end field

.field public final l:Lfk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk4<",
            "*>;"
        }
    .end annotation
.end field

.field public final m:Ltl4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Ldm4;->n:[I

    .line 2
    invoke-static {}, Lin4;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ldm4;->o:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILam4;Z[IIILem4;Lkl4;Lcn4;Lfk4;Ltl4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lam4;",
            "ZZ[III",
            "Lem4;",
            "Lkl4;",
            "Lcn4<",
            "**>;",
            "Lfk4<",
            "*>;",
            "Ltl4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldm4;->a:[I

    .line 3
    iput-object p2, p0, Ldm4;->b:[Ljava/lang/Object;

    .line 4
    instance-of p1, p5, Lpk4;

    .line 5
    iput-boolean p6, p0, Ldm4;->e:Z

    if-eqz p13, :cond_0

    .line 6
    invoke-virtual {p13, p5}, Lfk4;->d(Lam4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ldm4;->d:Z

    .line 7
    iput-object p7, p0, Ldm4;->f:[I

    .line 8
    iput p8, p0, Ldm4;->g:I

    .line 9
    iput p9, p0, Ldm4;->h:I

    .line 10
    iput-object p10, p0, Ldm4;->i:Lem4;

    .line 11
    iput-object p11, p0, Ldm4;->j:Lkl4;

    .line 12
    iput-object p12, p0, Ldm4;->k:Lcn4;

    .line 13
    iput-object p13, p0, Ldm4;->l:Lfk4;

    .line 14
    iput-object p5, p0, Ldm4;->c:Lam4;

    .line 15
    iput-object p14, p0, Ldm4;->m:Ltl4;

    return-void
.end method

.method public static C(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static D(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
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
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static h(Lyl4;Lem4;Lkl4;Lcn4;Lfk4;Ltl4;)Ldm4;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lyl4;",
            "Lem4;",
            "Lkl4;",
            "Lcn4<",
            "**>;",
            "Lfk4<",
            "*>;",
            "Ltl4;",
            ")",
            "Ldm4<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    instance-of v1, v0, Llm4;

    if-eqz v1, :cond_35

    .line 2
    check-cast v0, Llm4;

    .line 3
    iget v1, v0, Llm4;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 4
    :goto_1
    iget-object v1, v0, Llm4;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v7, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v5, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    .line 9
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

    .line 10
    sget-object v7, Ldm4;->n:[I

    move-object v13, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v7, v5, 0x1

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 12
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

    .line 13
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 14
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

    .line 15
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    .line 16
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

    .line 17
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 18
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

    .line 19
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 20
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

    .line 21
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 22
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

    .line 23
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 24
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

    .line 25
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v17, v4, 0x1

    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_b

    :cond_15
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    :cond_16
    add-int v4, v15, v13

    add-int/2addr v4, v14

    .line 27
    new-array v4, v4, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v4

    move v4, v5

    move/from16 v5, v16

    .line 28
    :goto_c
    sget-object v8, Ldm4;->o:Lsun/misc/Unsafe;

    .line 29
    iget-object v6, v0, Llm4;->c:[Ljava/lang/Object;

    .line 30
    iget-object v2, v0, Llm4;->a:Lam4;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    .line 32
    new-array v5, v5, [I

    const/16 v18, 0x1

    shl-int/lit8 v12, v12, 0x1

    .line 33
    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v7, v3, :cond_34

    add-int/lit8 v24, v7, 0x1

    .line 34
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v7, v3, :cond_18

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v26, v3, 0x1

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_17

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v7, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v15, v27

    goto :goto_e

    :cond_17
    shl-int v3, v3, v24

    or-int/2addr v7, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_18
    move/from16 v27, v15

    move/from16 v3, v24

    :goto_f
    add-int/lit8 v15, v3, 0x1

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_1a

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_10
    add-int/lit8 v26, v15, 0x1

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_19

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v3, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_10

    :cond_19
    shl-int v10, v15, v24

    or-int/2addr v3, v10

    move/from16 v15, v26

    goto :goto_11

    :cond_1a
    move/from16 v28, v10

    move/from16 v15, v24

    :goto_11
    and-int/lit16 v10, v3, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v3, 0x400

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v19, 0x1

    .line 38
    aput v21, v13, v19

    move/from16 v19, v9

    :cond_1b
    const/16 v9, 0x33

    if-lt v10, v9, :cond_23

    add-int/lit8 v9, v15, 0x1

    .line 39
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_1d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    move/from16 v34, v26

    move/from16 v26, v15

    move/from16 v15, v34

    :goto_12
    add-int/lit8 v33, v15, 0x1

    .line 40
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v9, :cond_1c

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v32

    or-int v26, v26, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v15, v33

    const v9, 0xd800

    goto :goto_12

    :cond_1c
    shl-int v9, v15, v32

    or-int v15, v26, v9

    move/from16 v9, v33

    goto :goto_13

    :cond_1d
    move/from16 v9, v26

    :goto_13
    move/from16 v26, v9

    add-int/lit8 v9, v10, -0x33

    move-object/from16 v32, v0

    const/16 v0, 0x9

    if-eq v9, v0, :cond_20

    const/16 v0, 0x11

    if-ne v9, v0, :cond_1e

    goto :goto_14

    :cond_1e
    const/16 v0, 0xc

    if-ne v9, v0, :cond_1f

    if-nez v11, :cond_1f

    .line 41
    div-int/lit8 v0, v21, 0x3

    const/4 v9, 0x1

    shl-int/2addr v0, v9

    add-int/2addr v0, v9

    add-int/lit8 v9, v14, 0x1

    aget-object v14, v6, v14

    aput-object v14, v12, v0

    move v14, v9

    :cond_1f
    const/4 v9, 0x1

    goto :goto_15

    .line 42
    :cond_20
    :goto_14
    div-int/lit8 v0, v21, 0x3

    const/4 v9, 0x1

    shl-int/2addr v0, v9

    add-int/2addr v0, v9

    add-int/lit8 v18, v14, 0x1

    aget-object v14, v6, v14

    aput-object v14, v12, v0

    move/from16 v14, v18

    :goto_15
    shl-int/lit8 v0, v15, 0x1

    .line 43
    aget-object v9, v6, v0

    .line 44
    instance-of v15, v9, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_21

    .line 45
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 46
    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Ldm4;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 47
    aput-object v9, v6, v0

    :goto_16
    move/from16 v29, v14

    .line 48
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v9, v14

    add-int/lit8 v0, v0, 0x1

    .line 49
    aget-object v14, v6, v0

    .line 50
    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_22

    .line 51
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 52
    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v2, v14}, Ldm4;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 53
    aput-object v14, v6, v0

    .line 54
    :goto_17
    invoke-virtual {v8, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v0, v14

    move-object/from16 v30, v1

    move v14, v11

    move/from16 v15, v26

    move/from16 v31, v29

    const/16 v17, 0x1

    move v1, v0

    move-object/from16 v29, v12

    const v0, 0xd800

    const/4 v12, 0x0

    goto/16 :goto_21

    :cond_23
    move-object/from16 v32, v0

    add-int/lit8 v0, v14, 0x1

    .line 55
    aget-object v9, v6, v14

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Ldm4;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v14, 0x9

    if-eq v10, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v10, v14, :cond_24

    goto/16 :goto_1b

    :cond_24
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_2a

    const/16 v14, 0x31

    if-ne v10, v14, :cond_25

    goto :goto_19

    :cond_25
    const/16 v14, 0xc

    if-eq v10, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_26

    goto :goto_18

    :cond_26
    const/16 v14, 0x32

    if-ne v10, v14, :cond_2c

    add-int/lit8 v14, v22, 0x1

    .line 56
    aput v21, v13, v22

    .line 57
    div-int/lit8 v22, v21, 0x3

    const/16 v18, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v29, v0, 0x1

    aget-object v0, v6, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v29, 0x1

    .line 58
    aget-object v29, v6, v29

    aput-object v29, v12, v22

    move-object/from16 v29, v12

    move/from16 v22, v14

    move v14, v11

    goto :goto_1d

    :cond_27
    move/from16 v22, v14

    goto :goto_1a

    :cond_28
    :goto_18
    if-nez v11, :cond_29

    .line 59
    div-int/lit8 v14, v21, 0x3

    const/16 v18, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v29, v0, 0x1

    aget-object v0, v6, v0

    aput-object v0, v12, v14

    goto :goto_1a

    :cond_29
    const/16 v18, 0x1

    goto :goto_1c

    :cond_2a
    :goto_19
    const/16 v18, 0x1

    .line 60
    div-int/lit8 v14, v21, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v29, v0, 0x1

    aget-object v0, v6, v0

    aput-object v0, v12, v14

    :goto_1a
    move/from16 v0, v29

    goto :goto_1c

    :cond_2b
    :goto_1b
    const/16 v18, 0x1

    .line 61
    div-int/lit8 v14, v21, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v29

    aput-object v29, v12, v14

    :cond_2c
    :goto_1c
    move v14, v11

    move-object/from16 v29, v12

    .line 62
    :goto_1d
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v9, v11

    and-int/lit16 v11, v3, 0x1000

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_30

    const/16 v11, 0x11

    if-gt v10, v11, :cond_30

    add-int/lit8 v11, v15, 0x1

    .line 63
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_2e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v17, 0xd

    :goto_1e
    add-int/lit8 v30, v11, 0x1

    .line 64
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v15, :cond_2d

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v17

    or-int/2addr v12, v11

    add-int/lit8 v17, v17, 0xd

    move/from16 v11, v30

    goto :goto_1e

    :cond_2d
    shl-int v11, v11, v17

    or-int/2addr v12, v11

    move/from16 v11, v30

    :cond_2e
    const/16 v17, 0x1

    shl-int/lit8 v18, v4, 0x1

    .line 65
    div-int/lit8 v30, v12, 0x20

    add-int v30, v30, v18

    .line 66
    aget-object v15, v6, v30

    move/from16 v31, v0

    .line 67
    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2f

    .line 68
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 69
    :cond_2f
    check-cast v15, Ljava/lang/String;

    invoke-static {v2, v15}, Ldm4;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 70
    aput-object v15, v6, v30

    :goto_1f
    move-object/from16 v30, v1

    .line 71
    invoke-virtual {v8, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 72
    rem-int/lit8 v12, v12, 0x20

    move v15, v11

    const v0, 0xd800

    goto :goto_20

    :cond_30
    move/from16 v31, v0

    move-object/from16 v30, v1

    const v0, 0xd800

    const/16 v17, 0x1

    const v1, 0xfffff

    const/4 v12, 0x0

    :goto_20
    const/16 v11, 0x12

    if-lt v10, v11, :cond_31

    const/16 v11, 0x31

    if-gt v10, v11, :cond_31

    add-int/lit8 v11, v23, 0x1

    .line 73
    aput v9, v13, v23

    move/from16 v23, v11

    :cond_31
    :goto_21
    add-int/lit8 v11, v21, 0x1

    .line 74
    aput v7, v5, v21

    add-int/lit8 v7, v11, 0x1

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_32

    const/high16 v0, 0x20000000

    goto :goto_22

    :cond_32
    const/4 v0, 0x0

    :goto_22
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_33

    const/high16 v3, 0x10000000

    goto :goto_23

    :cond_33
    const/4 v3, 0x0

    :goto_23
    or-int/2addr v0, v3

    shl-int/lit8 v3, v10, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v9

    .line 75
    aput v0, v5, v11

    add-int/lit8 v21, v7, 0x1

    shl-int/lit8 v0, v12, 0x14

    or-int/2addr v0, v1

    .line 76
    aput v0, v5, v7

    move v11, v14

    move v7, v15

    move/from16 v9, v24

    move/from16 v3, v25

    move/from16 v15, v27

    move/from16 v10, v28

    move-object/from16 v12, v29

    move-object/from16 v1, v30

    move/from16 v14, v31

    move-object/from16 v0, v32

    goto/16 :goto_d

    :cond_34
    move-object/from16 v32, v0

    move/from16 v24, v9

    move/from16 v28, v10

    move v14, v11

    move-object/from16 v29, v12

    move/from16 v27, v15

    .line 77
    new-instance v0, Ldm4;

    move-object/from16 v1, v32

    .line 78
    iget-object v10, v1, Llm4;->a:Lam4;

    move-object v1, v5

    move-object v5, v0

    move-object v6, v1

    move-object/from16 v7, v29

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    .line 79
    invoke-direct/range {v5 .. v19}, Ldm4;-><init>([I[Ljava/lang/Object;IILam4;Z[IIILem4;Lkl4;Lcn4;Lfk4;Ltl4;)V

    return-object v0

    .line 80
    :cond_35
    check-cast v0, Lxm4;

    .line 81
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public static j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {p1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Field "

    const-string v4, " for "

    invoke-static {v2, v3, p1, v4, p0}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-static {p0, p1, v0}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static k(Ljava/lang/Object;J)Ljava/util/List;
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
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static l(ILjava/lang/Object;Lvn4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lek4;

    .line 3
    iget-object p2, p2, Lek4;->a:Lck4;

    invoke-virtual {p2, p0, p1}, Lck4;->j(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    check-cast p1, Lvj4;

    check-cast p2, Lek4;

    .line 5
    iget-object p2, p2, Lek4;->a:Lck4;

    invoke-virtual {p2, p0, p1}, Lck4;->g(ILvj4;)V

    return-void
.end method

.method public static m(Lcn4;Ljava/lang/Object;Lvn4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn4<",
            "TUT;TUB;>;TT;",
            "Lvn4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn4;->b(Ljava/lang/Object;Lvn4;)V

    return-void
.end method

.method public static s(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static y(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final B(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ldm4;->g:I

    :goto_0
    iget v1, p0, Ldm4;->h:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ldm4;->f:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ldm4;->z(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Ldm4;->m:Ltl4;

    invoke-interface {v4, v3}, Ltl4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ldm4;->f:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Ldm4;->j:Lkl4;

    iget-object v3, p0, Ldm4;->f:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lkl4;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Ldm4;->k:Lcn4;

    invoke-virtual {v0, p1}, Lcn4;->e(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Ldm4;->d:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v0, p1}, Lfk4;->f(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
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
    iget v2, v6, Ldm4;->g:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_c

    .line 2
    iget-object v2, v6, Ldm4;->f:[I

    aget v12, v2, v10

    .line 3
    iget-object v2, v6, Ldm4;->a:[I

    aget v13, v2, v12

    .line 4
    invoke-virtual {v6, v12}, Ldm4;->z(I)I

    move-result v14

    .line 5
    iget-object v2, v6, Ldm4;->a:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 6
    sget-object v0, Ldm4;->o:Lsun/misc/Unsafe;

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
    invoke-virtual/range {v0 .. v5}, Ldm4;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_5

    .line 8
    :cond_4
    iget-object v0, v6, Ldm4;->m:Ltl4;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 9
    invoke-static {v7, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ltl4;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 11
    :cond_5
    invoke-virtual {v6, v12}, Ldm4;->t(I)Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget-object v1, v6, Ldm4;->m:Ltl4;

    invoke-interface {v1, v0}, Ltl4;->b(Ljava/lang/Object;)Lrl4;

    const/4 v0, 0x0

    .line 13
    throw v0

    .line 14
    :cond_6
    invoke-virtual {v6, v7, v13, v12}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    invoke-virtual {v6, v12}, Ldm4;->i(I)Lom4;

    move-result-object v0

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 16
    invoke-static {v7, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lom4;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 18
    invoke-static {v7, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 20
    invoke-virtual {v6, v12}, Ldm4;->i(I)Lom4;

    move-result-object v1

    const/4 v2, 0x0

    .line 21
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-interface {v1, v3}, Lom4;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-nez v11, :cond_b

    return v9

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 24
    invoke-virtual/range {v0 .. v5}, Ldm4;->r(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {v6, v12}, Ldm4;->i(I)Lom4;

    move-result-object v0

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 26
    invoke-static {v7, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Lom4;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 28
    :cond_c
    iget-boolean v0, v6, Ldm4;->d:Z

    if-eqz v0, :cond_d

    .line 29
    iget-object v0, v6, Ldm4;->l:Lfk4;

    invoke-virtual {v0, v7}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object v0

    invoke-virtual {v0}, Lkk4;->m()Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    return v11
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Ldm4;->z(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Ldm4;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    const/16 v8, 0x4cf

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 13
    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 15
    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 17
    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 19
    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 21
    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Ldm4;->E(Ljava/lang/Object;J)Z

    move-result v3

    .line 28
    sget-object v4, Lrk4;->a:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 29
    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 31
    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 33
    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 35
    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 37
    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 39
    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Ldm4;->y(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    .line 41
    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Ldm4;->s(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 45
    :pswitch_14
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 54
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v3

    .line 58
    sget-object v4, Lrk4;->a:Ljava/nio/charset/Charset;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v8, 0x4d5

    :goto_2
    add-int/2addr v2, v8

    goto :goto_4

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Lrk4;->a(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v2

    move v2, v3

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Ldm4;->k:Lcn4;

    invoke-virtual {v0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 68
    iget-boolean v1, p0, Ldm4;->d:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    .line 69
    iget-object v1, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v1, p1}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object p1

    invoke-virtual {p1}, Lkk4;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
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

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
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
    iget-object v1, p0, Ldm4;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ldm4;->z(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v5, v2

    .line 4
    iget-object v2, p0, Ldm4;->a:[I

    aget v2, v2, v0

    const/high16 v3, 0xff00000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Ldm4;->x(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-virtual {p0, p2, v2, v0}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, v2, v0}, Ldm4;->v(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Ldm4;->x(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p2, v2, v0}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1, v2, v0}, Ldm4;->v(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    iget-object v1, p0, Ldm4;->m:Ltl4;

    .line 14
    sget-object v2, Lqm4;->a:Ljava/lang/Class;

    .line 15
    invoke-static {p1, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 16
    invoke-interface {v1, v2, v3}, Ltl4;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-static {p1, v5, v6, v1}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 18
    :pswitch_5
    iget-object v1, p0, Ldm4;->j:Lkl4;

    invoke-virtual {v1, p1, p2, v5, v6}, Lkl4;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Ldm4;->o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 20
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {p2, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lin4;->d(Ljava/lang/Object;JJ)V

    .line 22
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 25
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 26
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lin4;->d(Ljava/lang/Object;JJ)V

    .line 29
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 32
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 33
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 36
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 37
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 40
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 41
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 42
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Ldm4;->o(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 46
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v5, v6}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v5, v6, v1}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 49
    :pswitch_10
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v5, v6}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v1

    .line 51
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->g(Ljava/lang/Object;JZ)V

    .line 52
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 53
    :pswitch_11
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 55
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 56
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 57
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p2, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lin4;->d(Ljava/lang/Object;JJ)V

    .line 59
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto :goto_1

    .line 60
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p2, v5, v6}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v1

    .line 62
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->e(Ljava/lang/Object;JI)V

    .line 63
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto :goto_1

    .line 64
    :pswitch_14
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p2, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lin4;->d(Ljava/lang/Object;JJ)V

    .line 66
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto :goto_1

    .line 67
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {p2, v5, v6}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Lin4;->d(Ljava/lang/Object;JJ)V

    .line 69
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto :goto_1

    .line 70
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {p2, v5, v6}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v1

    .line 72
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v5, v6, v1}, Lin4$c;->d(Ljava/lang/Object;JF)V

    .line 73
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    goto :goto_1

    .line 74
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p2, v5, v6}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v7

    .line 76
    sget-object v3, Lin4;->f:Lin4$c;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lin4$c;->c(Ljava/lang/Object;JD)V

    .line 77
    invoke-virtual {p0, p1, v0}, Ldm4;->u(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Ldm4;->k:Lcn4;

    .line 79
    sget-object v1, Lqm4;->a:Ljava/lang/Class;

    .line 80
    invoke-virtual {v0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-virtual {v0, p2}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcn4;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-virtual {v0, p1, v1}, Lcn4;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget-boolean v0, p0, Ldm4;->d:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Ldm4;->l:Lfk4;

    invoke-static {v0, p1, p2}, Lqm4;->i(Lfk4;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0, v2}, Ldm4;->z(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0, v2}, Ldm4;->B(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 4
    invoke-static {p1, v4, v5}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 5
    invoke-static {p2, v4, v5}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 6
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {v4, v5}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-static {v4, v5}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 15
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    invoke-static {p1, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 17
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-static {p1, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 21
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 25
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 33
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {p1, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-static {v4, v5}, Lqm4;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 36
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {p1, v6, v7}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 38
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 40
    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-static {p1, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 42
    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-static {p1, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 44
    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-static {p1, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {p1, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 48
    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {p1, v6, v7}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 50
    invoke-static {p2, v6, v7}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 51
    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Ldm4;->A(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-static {p1, v6, v7}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 53
    invoke-static {p2, v6, v7}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Ldm4;->k:Lcn4;

    invoke-virtual {v0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v2, p0, Ldm4;->k:Lcn4;

    invoke-virtual {v2, p2}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 57
    :cond_4
    iget-boolean v0, p0, Ldm4;->d:Z

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v0, p1}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object p1

    .line 59
    iget-object v0, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v0, p2}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lkk4;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

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

.method public final f(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldm4;->e:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/high16 v3, 0xff00000

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Ldm4;->o:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v5, p0, Ldm4;->a:[I

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 4
    invoke-virtual {p0, v2}, Ldm4;->z(I)I

    move-result v5

    and-int v6, v5, v3

    ushr-int/lit8 v6, v6, 0x14

    .line 5
    iget-object v7, p0, Ldm4;->a:[I

    aget v8, v7, v2

    and-int/2addr v5, v1

    int-to-long v9, v5

    .line 6
    sget-object v5, Llk4;->O:Llk4;

    .line 7
    iget v5, v5, Llk4;->e:I

    if-lt v6, v5, :cond_0

    .line 8
    sget-object v5, Llk4;->b0:Llk4;

    .line 9
    iget v5, v5, Llk4;->e:I

    if-gt v6, v5, :cond_0

    add-int/lit8 v5, v2, 0x2

    .line 10
    aget v5, v7, v5

    :cond_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lam4;

    .line 13
    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    .line 14
    invoke-static {v8, v5, v6}, Lck4;->w(ILam4;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 15
    :pswitch_1
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    invoke-static {p1, v9, v10}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->I(IJ)I

    move-result v5

    goto/16 :goto_2

    .line 17
    :pswitch_2
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18
    invoke-static {p1, v9, v10}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->O(II)I

    move-result v5

    goto/16 :goto_2

    .line 19
    :pswitch_3
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    invoke-static {v8}, Lck4;->P(I)I

    move-result v5

    goto/16 :goto_2

    .line 21
    :pswitch_4
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    invoke-static {v8}, Lck4;->S(I)I

    move-result v5

    goto/16 :goto_2

    .line 23
    :pswitch_5
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-static {p1, v9, v10}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->T(II)I

    move-result v5

    goto/16 :goto_2

    .line 25
    :pswitch_6
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 26
    invoke-static {p1, v9, v10}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->L(II)I

    move-result v5

    goto/16 :goto_2

    .line 27
    :pswitch_7
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 28
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvj4;

    .line 29
    invoke-static {v8, v5}, Lck4;->v(ILvj4;)I

    move-result v5

    goto/16 :goto_2

    .line 30
    :pswitch_8
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 31
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lqm4;->a(ILjava/lang/Object;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 33
    :pswitch_9
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 34
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 35
    instance-of v6, v5, Lvj4;

    if-eqz v6, :cond_1

    .line 36
    check-cast v5, Lvj4;

    invoke-static {v8, v5}, Lck4;->v(ILvj4;)I

    move-result v5

    goto/16 :goto_2

    .line 37
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lck4;->n(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    .line 38
    :pswitch_a
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39
    invoke-static {v8}, Lck4;->u(I)I

    move-result v5

    goto/16 :goto_2

    .line 40
    :pswitch_b
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    invoke-static {v8}, Lck4;->R(I)I

    move-result v5

    goto/16 :goto_2

    .line 42
    :pswitch_c
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-static {v8}, Lck4;->M(I)I

    move-result v5

    goto/16 :goto_2

    .line 44
    :pswitch_d
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 45
    invoke-static {p1, v9, v10}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->H(II)I

    move-result v5

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    invoke-static {p1, v9, v10}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->D(IJ)I

    move-result v5

    goto/16 :goto_2

    .line 48
    :pswitch_f
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 49
    invoke-static {p1, v9, v10}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->A(IJ)I

    move-result v5

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 51
    invoke-static {v8}, Lck4;->m(I)I

    move-result v5

    goto/16 :goto_2

    .line 52
    :pswitch_11
    invoke-virtual {p0, p1, v8, v2}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    invoke-static {v8}, Lck4;->t(I)I

    move-result v5

    goto/16 :goto_2

    .line 54
    :pswitch_12
    iget-object v5, p0, Ldm4;->m:Ltl4;

    .line 55
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v2}, Ldm4;->t(I)Ljava/lang/Object;

    move-result-object v7

    .line 56
    invoke-interface {v5, v8, v6, v7}, Ltl4;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_2

    .line 57
    :pswitch_13
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    .line 58
    invoke-static {v8, v5, v6}, Lqm4;->m(ILjava/util/List;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 59
    :pswitch_14
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 60
    invoke-static {v5}, Lqm4;->t(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 61
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 62
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 63
    :pswitch_15
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 64
    invoke-static {v5}, Lqm4;->F(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 65
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 66
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 67
    :pswitch_16
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 68
    invoke-static {v5}, Lqm4;->L(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 69
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 70
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 71
    :pswitch_17
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 72
    invoke-static {v5}, Lqm4;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 73
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 74
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 75
    :pswitch_18
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 76
    invoke-static {v5}, Lqm4;->w(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 77
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 78
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 79
    :pswitch_19
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    invoke-static {v5}, Lqm4;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 81
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 82
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 83
    :pswitch_1a
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 84
    sget-object v6, Lqm4;->a:Ljava/lang/Class;

    .line 85
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 86
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 87
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 88
    :pswitch_1b
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v5}, Lqm4;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 90
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 91
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto/16 :goto_1

    .line 92
    :pswitch_1c
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 93
    invoke-static {v5}, Lqm4;->L(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 94
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 95
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto :goto_1

    .line 96
    :pswitch_1d
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    invoke-static {v5}, Lqm4;->z(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 98
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 99
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto :goto_1

    .line 100
    :pswitch_1e
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v5}, Lqm4;->n(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 102
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 103
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto :goto_1

    .line 104
    :pswitch_1f
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 105
    invoke-static {v5}, Lqm4;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 106
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 107
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto :goto_1

    .line 108
    :pswitch_20
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 109
    invoke-static {v5}, Lqm4;->I(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 110
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 111
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    goto :goto_1

    .line 112
    :pswitch_21
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 113
    invoke-static {v5}, Lqm4;->L(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4

    .line 114
    invoke-static {v8}, Lck4;->C(I)I

    move-result v6

    .line 115
    invoke-static {v5}, Lck4;->K(I)I

    move-result v7

    :goto_1
    add-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    move v4, v7

    goto/16 :goto_3

    .line 116
    :pswitch_22
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->s(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 117
    :pswitch_23
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 118
    invoke-static {v8, v5}, Lqm4;->E(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 119
    :pswitch_24
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->K(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 120
    :pswitch_25
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->H(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 121
    :pswitch_26
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 122
    invoke-static {v8, v5}, Lqm4;->v(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 123
    :pswitch_27
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 124
    invoke-static {v8, v5}, Lqm4;->B(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 125
    :pswitch_28
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 126
    invoke-static {v8, v5}, Lqm4;->l(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 127
    :pswitch_29
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    .line 128
    invoke-static {v8, v5, v6}, Lqm4;->c(ILjava/util/List;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 129
    :pswitch_2a
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 130
    :pswitch_2b
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 131
    sget-object v6, Lqm4;->a:Ljava/lang/Class;

    .line 132
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 133
    :cond_2
    invoke-static {v8}, Lck4;->u(I)I

    move-result v6

    mul-int v5, v5, v6

    goto/16 :goto_2

    .line 134
    :pswitch_2c
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->H(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 135
    :pswitch_2d
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->K(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 136
    :pswitch_2e
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 137
    invoke-static {v8, v5}, Lqm4;->y(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 138
    :pswitch_2f
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->r(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 139
    :pswitch_30
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->k(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 140
    :pswitch_31
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->H(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 141
    :pswitch_32
    invoke-static {p1, v9, v10}, Ldm4;->k(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lqm4;->K(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_2

    .line 142
    :pswitch_33
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lam4;

    .line 144
    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    .line 145
    invoke-static {v8, v5, v6}, Lck4;->w(ILam4;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 146
    :pswitch_34
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-static {p1, v9, v10}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->I(IJ)I

    move-result v5

    goto/16 :goto_2

    .line 148
    :pswitch_35
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    invoke-static {p1, v9, v10}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->O(II)I

    move-result v5

    goto/16 :goto_2

    .line 150
    :pswitch_36
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    invoke-static {v8}, Lck4;->P(I)I

    move-result v5

    goto/16 :goto_2

    .line 152
    :pswitch_37
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    invoke-static {v8}, Lck4;->S(I)I

    move-result v5

    goto/16 :goto_2

    .line 154
    :pswitch_38
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 155
    invoke-static {p1, v9, v10}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->T(II)I

    move-result v5

    goto/16 :goto_2

    .line 156
    :pswitch_39
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    invoke-static {p1, v9, v10}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->L(II)I

    move-result v5

    goto/16 :goto_2

    .line 158
    :pswitch_3a
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvj4;

    .line 160
    invoke-static {v8, v5}, Lck4;->v(ILvj4;)I

    move-result v5

    goto/16 :goto_2

    .line 161
    :pswitch_3b
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 163
    invoke-virtual {p0, v2}, Ldm4;->i(I)Lom4;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lqm4;->a(ILjava/lang/Object;Lom4;)I

    move-result v5

    goto/16 :goto_2

    .line 164
    :pswitch_3c
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-static {p1, v9, v10}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 166
    instance-of v6, v5, Lvj4;

    if-eqz v6, :cond_3

    .line 167
    check-cast v5, Lvj4;

    invoke-static {v8, v5}, Lck4;->v(ILvj4;)I

    move-result v5

    goto/16 :goto_2

    .line 168
    :cond_3
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lck4;->n(ILjava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 169
    :pswitch_3d
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    invoke-static {v8}, Lck4;->u(I)I

    move-result v5

    goto :goto_2

    .line 171
    :pswitch_3e
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-static {v8}, Lck4;->R(I)I

    move-result v5

    goto :goto_2

    .line 173
    :pswitch_3f
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    invoke-static {v8}, Lck4;->M(I)I

    move-result v5

    goto :goto_2

    .line 175
    :pswitch_40
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-static {p1, v9, v10}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v8, v5}, Lck4;->H(II)I

    move-result v5

    goto :goto_2

    .line 177
    :pswitch_41
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-static {p1, v9, v10}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->D(IJ)I

    move-result v5

    goto :goto_2

    .line 179
    :pswitch_42
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    invoke-static {p1, v9, v10}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Lck4;->A(IJ)I

    move-result v5

    goto :goto_2

    .line 181
    :pswitch_43
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    invoke-static {v8}, Lck4;->m(I)I

    move-result v5

    goto :goto_2

    .line 183
    :pswitch_44
    invoke-virtual {p0, p1, v2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    invoke-static {v8}, Lck4;->t(I)I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 185
    :cond_5
    iget-object v0, p0, Ldm4;->k:Lcn4;

    .line 186
    invoke-virtual {v0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Lcn4;->h(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v4

    return p1

    .line 188
    :cond_6
    sget-object v0, Ldm4;->o:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    .line 189
    :goto_4
    iget-object v8, p0, Ldm4;->a:[I

    array-length v8, v8

    if-ge v4, v8, :cond_d

    .line 190
    invoke-virtual {p0, v4}, Ldm4;->z(I)I

    move-result v8

    .line 191
    iget-object v9, p0, Ldm4;->a:[I

    aget v10, v9, v4

    and-int v11, v8, v3

    ushr-int/lit8 v11, v11, 0x14

    const/16 v12, 0x11

    if-gt v11, v12, :cond_7

    add-int/lit8 v12, v4, 0x2

    .line 192
    aget v9, v9, v12

    and-int v12, v9, v1

    ushr-int/lit8 v9, v9, 0x14

    const/4 v13, 0x1

    shl-int v9, v13, v9

    if-eq v12, v6, :cond_8

    int-to-long v6, v12

    .line 193
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v6

    move v6, v12

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :cond_8
    :goto_5
    and-int/2addr v8, v1

    int-to-long v12, v8

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 194
    :pswitch_45
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 195
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lam4;

    .line 196
    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    .line 197
    invoke-static {v10, v8, v9}, Lck4;->w(ILam4;Lom4;)I

    move-result v8

    goto/16 :goto_7

    .line 198
    :pswitch_46
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 199
    invoke-static {p1, v12, v13}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->I(IJ)I

    move-result v8

    goto/16 :goto_7

    .line 200
    :pswitch_47
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 201
    invoke-static {p1, v12, v13}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->O(II)I

    move-result v8

    goto/16 :goto_7

    .line 202
    :pswitch_48
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 203
    invoke-static {v10}, Lck4;->P(I)I

    move-result v8

    goto/16 :goto_7

    .line 204
    :pswitch_49
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 205
    invoke-static {v10}, Lck4;->S(I)I

    move-result v8

    goto/16 :goto_7

    .line 206
    :pswitch_4a
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 207
    invoke-static {p1, v12, v13}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->T(II)I

    move-result v8

    goto/16 :goto_7

    .line 208
    :pswitch_4b
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 209
    invoke-static {p1, v12, v13}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->L(II)I

    move-result v8

    goto/16 :goto_7

    .line 210
    :pswitch_4c
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 211
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvj4;

    .line 212
    invoke-static {v10, v8}, Lck4;->v(ILvj4;)I

    move-result v8

    goto/16 :goto_7

    .line 213
    :pswitch_4d
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 214
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 215
    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lqm4;->a(ILjava/lang/Object;Lom4;)I

    move-result v8

    goto/16 :goto_7

    .line 216
    :pswitch_4e
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 217
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 218
    instance-of v9, v8, Lvj4;

    if-eqz v9, :cond_9

    .line 219
    check-cast v8, Lvj4;

    invoke-static {v10, v8}, Lck4;->v(ILvj4;)I

    move-result v8

    goto/16 :goto_7

    .line 220
    :cond_9
    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v8}, Lck4;->n(ILjava/lang/String;)I

    move-result v8

    goto/16 :goto_7

    .line 221
    :pswitch_4f
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 222
    invoke-static {v10}, Lck4;->u(I)I

    move-result v8

    goto/16 :goto_7

    .line 223
    :pswitch_50
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 224
    invoke-static {v10}, Lck4;->R(I)I

    move-result v8

    goto/16 :goto_7

    .line 225
    :pswitch_51
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 226
    invoke-static {v10}, Lck4;->M(I)I

    move-result v8

    goto/16 :goto_7

    .line 227
    :pswitch_52
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 228
    invoke-static {p1, v12, v13}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->H(II)I

    move-result v8

    goto/16 :goto_7

    .line 229
    :pswitch_53
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 230
    invoke-static {p1, v12, v13}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->D(IJ)I

    move-result v8

    goto/16 :goto_7

    .line 231
    :pswitch_54
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 232
    invoke-static {p1, v12, v13}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->A(IJ)I

    move-result v8

    goto/16 :goto_7

    .line 233
    :pswitch_55
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 234
    invoke-static {v10}, Lck4;->m(I)I

    move-result v8

    goto/16 :goto_7

    .line 235
    :pswitch_56
    invoke-virtual {p0, p1, v10, v4}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 236
    invoke-static {v10}, Lck4;->t(I)I

    move-result v8

    goto/16 :goto_7

    .line 237
    :pswitch_57
    iget-object v8, p0, Ldm4;->m:Ltl4;

    .line 238
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v4}, Ldm4;->t(I)Ljava/lang/Object;

    move-result-object v11

    .line 239
    invoke-interface {v8, v10, v9, v11}, Ltl4;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    goto/16 :goto_7

    .line 240
    :pswitch_58
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 241
    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    .line 242
    invoke-static {v10, v8, v9}, Lqm4;->m(ILjava/util/List;Lom4;)I

    move-result v8

    goto/16 :goto_7

    .line 243
    :pswitch_59
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 244
    invoke-static {v8}, Lqm4;->t(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 245
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 246
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 247
    :pswitch_5a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 248
    invoke-static {v8}, Lqm4;->F(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 249
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 250
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 251
    :pswitch_5b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 252
    invoke-static {v8}, Lqm4;->L(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 253
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 254
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 255
    :pswitch_5c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 256
    invoke-static {v8}, Lqm4;->I(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 257
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 258
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 259
    :pswitch_5d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 260
    invoke-static {v8}, Lqm4;->w(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 261
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 262
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 263
    :pswitch_5e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 264
    invoke-static {v8}, Lqm4;->C(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 265
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 266
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 267
    :pswitch_5f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 268
    sget-object v9, Lqm4;->a:Ljava/lang/Class;

    .line 269
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 270
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 271
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 272
    :pswitch_60
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 273
    invoke-static {v8}, Lqm4;->I(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 274
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 275
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto/16 :goto_6

    .line 276
    :pswitch_61
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 277
    invoke-static {v8}, Lqm4;->L(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 278
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 279
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto :goto_6

    .line 280
    :pswitch_62
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 281
    invoke-static {v8}, Lqm4;->z(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 282
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 283
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto :goto_6

    .line 284
    :pswitch_63
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 285
    invoke-static {v8}, Lqm4;->n(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 286
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 287
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto :goto_6

    .line 288
    :pswitch_64
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 289
    invoke-static {v8}, Lqm4;->d(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 290
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 291
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto :goto_6

    .line 292
    :pswitch_65
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 293
    invoke-static {v8}, Lqm4;->I(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 294
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 295
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    goto :goto_6

    .line 296
    :pswitch_66
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 297
    invoke-static {v8}, Lqm4;->L(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_c

    .line 298
    invoke-static {v10}, Lck4;->C(I)I

    move-result v9

    .line 299
    invoke-static {v8}, Lck4;->K(I)I

    move-result v10

    :goto_6
    add-int/2addr v10, v9

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    move v5, v10

    goto/16 :goto_8

    .line 300
    :pswitch_67
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 301
    invoke-static {v10, v8}, Lqm4;->s(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 302
    :pswitch_68
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 303
    invoke-static {v10, v8}, Lqm4;->E(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 304
    :pswitch_69
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 305
    invoke-static {v10, v8}, Lqm4;->K(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 306
    :pswitch_6a
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 307
    invoke-static {v10, v8}, Lqm4;->H(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 308
    :pswitch_6b
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 309
    invoke-static {v10, v8}, Lqm4;->v(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 310
    :pswitch_6c
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 311
    invoke-static {v10, v8}, Lqm4;->B(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 312
    :pswitch_6d
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 313
    invoke-static {v10, v8}, Lqm4;->l(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 314
    :pswitch_6e
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    .line 315
    invoke-static {v10, v8, v9}, Lqm4;->c(ILjava/util/List;Lom4;)I

    move-result v8

    goto/16 :goto_7

    .line 316
    :pswitch_6f
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10, v8}, Lqm4;->b(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 317
    :pswitch_70
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 318
    sget-object v9, Lqm4;->a:Ljava/lang/Class;

    .line 319
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    goto/16 :goto_7

    .line 320
    :cond_a
    invoke-static {v10}, Lck4;->u(I)I

    move-result v9

    mul-int v8, v8, v9

    goto/16 :goto_7

    .line 321
    :pswitch_71
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 322
    invoke-static {v10, v8}, Lqm4;->H(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 323
    :pswitch_72
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 324
    invoke-static {v10, v8}, Lqm4;->K(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 325
    :pswitch_73
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 326
    invoke-static {v10, v8}, Lqm4;->y(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 327
    :pswitch_74
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 328
    invoke-static {v10, v8}, Lqm4;->r(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 329
    :pswitch_75
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 330
    invoke-static {v10, v8}, Lqm4;->k(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 331
    :pswitch_76
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 332
    invoke-static {v10, v8}, Lqm4;->H(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    .line 333
    :pswitch_77
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 334
    invoke-static {v10, v8}, Lqm4;->K(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_7

    :pswitch_78
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 335
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lam4;

    .line 336
    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    .line 337
    invoke-static {v10, v8, v9}, Lck4;->w(ILam4;Lom4;)I

    move-result v8

    goto/16 :goto_7

    :pswitch_79
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 338
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->I(IJ)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7a
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 339
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->O(II)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7b
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 340
    invoke-static {v10}, Lck4;->P(I)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7c
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 341
    invoke-static {v10}, Lck4;->S(I)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7d
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 342
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->T(II)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7e
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 343
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->L(II)I

    move-result v8

    goto/16 :goto_7

    :pswitch_7f
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 344
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvj4;

    .line 345
    invoke-static {v10, v8}, Lck4;->v(ILvj4;)I

    move-result v8

    goto/16 :goto_7

    :pswitch_80
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 346
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 347
    invoke-virtual {p0, v4}, Ldm4;->i(I)Lom4;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lqm4;->a(ILjava/lang/Object;Lom4;)I

    move-result v8

    goto/16 :goto_7

    :pswitch_81
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 348
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 349
    instance-of v9, v8, Lvj4;

    if-eqz v9, :cond_b

    .line 350
    check-cast v8, Lvj4;

    invoke-static {v10, v8}, Lck4;->v(ILvj4;)I

    move-result v8

    goto :goto_7

    .line 351
    :cond_b
    check-cast v8, Ljava/lang/String;

    invoke-static {v10, v8}, Lck4;->n(ILjava/lang/String;)I

    move-result v8

    goto :goto_7

    :pswitch_82
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 352
    invoke-static {v10}, Lck4;->u(I)I

    move-result v8

    goto :goto_7

    :pswitch_83
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 353
    invoke-static {v10}, Lck4;->R(I)I

    move-result v8

    goto :goto_7

    :pswitch_84
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 354
    invoke-static {v10}, Lck4;->M(I)I

    move-result v8

    goto :goto_7

    :pswitch_85
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 355
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v10, v8}, Lck4;->H(II)I

    move-result v8

    goto :goto_7

    :pswitch_86
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->D(IJ)I

    move-result v8

    goto :goto_7

    :pswitch_87
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 357
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v10, v8, v9}, Lck4;->A(IJ)I

    move-result v8

    goto :goto_7

    :pswitch_88
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 358
    invoke-static {v10}, Lck4;->m(I)I

    move-result v8

    goto :goto_7

    :pswitch_89
    and-int v8, v7, v9

    if-eqz v8, :cond_c

    .line 359
    invoke-static {v10}, Lck4;->t(I)I

    move-result v8

    :goto_7
    add-int/2addr v5, v8

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_4

    .line 360
    :cond_d
    iget-object v0, p0, Ldm4;->k:Lcn4;

    .line 361
    invoke-virtual {v0, p1}, Lcn4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcn4;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v5

    .line 363
    iget-boolean v1, p0, Ldm4;->d:Z

    if-eqz v1, :cond_10

    .line 364
    iget-object v1, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v1, p1}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object p1

    const/4 v1, 0x0

    .line 365
    :goto_9
    iget-object v3, p1, Lkk4;->a:Lpm4;

    invoke-virtual {v3}, Lpm4;->e()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 366
    iget-object v3, p1, Lkk4;->a:Lpm4;

    invoke-virtual {v3, v2}, Lpm4;->d(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 367
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmk4;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lkk4;->a(Lmk4;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 368
    :cond_e
    iget-object p1, p1, Lkk4;->a:Lpm4;

    invoke-virtual {p1}, Lpm4;->g()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmk4;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkk4;->a(Lmk4;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_a

    :cond_f
    add-int/2addr v0, v1

    :cond_10
    return v0

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Lvn4;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lvn4;",
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
    iget-boolean v0, p0, Ldm4;->e:Z

    if-eqz v0, :cond_7

    .line 3
    iget-boolean v0, p0, Ldm4;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v0, p1}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object v0

    .line 5
    iget-object v2, v0, Lkk4;->a:Lpm4;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lkk4;->l()Ljava/util/Iterator;

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
    iget-object v3, p0, Ldm4;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 9
    invoke-virtual {p0, v5}, Ldm4;->z(I)I

    move-result v6

    .line 10
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    .line 11
    iget-object v8, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v8, v2}, Lfk4;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 12
    iget-object v8, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v8, p2, v2}, Lfk4;->c(Lvn4;Ljava/util/Map$Entry;)V

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

    :cond_2
    const/high16 v8, 0xff00000

    and-int/2addr v8, v6

    ushr-int/lit8 v8, v8, 0x14

    const/4 v9, 0x1

    const v10, 0xfffff

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 14
    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 15
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    .line 17
    move-object v9, p2

    check-cast v9, Lek4;

    invoke-virtual {v9, v7, v6, v8}, Lek4;->e(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_3

    .line 18
    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 19
    invoke-static {p1, v8, v9}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    invoke-virtual {v6, v7, v8, v9}, Lek4;->f(IJ)V

    goto/16 :goto_3

    .line 20
    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 21
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    invoke-virtual {v8, v7, v6}, Lek4;->g(II)V

    goto/16 :goto_3

    .line 22
    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 23
    invoke-static {p1, v8, v9}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    .line 24
    iget-object v6, v6, Lek4;->a:Lck4;

    .line 25
    invoke-virtual {v6, v7, v8, v9}, Lck4;->y(IJ)V

    goto/16 :goto_3

    .line 26
    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 27
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 28
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 29
    invoke-virtual {v8, v7, v6}, Lck4;->F(II)V

    goto/16 :goto_3

    .line 30
    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 31
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 32
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 33
    invoke-virtual {v8, v7, v6}, Lck4;->r(II)V

    goto/16 :goto_3

    .line 34
    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 35
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 36
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->x(II)V

    goto/16 :goto_3

    .line 37
    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 38
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvj4;

    .line 39
    move-object v8, p2

    check-cast v8, Lek4;

    .line 40
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->g(ILvj4;)V

    goto/16 :goto_3

    .line 41
    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 42
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 43
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lek4;

    invoke-virtual {v9, v7, v6, v8}, Lek4;->d(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_3

    .line 44
    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 45
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldm4;->l(ILjava/lang/Object;Lvn4;)V

    goto/16 :goto_3

    .line 46
    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 47
    invoke-static {p1, v8, v9}, Ldm4;->E(Ljava/lang/Object;J)Z

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 48
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->k(IZ)V

    goto/16 :goto_3

    .line 49
    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 50
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 51
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->F(II)V

    goto/16 :goto_3

    .line 52
    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 53
    invoke-static {p1, v8, v9}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    .line 54
    iget-object v6, v6, Lek4;->a:Lck4;

    invoke-virtual {v6, v7, v8, v9}, Lck4;->y(IJ)V

    goto/16 :goto_3

    .line 55
    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 56
    invoke-static {p1, v8, v9}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    .line 57
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->r(II)V

    goto/16 :goto_3

    .line 58
    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 59
    invoke-static {p1, v8, v9}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    .line 60
    iget-object v6, v6, Lek4;->a:Lck4;

    invoke-virtual {v6, v7, v8, v9}, Lck4;->f(IJ)V

    goto/16 :goto_3

    .line 61
    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 62
    invoke-static {p1, v8, v9}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    .line 63
    iget-object v6, v6, Lek4;->a:Lck4;

    .line 64
    invoke-virtual {v6, v7, v8, v9}, Lck4;->f(IJ)V

    goto/16 :goto_3

    .line 65
    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 66
    invoke-static {p1, v8, v9}, Ldm4;->y(Ljava/lang/Object;J)F

    move-result v6

    move-object v8, p2

    check-cast v8, Lek4;

    invoke-virtual {v8, v7, v6}, Lek4;->b(IF)V

    goto/16 :goto_3

    .line 67
    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 68
    invoke-static {p1, v8, v9}, Ldm4;->s(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lek4;

    invoke-virtual {v6, v7, v8, v9}, Lek4;->a(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 69
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Ldm4;->n(Lvn4;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 70
    :pswitch_13
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 71
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 72
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    .line 73
    invoke-static {v7, v6, p2, v8}, Lqm4;->p(ILjava/util/List;Lvn4;Lom4;)V

    goto/16 :goto_3

    .line 74
    :pswitch_14
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 75
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 76
    invoke-static {v7, v6, p2, v9}, Lqm4;->A(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 77
    :pswitch_15
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 78
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 79
    invoke-static {v7, v6, p2, v9}, Lqm4;->N(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 80
    :pswitch_16
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 81
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 82
    invoke-static {v7, v6, p2, v9}, Lqm4;->G(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 83
    :pswitch_17
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 84
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 85
    invoke-static {v7, v6, p2, v9}, Lqm4;->P(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 86
    :pswitch_18
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 87
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 88
    invoke-static {v7, v6, p2, v9}, Lqm4;->Q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_19
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 90
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    invoke-static {v7, v6, p2, v9}, Lqm4;->M(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 92
    :pswitch_1a
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 93
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 94
    invoke-static {v7, v6, p2, v9}, Lqm4;->R(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 95
    :pswitch_1b
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 96
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 97
    invoke-static {v7, v6, p2, v9}, Lqm4;->O(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 98
    :pswitch_1c
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 99
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 100
    invoke-static {v7, v6, p2, v9}, Lqm4;->D(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 101
    :pswitch_1d
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 102
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 103
    invoke-static {v7, v6, p2, v9}, Lqm4;->J(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_1e
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 105
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 106
    invoke-static {v7, v6, p2, v9}, Lqm4;->x(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 107
    :pswitch_1f
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 108
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 109
    invoke-static {v7, v6, p2, v9}, Lqm4;->u(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 110
    :pswitch_20
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 111
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 112
    invoke-static {v7, v6, p2, v9}, Lqm4;->q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 113
    :pswitch_21
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 114
    invoke-static {p1, v10, v11}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 115
    invoke-static {v7, v6, p2, v9}, Lqm4;->h(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 116
    :pswitch_22
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 117
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 118
    invoke-static {v7, v6, p2, v4}, Lqm4;->A(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 119
    :pswitch_23
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 120
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 121
    invoke-static {v7, v6, p2, v4}, Lqm4;->N(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 122
    :pswitch_24
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 123
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 124
    invoke-static {v7, v6, p2, v4}, Lqm4;->G(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 125
    :pswitch_25
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 126
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 127
    invoke-static {v7, v6, p2, v4}, Lqm4;->P(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 128
    :pswitch_26
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 129
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 130
    invoke-static {v7, v6, p2, v4}, Lqm4;->Q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 131
    :pswitch_27
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 132
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 133
    invoke-static {v7, v6, p2, v4}, Lqm4;->M(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 134
    :pswitch_28
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 135
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 136
    invoke-static {v7, v6, p2}, Lqm4;->o(ILjava/util/List;Lvn4;)V

    goto/16 :goto_3

    .line 137
    :pswitch_29
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 138
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 139
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    .line 140
    invoke-static {v7, v6, p2, v8}, Lqm4;->g(ILjava/util/List;Lvn4;Lom4;)V

    goto/16 :goto_3

    .line 141
    :pswitch_2a
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 142
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 143
    invoke-static {v7, v6, p2}, Lqm4;->f(ILjava/util/List;Lvn4;)V

    goto/16 :goto_3

    .line 144
    :pswitch_2b
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 145
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 146
    invoke-static {v7, v6, p2, v4}, Lqm4;->R(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 147
    :pswitch_2c
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 148
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 149
    invoke-static {v7, v6, p2, v4}, Lqm4;->O(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 150
    :pswitch_2d
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 151
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 152
    invoke-static {v7, v6, p2, v4}, Lqm4;->D(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 153
    :pswitch_2e
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 154
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 155
    invoke-static {v7, v6, p2, v4}, Lqm4;->J(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 156
    :pswitch_2f
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 157
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 158
    invoke-static {v7, v6, p2, v4}, Lqm4;->x(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 159
    :pswitch_30
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 160
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 161
    invoke-static {v7, v6, p2, v4}, Lqm4;->u(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 162
    :pswitch_31
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 163
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 164
    invoke-static {v7, v6, p2, v4}, Lqm4;->q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 165
    :pswitch_32
    iget-object v7, p0, Ldm4;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 166
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 167
    invoke-static {v7, v6, p2, v4}, Lqm4;->h(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 168
    :pswitch_33
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 169
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 170
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    .line 171
    move-object v9, p2

    check-cast v9, Lek4;

    invoke-virtual {v9, v7, v6, v8}, Lek4;->e(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_3

    .line 172
    :pswitch_34
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 173
    invoke-static {p1, v8, v9}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 174
    move-object v6, p2

    check-cast v6, Lek4;

    invoke-virtual {v6, v7, v8, v9}, Lek4;->f(IJ)V

    goto/16 :goto_3

    .line 175
    :pswitch_35
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 176
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 177
    move-object v8, p2

    check-cast v8, Lek4;

    invoke-virtual {v8, v7, v6}, Lek4;->g(II)V

    goto/16 :goto_3

    .line 178
    :pswitch_36
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 179
    invoke-static {p1, v8, v9}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 180
    move-object v6, p2

    check-cast v6, Lek4;

    .line 181
    iget-object v6, v6, Lek4;->a:Lck4;

    .line 182
    invoke-virtual {v6, v7, v8, v9}, Lck4;->y(IJ)V

    goto/16 :goto_3

    .line 183
    :pswitch_37
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 184
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 185
    move-object v8, p2

    check-cast v8, Lek4;

    .line 186
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 187
    invoke-virtual {v8, v7, v6}, Lck4;->F(II)V

    goto/16 :goto_3

    .line 188
    :pswitch_38
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 189
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 190
    move-object v8, p2

    check-cast v8, Lek4;

    .line 191
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 192
    invoke-virtual {v8, v7, v6}, Lck4;->r(II)V

    goto/16 :goto_3

    .line 193
    :pswitch_39
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 194
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 195
    move-object v8, p2

    check-cast v8, Lek4;

    .line 196
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->x(II)V

    goto/16 :goto_3

    .line 197
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 198
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvj4;

    .line 199
    move-object v8, p2

    check-cast v8, Lek4;

    .line 200
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->g(ILvj4;)V

    goto/16 :goto_3

    .line 201
    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 202
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 203
    invoke-virtual {p0, v5}, Ldm4;->i(I)Lom4;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lek4;

    invoke-virtual {v9, v7, v6, v8}, Lek4;->d(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_3

    .line 204
    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 205
    invoke-static {p1, v8, v9}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldm4;->l(ILjava/lang/Object;Lvn4;)V

    goto/16 :goto_3

    .line 206
    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 207
    invoke-static {p1, v8, v9}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v6

    .line 208
    move-object v8, p2

    check-cast v8, Lek4;

    .line 209
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->k(IZ)V

    goto/16 :goto_3

    .line 210
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 211
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 212
    move-object v8, p2

    check-cast v8, Lek4;

    .line 213
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->F(II)V

    goto/16 :goto_3

    .line 214
    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 215
    invoke-static {p1, v8, v9}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 216
    move-object v6, p2

    check-cast v6, Lek4;

    .line 217
    iget-object v6, v6, Lek4;->a:Lck4;

    invoke-virtual {v6, v7, v8, v9}, Lck4;->y(IJ)V

    goto :goto_3

    .line 218
    :pswitch_40
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 219
    invoke-static {p1, v8, v9}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v6

    .line 220
    move-object v8, p2

    check-cast v8, Lek4;

    .line 221
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v7, v6}, Lck4;->r(II)V

    goto :goto_3

    .line 222
    :pswitch_41
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 223
    invoke-static {p1, v8, v9}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 224
    move-object v6, p2

    check-cast v6, Lek4;

    .line 225
    iget-object v6, v6, Lek4;->a:Lck4;

    invoke-virtual {v6, v7, v8, v9}, Lck4;->f(IJ)V

    goto :goto_3

    .line 226
    :pswitch_42
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 227
    invoke-static {p1, v8, v9}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 228
    move-object v6, p2

    check-cast v6, Lek4;

    .line 229
    iget-object v6, v6, Lek4;->a:Lck4;

    .line 230
    invoke-virtual {v6, v7, v8, v9}, Lck4;->f(IJ)V

    goto :goto_3

    .line 231
    :pswitch_43
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 232
    invoke-static {p1, v8, v9}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v6

    .line 233
    move-object v8, p2

    check-cast v8, Lek4;

    invoke-virtual {v8, v7, v6}, Lek4;->b(IF)V

    goto :goto_3

    .line 234
    :pswitch_44
    invoke-virtual {p0, p1, v5}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 235
    invoke-static {p1, v8, v9}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 236
    move-object v6, p2

    check-cast v6, Lek4;

    invoke-virtual {v6, v7, v8, v9}, Lek4;->a(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 237
    iget-object v3, p0, Ldm4;->l:Lfk4;

    invoke-virtual {v3, p2, v2}, Lfk4;->c(Lvn4;Ljava/util/Map$Entry;)V

    .line 238
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

    .line 239
    :cond_6
    iget-object v0, p0, Ldm4;->k:Lcn4;

    invoke-static {v0, p1, p2}, Ldm4;->m(Lcn4;Ljava/lang/Object;Lvn4;)V

    return-void

    .line 240
    :cond_7
    invoke-virtual {p0, p1, p2}, Ldm4;->w(Ljava/lang/Object;Lvn4;)V

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

.method public final i(I)Lom4;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Ldm4;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lom4;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-object v1, Lkm4;->c:Lkm4;

    add-int/lit8 v2, p1, 0x1

    .line 4
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lkm4;->a(Ljava/lang/Class;)Lom4;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ldm4;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final n(Lvn4;ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvn4;",
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

    if-eqz p3, :cond_1

    .line 1
    iget-object v0, p0, Ldm4;->m:Ltl4;

    .line 2
    iget-object v1, p0, Ldm4;->b:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x3

    shl-int/lit8 p4, p4, 0x1

    aget-object p4, v1, p4

    .line 3
    invoke-interface {v0, p4}, Ltl4;->b(Ljava/lang/Object;)Lrl4;

    iget-object p4, p0, Ldm4;->m:Ltl4;

    .line 4
    invoke-interface {p4, p3}, Ltl4;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 5
    check-cast p1, Lek4;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 8
    iget-object p1, p1, Lek4;->a:Lck4;

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p4}, Lck4;->e(II)V

    .line 9
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-virtual {p0, p2, p3}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {v2, p2}, Lrk4;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1, p3}, Ldm4;->u(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-static {p1, v0, v1, p2}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p1, p3}, Ldm4;->u(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final p(Ljava/lang/Object;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 v1, p2, 0x2

    aget v1, v0, v1

    const v2, 0xfffff

    and-int v3, v1, v2

    int-to-long v3, v3

    const-wide/32 v5, 0xfffff

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v5

    if-nez v9, :cond_14

    add-int/2addr p2, v8

    .line 2
    aget p2, v0, p2

    and-int v0, p2, v2

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-static {p1, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v8

    :cond_0
    return v7

    .line 5
    :pswitch_1
    invoke-static {p1, v0, v1}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v8

    :cond_1
    return v7

    .line 6
    :pswitch_2
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v8

    :cond_2
    return v7

    .line 7
    :pswitch_3
    invoke-static {p1, v0, v1}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v8

    :cond_3
    return v7

    .line 8
    :pswitch_4
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v8

    :cond_4
    return v7

    .line 9
    :pswitch_5
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v8

    :cond_5
    return v7

    .line 10
    :pswitch_6
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v8

    :cond_6
    return v7

    .line 11
    :pswitch_7
    sget-object p2, Lvj4;->f:Lvj4;

    invoke-static {p1, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lvj4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v8

    :cond_7
    return v7

    .line 12
    :pswitch_8
    invoke-static {p1, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v8

    :cond_8
    return v7

    .line 13
    :pswitch_9
    invoke-static {p1, v0, v1}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 14
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v8

    :cond_9
    return v7

    .line 16
    :cond_a
    instance-of p2, p1, Lvj4;

    if-eqz p2, :cond_c

    .line 17
    sget-object p2, Lvj4;->f:Lvj4;

    invoke-virtual {p2, p1}, Lvj4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v8

    :cond_b
    return v7

    .line 18
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :pswitch_a
    invoke-static {p1, v0, v1}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 20
    :pswitch_b
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v8

    :cond_d
    return v7

    .line 21
    :pswitch_c
    invoke-static {p1, v0, v1}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v8

    :cond_e
    return v7

    .line 22
    :pswitch_d
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v8

    :cond_f
    return v7

    .line 23
    :pswitch_e
    invoke-static {p1, v0, v1}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v8

    :cond_10
    return v7

    .line 24
    :pswitch_f
    invoke-static {p1, v0, v1}, Lin4;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v8

    :cond_11
    return v7

    .line 25
    :pswitch_10
    invoke-static {p1, v0, v1}, Lin4;->m(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v8

    :cond_12
    return v7

    .line 26
    :pswitch_11
    invoke-static {p1, v0, v1}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v8

    :cond_13
    return v7

    :cond_14
    ushr-int/lit8 p2, v1, 0x14

    shl-int p2, v8, p2

    .line 27
    invoke-static {p1, v3, v4}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v8

    :cond_15
    return v7

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

.method public final q(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Ldm4;->p(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final t(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldm4;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final u(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

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
    invoke-static {p1, v0, v1}, Lin4;->b(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3
    sget-object v2, Lin4;->f:Lin4$c;

    invoke-virtual {v2, p1, v0, v1, p2}, Lin4$c;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final v(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    sget-object p3, Lin4;->f:Lin4$c;

    invoke-virtual {p3, p1, v0, v1, p2}, Lin4$c;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Lvn4;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lvn4;",
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
    iget-boolean v3, v0, Ldm4;->d:Z

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Ldm4;->l:Lfk4;

    invoke-virtual {v3, v1}, Lfk4;->b(Ljava/lang/Object;)Lkk4;

    move-result-object v3

    .line 3
    iget-object v5, v3, Lkk4;->a:Lpm4;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lkk4;->l()Ljava/util/Iterator;

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
    iget-object v6, v0, Ldm4;->a:[I

    array-length v6, v6

    .line 7
    sget-object v7, Ldm4;->o:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 8
    invoke-virtual {v0, v10}, Ldm4;->z(I)I

    move-result v13

    .line 9
    iget-object v14, v0, Ldm4;->a:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 10
    iget-boolean v9, v0, Ldm4;->e:Z

    if-nez v9, :cond_2

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    .line 11
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    .line 12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 13
    iget-object v9, v0, Ldm4;->l:Lfk4;

    invoke-virtual {v9, v5}, Lfk4;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_4

    .line 14
    iget-object v9, v0, Ldm4;->l:Lfk4;

    invoke-virtual {v9, v2, v5}, Lfk4;->c(Lvn4;Ljava/util/Map$Entry;)V

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

    :cond_4
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 16
    :pswitch_0
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v8

    .line 18
    move-object v13, v2

    check-cast v13, Lek4;

    invoke-virtual {v13, v15, v4, v8}, Lek4;->e(ILjava/lang/Object;Lom4;)V

    goto :goto_3

    .line 19
    :pswitch_1
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-static {v1, v13, v14}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    invoke-virtual {v4, v15, v13, v14}, Lek4;->f(IJ)V

    goto :goto_3

    .line 21
    :pswitch_2
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    invoke-virtual {v8, v15, v4}, Lek4;->g(II)V

    goto :goto_3

    .line 23
    :pswitch_3
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    invoke-static {v1, v13, v14}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    .line 25
    iget-object v4, v4, Lek4;->a:Lck4;

    .line 26
    invoke-virtual {v4, v15, v13, v14}, Lck4;->y(IJ)V

    goto :goto_3

    .line 27
    :pswitch_4
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 28
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 29
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 30
    invoke-virtual {v8, v15, v4}, Lck4;->F(II)V

    goto :goto_3

    .line 31
    :pswitch_5
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 33
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 34
    invoke-virtual {v8, v15, v4}, Lck4;->r(II)V

    goto :goto_3

    .line 35
    :pswitch_6
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 37
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v4}, Lck4;->x(II)V

    goto/16 :goto_3

    .line 38
    :pswitch_7
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 39
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvj4;

    move-object v8, v2

    check-cast v8, Lek4;

    .line 40
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v4}, Lck4;->g(ILvj4;)V

    goto/16 :goto_3

    .line 41
    :pswitch_8
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 43
    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v8

    move-object v13, v2

    check-cast v13, Lek4;

    invoke-virtual {v13, v15, v4, v8}, Lek4;->d(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_3

    .line 44
    :pswitch_9
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 45
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Ldm4;->l(ILjava/lang/Object;Lvn4;)V

    goto/16 :goto_3

    .line 46
    :pswitch_a
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-static {v1, v13, v14}, Ldm4;->E(Ljava/lang/Object;J)Z

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 48
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v4}, Lck4;->k(IZ)V

    goto/16 :goto_3

    .line 49
    :pswitch_b
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 51
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v4}, Lck4;->F(II)V

    goto/16 :goto_3

    .line 52
    :pswitch_c
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-static {v1, v13, v14}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    .line 54
    iget-object v4, v4, Lek4;->a:Lck4;

    invoke-virtual {v4, v15, v13, v14}, Lck4;->y(IJ)V

    goto/16 :goto_3

    .line 55
    :pswitch_d
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    invoke-static {v1, v13, v14}, Ldm4;->C(Ljava/lang/Object;J)I

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    .line 57
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v4}, Lck4;->r(II)V

    goto/16 :goto_3

    .line 58
    :pswitch_e
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    invoke-static {v1, v13, v14}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    .line 60
    iget-object v4, v4, Lek4;->a:Lck4;

    invoke-virtual {v4, v15, v13, v14}, Lck4;->f(IJ)V

    goto/16 :goto_3

    .line 61
    :pswitch_f
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 62
    invoke-static {v1, v13, v14}, Ldm4;->D(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    .line 63
    iget-object v4, v4, Lek4;->a:Lck4;

    .line 64
    invoke-virtual {v4, v15, v13, v14}, Lck4;->f(IJ)V

    goto/16 :goto_3

    .line 65
    :pswitch_10
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-static {v1, v13, v14}, Ldm4;->y(Ljava/lang/Object;J)F

    move-result v4

    move-object v8, v2

    check-cast v8, Lek4;

    invoke-virtual {v8, v15, v4}, Lek4;->b(IF)V

    goto/16 :goto_3

    .line 67
    :pswitch_11
    invoke-virtual {v0, v1, v15, v10}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 68
    invoke-static {v1, v13, v14}, Ldm4;->s(Ljava/lang/Object;J)D

    move-result-wide v13

    move-object v4, v2

    check-cast v4, Lek4;

    invoke-virtual {v4, v15, v13, v14}, Lek4;->a(ID)V

    goto/16 :goto_3

    .line 69
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v15, v4, v10}, Ldm4;->n(Lvn4;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 70
    :pswitch_13
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 71
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 72
    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v13

    .line 73
    invoke-static {v4, v8, v2, v13}, Lqm4;->p(ILjava/util/List;Lvn4;Lom4;)V

    goto/16 :goto_3

    .line 74
    :pswitch_14
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 75
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    .line 76
    invoke-static {v4, v8, v2, v15}, Lqm4;->A(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    .line 77
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 78
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    invoke-static {v4, v8, v2, v15}, Lqm4;->N(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    .line 80
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 81
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-static {v4, v8, v2, v15}, Lqm4;->G(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    .line 83
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 84
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 85
    invoke-static {v4, v8, v2, v15}, Lqm4;->P(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    .line 86
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 87
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 88
    invoke-static {v4, v8, v2, v15}, Lqm4;->Q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    .line 89
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 90
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 91
    invoke-static {v4, v8, v2, v15}, Lqm4;->M(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    .line 92
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 93
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 94
    invoke-static {v4, v8, v2, v15}, Lqm4;->R(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    .line 95
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 96
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 97
    invoke-static {v4, v8, v2, v15}, Lqm4;->O(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    .line 98
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 99
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 100
    invoke-static {v4, v8, v2, v15}, Lqm4;->D(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    .line 101
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 102
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 103
    invoke-static {v4, v8, v2, v15}, Lqm4;->J(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    .line 104
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 105
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 106
    invoke-static {v4, v8, v2, v15}, Lqm4;->x(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    .line 107
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 108
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    invoke-static {v4, v8, v2, v15}, Lqm4;->u(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    .line 110
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 111
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 112
    invoke-static {v4, v8, v2, v15}, Lqm4;->q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    .line 113
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 114
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 115
    invoke-static {v4, v8, v2, v15}, Lqm4;->h(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 116
    :pswitch_22
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 117
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 118
    invoke-static {v4, v8, v2, v15}, Lqm4;->A(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_23
    const/4 v15, 0x0

    .line 119
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 120
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 121
    invoke-static {v4, v8, v2, v15}, Lqm4;->N(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_24
    const/4 v15, 0x0

    .line 122
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 123
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 124
    invoke-static {v4, v8, v2, v15}, Lqm4;->G(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_25
    const/4 v15, 0x0

    .line 125
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 126
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 127
    invoke-static {v4, v8, v2, v15}, Lqm4;->P(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_26
    const/4 v15, 0x0

    .line 128
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 129
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 130
    invoke-static {v4, v8, v2, v15}, Lqm4;->Q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_27
    const/4 v15, 0x0

    .line 131
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 132
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 133
    invoke-static {v4, v8, v2, v15}, Lqm4;->M(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    .line 134
    :pswitch_28
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 135
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 136
    invoke-static {v4, v8, v2}, Lqm4;->o(ILjava/util/List;Lvn4;)V

    goto/16 :goto_3

    .line 137
    :pswitch_29
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 138
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 139
    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v13

    .line 140
    invoke-static {v4, v8, v2, v13}, Lqm4;->g(ILjava/util/List;Lvn4;Lom4;)V

    goto/16 :goto_3

    .line 141
    :pswitch_2a
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 142
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 143
    invoke-static {v4, v8, v2}, Lqm4;->f(ILjava/util/List;Lvn4;)V

    goto/16 :goto_3

    .line 144
    :pswitch_2b
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 145
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 146
    invoke-static {v4, v8, v2, v15}, Lqm4;->R(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v15, 0x0

    .line 147
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 148
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 149
    invoke-static {v4, v8, v2, v15}, Lqm4;->O(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v15, 0x0

    .line 150
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 151
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 152
    invoke-static {v4, v8, v2, v15}, Lqm4;->D(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v15, 0x0

    .line 153
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 154
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 155
    invoke-static {v4, v8, v2, v15}, Lqm4;->J(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v15, 0x0

    .line 156
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 157
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 158
    invoke-static {v4, v8, v2, v15}, Lqm4;->x(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v15, 0x0

    .line 159
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 160
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 161
    invoke-static {v4, v8, v2, v15}, Lqm4;->u(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v15, 0x0

    .line 162
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 163
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 164
    invoke-static {v4, v8, v2, v15}, Lqm4;->q(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v15, 0x0

    .line 165
    iget-object v4, v0, Ldm4;->a:[I

    aget v4, v4, v10

    .line 166
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 167
    invoke-static {v4, v8, v2, v15}, Lqm4;->h(ILjava/util/List;Lvn4;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 168
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v13

    .line 169
    move-object v14, v2

    check-cast v14, Lek4;

    invoke-virtual {v14, v15, v8, v13}, Lek4;->e(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 170
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v8, v2

    check-cast v8, Lek4;

    invoke-virtual {v8, v15, v13, v14}, Lek4;->f(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 171
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    invoke-virtual {v13, v15, v8}, Lek4;->g(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 172
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v8, v2

    check-cast v8, Lek4;

    .line 173
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 174
    invoke-virtual {v8, v15, v13, v14}, Lck4;->y(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 175
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    .line 176
    iget-object v13, v13, Lek4;->a:Lck4;

    .line 177
    invoke-virtual {v13, v15, v8}, Lck4;->F(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 178
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    .line 179
    iget-object v13, v13, Lek4;->a:Lck4;

    .line 180
    invoke-virtual {v13, v15, v8}, Lck4;->r(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 181
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    .line 182
    iget-object v13, v13, Lek4;->a:Lck4;

    invoke-virtual {v13, v15, v8}, Lck4;->x(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 183
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvj4;

    move-object v13, v2

    check-cast v13, Lek4;

    .line 184
    iget-object v13, v13, Lek4;->a:Lck4;

    invoke-virtual {v13, v15, v8}, Lck4;->g(ILvj4;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 185
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 186
    invoke-virtual {v0, v10}, Ldm4;->i(I)Lom4;

    move-result-object v13

    move-object v14, v2

    check-cast v14, Lek4;

    invoke-virtual {v14, v15, v8, v13}, Lek4;->d(ILjava/lang/Object;Lom4;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 187
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Ldm4;->l(ILjava/lang/Object;Lvn4;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 188
    invoke-static {v1, v13, v14}, Lin4;->l(Ljava/lang/Object;J)Z

    move-result v8

    .line 189
    move-object v13, v2

    check-cast v13, Lek4;

    .line 190
    iget-object v13, v13, Lek4;->a:Lck4;

    invoke-virtual {v13, v15, v8}, Lck4;->k(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 191
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    .line 192
    iget-object v13, v13, Lek4;->a:Lck4;

    invoke-virtual {v13, v15, v8}, Lck4;->F(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 193
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v8, v2

    check-cast v8, Lek4;

    .line 194
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v13, v14}, Lck4;->y(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 195
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move-object v13, v2

    check-cast v13, Lek4;

    .line 196
    iget-object v13, v13, Lek4;->a:Lck4;

    invoke-virtual {v13, v15, v8}, Lck4;->r(II)V

    goto :goto_4

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 197
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v8, v2

    check-cast v8, Lek4;

    .line 198
    iget-object v8, v8, Lek4;->a:Lck4;

    invoke-virtual {v8, v15, v13, v14}, Lck4;->f(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 199
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    move-object v8, v2

    check-cast v8, Lek4;

    .line 200
    iget-object v8, v8, Lek4;->a:Lck4;

    .line 201
    invoke-virtual {v8, v15, v13, v14}, Lck4;->f(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 202
    invoke-static {v1, v13, v14}, Lin4;->m(Ljava/lang/Object;J)F

    move-result v8

    .line 203
    move-object v13, v2

    check-cast v13, Lek4;

    invoke-virtual {v13, v15, v8}, Lek4;->b(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 204
    invoke-static {v1, v13, v14}, Lin4;->p(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 205
    move-object v8, v2

    check-cast v8, Lek4;

    invoke-virtual {v8, v15, v13, v14}, Lek4;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 206
    iget-object v4, v0, Ldm4;->l:Lfk4;

    invoke-virtual {v4, v2, v5}, Lfk4;->c(Lvn4;Ljava/util/Map$Entry;)V

    .line 207
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

    .line 208
    :cond_9
    iget-object v3, v0, Ldm4;->k:Lcn4;

    invoke-static {v3, v1, v2}, Ldm4;->m(Lcn4;Ljava/lang/Object;Lvn4;)V

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

.method public final x(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    .line 2
    aget v0, v0, p3

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-virtual {p0, p2, v0, p3}, Ldm4;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-static {p2, v1, v2}, Lin4;->q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v3, p2}, Lrk4;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p1, v1, v2, p2}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, v0, p3}, Ldm4;->v(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1, v1, v2, p2}, Lin4;->e(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, v0, p3}, Ldm4;->v(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public final z(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldm4;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method
