.class public final Lc68$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final e:Lh68;

.field public final f:Lh68;


# direct methods
.method public constructor <init>(Lh68;Lh68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc68$i;->e:Lh68;

    .line 3
    iput-object p2, p0, Lc68$i;->f:Lh68;

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Le68;->a:Lu68;

    .line 2
    invoke-static {v2}, Lj58;->y(Lu68;)Lj58;

    move-result-object v2

    .line 3
    iget-object v3, v1, Le68;->b:Ljava/util/Locale;

    .line 4
    new-instance v4, Lk68;

    .line 5
    iget-object v4, v0, Lc68$i;->e:Lh68;

    iget-object v5, v0, Lc68$i;->f:Lh68;

    if-nez v4, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Date and Time style must not both be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lj58;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v6, Lk68;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Unable to convert DateFormat to DateTimeFormatter"

    const-string v9, ""

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    check-cast v7, Lb68;

    goto/16 :goto_e

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 13
    invoke-static {v4, v5, v3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 15
    invoke-static {v4, v3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 17
    invoke-static {v4, v3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    .line 18
    :goto_1
    instance-of v5, v4, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_5b

    .line 19
    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 20
    new-instance v5, Lc68;

    invoke-direct {v5}, Lc68;-><init>()V

    const-string v6, "pattern"

    .line 21
    invoke-static {v4, v6}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    sget-object v6, Lm68;->g:Lm68;

    sget-object v7, Lm68;->e:Lm68;

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_59

    .line 23
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x41

    const/16 v11, 0x5a

    const/16 v12, 0x61

    const/16 v13, 0x7a

    if-lt v9, v10, :cond_6

    if-le v9, v11, :cond_7

    :cond_6
    if-lt v9, v12, :cond_4f

    if-gt v9, v13, :cond_4f

    :cond_7
    add-int/lit8 v13, v8, 0x1

    .line 24
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_8

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v9, :cond_8

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    sub-int v8, v13, v8

    const/16 v14, 0x70

    const/4 v15, -0x1

    if-ne v9, v14, :cond_f

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 26
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_9

    if-le v9, v11, :cond_a

    :cond_9
    if-lt v9, v12, :cond_c

    const/16 v10, 0x7a

    if-gt v9, v10, :cond_c

    :cond_a
    add-int/lit8 v10, v13, 0x1

    .line 27
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    sub-int v11, v10, v13

    move v13, v10

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    move v11, v8

    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_e

    const/4 v10, 0x1

    if-lt v8, v10, :cond_d

    .line 28
    iget-object v10, v5, Lc68;->a:Lc68;

    iput v8, v10, Lc68;->e:I

    const/16 v8, 0x20

    .line 29
    iput-char v8, v10, Lc68;->f:C

    .line 30
    iput v15, v10, Lc68;->g:I

    move v8, v11

    goto :goto_6

    .line 31
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The pad width must be at least one but was "

    invoke-static {v2, v8}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-static {v2, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_f
    :goto_6
    sget-object v10, Lc68;->i:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ly68;

    const-string v10, "Too many pattern letters: "

    if-eqz v15, :cond_35

    .line 34
    sget-object v11, Lm68;->j:Lm68;

    sget-object v12, Lm68;->f:Lm68;

    sget-object v14, Lm68;->h:Lm68;

    sget-object v0, Lm68;->i:Lm68;

    const/16 v1, 0x51

    move-object/from16 v20, v2

    const/4 v2, 0x3

    if-eq v9, v1, :cond_2f

    const/16 v1, 0x53

    if-eq v9, v1, :cond_2e

    const/16 v1, 0x61

    if-eq v9, v1, :cond_2c

    const/16 v1, 0x68

    if-eq v9, v1, :cond_29

    const/16 v1, 0x6b

    if-eq v9, v1, :cond_29

    const/16 v1, 0x6d

    if-eq v9, v1, :cond_29

    const/16 v1, 0x71

    if-eq v9, v1, :cond_23

    const/16 v1, 0x73

    if-eq v9, v1, :cond_29

    const/16 v1, 0x75

    if-eq v9, v1, :cond_20

    const/16 v1, 0x79

    if-eq v9, v1, :cond_20

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1f

    .line 35
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    :pswitch_0
    const/4 v0, 0x1

    if-ne v8, v0, :cond_10

    .line 36
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    .line 37
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v1, 0x1

    if-eq v8, v1, :cond_13

    const/4 v1, 0x2

    if-eq v8, v1, :cond_13

    if-eq v8, v2, :cond_13

    const/4 v1, 0x4

    if-eq v8, v1, :cond_12

    const/4 v1, 0x5

    if-ne v8, v1, :cond_11

    .line 38
    invoke-virtual {v5, v15, v0}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 39
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_12
    invoke-virtual {v5, v15, v7}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 41
    :cond_13
    invoke-virtual {v5, v15, v6}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    :pswitch_2
    const/4 v0, 0x1

    if-ne v8, v0, :cond_14

    .line 42
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    :cond_14
    if-gt v8, v2, :cond_15

    .line 43
    invoke-virtual {v5, v15, v8}, Lc68;->k(Ly68;I)Lc68;

    goto/16 :goto_a

    .line 44
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v1, 0x1

    if-eq v8, v1, :cond_19

    const/4 v1, 0x2

    if-eq v8, v1, :cond_19

    if-eq v8, v2, :cond_18

    const/4 v1, 0x4

    if-eq v8, v1, :cond_17

    const/4 v1, 0x5

    if-ne v8, v1, :cond_16

    .line 45
    invoke-virtual {v5, v15, v0}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 46
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_17
    invoke-virtual {v5, v15, v7}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 48
    :cond_18
    invoke-virtual {v5, v15, v6}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    :cond_19
    const/16 v0, 0x65

    .line 49
    invoke-static {v0, v8, v5}, Ljo;->F(CILc68;)V

    goto/16 :goto_a

    :pswitch_4
    const/4 v0, 0x1

    if-eq v8, v0, :cond_1e

    const/4 v0, 0x2

    if-eq v8, v0, :cond_1d

    if-eq v8, v2, :cond_1c

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1b

    const/4 v0, 0x5

    if-ne v8, v0, :cond_1a

    .line 50
    invoke-virtual {v5, v15, v11}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 51
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1b
    invoke-virtual {v5, v15, v12}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 53
    :cond_1c
    invoke-virtual {v5, v15, v14}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 54
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of pattern letters: "

    invoke-static {v1, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/16 v0, 0x63

    .line 55
    invoke-static {v0, v8, v5}, Ljo;->F(CILc68;)V

    goto/16 :goto_a

    .line 56
    :cond_1f
    invoke-virtual {v5, v15, v8}, Lc68;->k(Ly68;I)Lc68;

    goto/16 :goto_a

    :cond_20
    const/4 v0, 0x2

    if-ne v8, v0, :cond_21

    const/16 v16, 0x2

    const/16 v17, 0x2

    .line 57
    sget-object v0, Lc68$m;->m:Lp48;

    const-string v1, "field"

    .line 58
    invoke-static {v15, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "baseDate"

    .line 59
    invoke-static {v0, v1}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lc68$m;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lc68$m;-><init>(Ly68;IIILe58;)V

    .line 61
    invoke-virtual {v5, v1}, Lc68;->i(Lc68$j;)Lc68;

    goto/16 :goto_a

    :cond_21
    const/16 v0, 0x13

    const/4 v1, 0x4

    if-ge v8, v1, :cond_22

    .line 62
    sget-object v1, Lj68;->e:Lj68;

    invoke-virtual {v5, v15, v8, v0, v1}, Lc68;->l(Ly68;IILj68;)Lc68;

    goto/16 :goto_a

    .line 63
    :cond_22
    sget-object v1, Lj68;->i:Lj68;

    invoke-virtual {v5, v15, v8, v0, v1}, Lc68;->l(Ly68;IILj68;)Lc68;

    goto/16 :goto_a

    :cond_23
    :pswitch_5
    const/4 v0, 0x1

    if-eq v8, v0, :cond_28

    const/4 v0, 0x2

    if-eq v8, v0, :cond_27

    if-eq v8, v2, :cond_26

    const/4 v0, 0x4

    if-eq v8, v0, :cond_25

    const/4 v0, 0x5

    if-ne v8, v0, :cond_24

    .line 64
    invoke-virtual {v5, v15, v11}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 65
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_25
    invoke-virtual {v5, v15, v12}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 67
    :cond_26
    invoke-virtual {v5, v15, v14}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 68
    :cond_27
    invoke-virtual {v5, v15, v0}, Lc68;->k(Ly68;I)Lc68;

    goto/16 :goto_a

    .line 69
    :cond_28
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    :cond_29
    :pswitch_6
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_2a

    .line 70
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    :cond_2a
    if-ne v8, v0, :cond_2b

    .line 71
    invoke-virtual {v5, v15, v8}, Lc68;->k(Ly68;I)Lc68;

    goto/16 :goto_a

    .line 72
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2d

    .line 73
    invoke-virtual {v5, v15, v6}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 74
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2e
    sget-object v0, Lq68;->i:Lq68;

    .line 76
    new-instance v1, Lc68$f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v8, v8, v2}, Lc68$f;-><init>(Ly68;IIZ)V

    invoke-virtual {v5, v1}, Lc68;->b(Lc68$e;)I

    goto/16 :goto_a

    :cond_2f
    :pswitch_7
    const/4 v1, 0x1

    if-eq v8, v1, :cond_34

    const/4 v1, 0x2

    if-eq v8, v1, :cond_33

    if-eq v8, v2, :cond_32

    const/4 v1, 0x4

    if-eq v8, v1, :cond_31

    const/4 v1, 0x5

    if-ne v8, v1, :cond_30

    .line 77
    invoke-virtual {v5, v15, v0}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 78
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_31
    invoke-virtual {v5, v15, v7}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    .line 80
    :cond_32
    invoke-virtual {v5, v15, v6}, Lc68;->h(Ly68;Lm68;)Lc68;

    goto/16 :goto_a

    :cond_33
    const/4 v0, 0x2

    .line 81
    invoke-virtual {v5, v15, v0}, Lc68;->k(Ly68;I)Lc68;

    goto/16 :goto_a

    .line 82
    :cond_34
    invoke-virtual {v5, v15}, Lc68;->j(Ly68;)Lc68;

    goto/16 :goto_a

    :cond_35
    move-object/from16 v20, v2

    const/16 v0, 0x7a

    if-ne v9, v0, :cond_38

    const/4 v0, 0x4

    if-gt v8, v0, :cond_37

    if-ne v8, v0, :cond_36

    .line 83
    new-instance v0, Lc68$s;

    invoke-direct {v0, v7}, Lc68$s;-><init>(Lm68;)V

    invoke-virtual {v5, v0}, Lc68;->b(Lc68$e;)I

    goto/16 :goto_a

    .line 84
    :cond_36
    new-instance v0, Lc68$s;

    invoke-direct {v0, v6}, Lc68$s;-><init>(Lm68;)V

    invoke-virtual {v5, v0}, Lc68;->b(Lc68$e;)I

    goto/16 :goto_a

    .line 85
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    const/16 v0, 0x56

    if-ne v9, v0, :cond_3a

    const/4 v0, 0x2

    if-ne v8, v0, :cond_39

    .line 86
    new-instance v0, Lc68$r;

    sget-object v1, Lz68;->a:La78;

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Lc68$r;-><init>(La78;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lc68;->b(Lc68$e;)I

    goto/16 :goto_a

    .line 87
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern letter count must be 2: "

    invoke-static {v1, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const-string v0, "Z"

    const-string v1, "+0000"

    const/16 v2, 0x5a

    if-ne v9, v2, :cond_3e

    const/4 v2, 0x4

    if-ge v8, v2, :cond_3b

    const-string v0, "+HHMM"

    .line 88
    invoke-virtual {v5, v0, v1}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    goto/16 :goto_a

    :cond_3b
    if-ne v8, v2, :cond_3c

    .line 89
    invoke-virtual {v5, v7}, Lc68;->e(Lm68;)Lc68;

    goto/16 :goto_a

    :cond_3c
    const/4 v1, 0x5

    if-ne v8, v1, :cond_3d

    const-string v1, "+HH:MM:ss"

    .line 90
    invoke-virtual {v5, v1, v0}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    goto/16 :goto_a

    .line 91
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    const/16 v2, 0x4f

    if-ne v9, v2, :cond_41

    const/4 v0, 0x1

    if-ne v8, v0, :cond_3f

    .line 92
    invoke-virtual {v5, v6}, Lc68;->e(Lm68;)Lc68;

    goto/16 :goto_a

    :cond_3f
    const/4 v0, 0x4

    if-ne v8, v0, :cond_40

    .line 93
    invoke-virtual {v5, v7}, Lc68;->e(Lm68;)Lc68;

    goto/16 :goto_a

    .line 94
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern letter count must be 1 or 4: "

    invoke-static {v1, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    const/16 v2, 0x58

    if-ne v9, v2, :cond_44

    const/4 v1, 0x5

    if-gt v8, v1, :cond_43

    .line 95
    sget-object v1, Lc68$k;->g:[Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v8, v2, :cond_42

    const/4 v2, 0x0

    goto :goto_7

    :cond_42
    const/4 v2, 0x1

    :goto_7
    add-int/2addr v8, v2

    aget-object v1, v1, v8

    invoke-virtual {v5, v1, v0}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    goto/16 :goto_a

    .line 96
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/16 v0, 0x78

    if-ne v9, v0, :cond_49

    const/4 v0, 0x5

    if-gt v8, v0, :cond_48

    const/4 v0, 0x1

    if-ne v8, v0, :cond_45

    const-string v1, "+00"

    goto :goto_8

    .line 97
    :cond_45
    rem-int/lit8 v2, v8, 0x2

    if-nez v2, :cond_46

    goto :goto_8

    :cond_46
    const-string v1, "+00:00"

    .line 98
    :goto_8
    sget-object v2, Lc68$k;->g:[Ljava/lang/String;

    if-ne v8, v0, :cond_47

    const/4 v0, 0x0

    goto :goto_9

    :cond_47
    const/4 v0, 0x1

    :goto_9
    add-int/2addr v8, v0

    aget-object v0, v2, v8

    invoke-virtual {v5, v0, v1}, Lc68;->f(Ljava/lang/String;Ljava/lang/String;)Lc68;

    goto :goto_a

    .line 99
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v0, 0x57

    if-ne v9, v0, :cond_4b

    const/4 v1, 0x1

    if-gt v8, v1, :cond_4a

    .line 100
    invoke-static {v0, v8, v5}, Ljo;->F(CILc68;)V

    goto :goto_a

    .line 101
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/16 v0, 0x77

    if-ne v9, v0, :cond_4d

    const/4 v1, 0x2

    if-gt v8, v1, :cond_4c

    .line 102
    invoke-static {v0, v8, v5}, Ljo;->F(CILc68;)V

    goto :goto_a

    .line 103
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v10, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/16 v0, 0x59

    if-ne v9, v0, :cond_4e

    .line 104
    invoke-static {v0, v8, v5}, Ljo;->F(CILc68;)V

    :goto_a
    add-int/lit8 v8, v13, -0x1

    goto/16 :goto_d

    .line 105
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown pattern letter: "

    invoke-static {v1, v9}, Ljo;->f(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move-object/from16 v20, v2

    const-string v0, "\'"

    const/16 v1, 0x27

    if-ne v9, v1, :cond_54

    add-int/lit8 v8, v8, 0x1

    move v2, v8

    .line 106
    :goto_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_51

    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_50

    add-int/lit8 v9, v2, 0x1

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_51

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_51

    move v2, v9

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 109
    :cond_51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_53

    .line 110
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_52

    .line 112
    invoke-virtual {v5, v1}, Lc68;->c(C)Lc68;

    goto :goto_c

    :cond_52
    const-string v1, "\'\'"

    .line 113
    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lc68;->d(Ljava/lang/String;)Lc68;

    :goto_c
    move v8, v2

    goto :goto_d

    .line 114
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern ends with an incomplete string literal: "

    invoke-static {v1, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/16 v1, 0x5b

    if-ne v9, v1, :cond_55

    .line 115
    invoke-virtual {v5}, Lc68;->n()Lc68;

    goto :goto_d

    :cond_55
    const/16 v1, 0x5d

    if-ne v9, v1, :cond_57

    .line 116
    iget-object v0, v5, Lc68;->a:Lc68;

    iget-object v0, v0, Lc68;->b:Lc68;

    if-eqz v0, :cond_56

    .line 117
    invoke-virtual {v5}, Lc68;->m()Lc68;

    goto :goto_d

    .line 118
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    const/16 v1, 0x7b

    if-eq v9, v1, :cond_58

    const/16 v1, 0x7d

    if-eq v9, v1, :cond_58

    const/16 v1, 0x23

    if-eq v9, v1, :cond_58

    .line 119
    invoke-virtual {v5, v9}, Lc68;->c(C)Lc68;

    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    goto/16 :goto_2

    .line 120
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern includes reserved character: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    move-object/from16 v20, v2

    .line 121
    invoke-virtual {v5, v3}, Lc68;->p(Ljava/util/Locale;)Lb68;

    move-result-object v7

    .line 122
    sget-object v0, Lk68;->a:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_e
    iget-object v0, v7, Lb68;->a:Lc68$d;

    .line 124
    iget-boolean v1, v0, Lc68$d;->f:Z

    if-nez v1, :cond_5a

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_f

    .line 125
    :cond_5a
    new-instance v1, Lc68$d;

    iget-object v0, v0, Lc68$d;->e:[Lc68$e;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc68$d;-><init>([Lc68$e;Z)V

    move-object/from16 v2, p2

    move-object v0, v1

    move-object/from16 v1, p1

    .line 126
    :goto_f
    invoke-virtual {v0, v1, v2}, Lc68$d;->i(Le68;Ljava/lang/StringBuilder;)Z

    const/4 v0, 0x1

    return v0

    :cond_5b
    move-object v1, v2

    .line 127
    invoke-interface {v6, v1, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Localized("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$i;->e:Lh68;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lc68$i;->f:Lh68;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
