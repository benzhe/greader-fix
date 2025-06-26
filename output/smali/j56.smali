.class public final synthetic Lj56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk56;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj56;->e:Lk56;

    iput-object p2, p0, Lj56;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lj56;->e:Lk56;

    iget-object v2, v0, Lj56;->f:Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Lkg6;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v3}, Lkg6;->G()Lkg6$c;

    move-result-object v4

    sget-object v5, Lkg6$c;->e:Lkg6$c;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v3}, Lkg6;->J()Llg6;

    move-result-object v1

    invoke-virtual {v1}, Llg6;->D()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v3}, Lkg6;->J()Llg6;

    move-result-object v4

    invoke-virtual {v4}, Llg6;->E()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3}, Lkg6;->G()Lkg6$c;

    move-result-object v4

    sget-object v5, Lkg6$c;->f:Lkg6$c;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 6
    invoke-virtual {v3}, Lkg6;->E()Ljg6;

    move-result-object v4

    invoke-virtual {v4}, Ljg6;->D()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lkg6;->E()Ljg6;

    move-result-object v5

    invoke-virtual {v5}, Ljg6;->E()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v3}, Lkg6;->F()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    iget-object v1, v1, Lk56;->l:Lf26;

    .line 10
    invoke-virtual {v3}, Lkg6;->E()Ljg6;

    move-result-object v6

    invoke-virtual {v6}, Ljg6;->H()Lpy5;

    move-result-object v6

    .line 11
    iget-object v7, v1, Lf26;->b:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v8, Le26;

    invoke-direct {v8, v1, v6}, Le26;-><init>(Lf26;Lpy5;)V

    .line 13
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    move-object v1, v4

    move-object v4, v5

    .line 14
    :goto_0
    invoke-virtual {v3}, Lkg6;->C()Lcz5;

    move-result-object v5

    .line 15
    invoke-virtual {v3}, Lkg6;->F()Z

    move-result v6

    .line 16
    invoke-virtual {v3}, Lkg6;->D()Ljava/util/Map;

    move-result-object v3

    const-string v7, "FirebaseInAppMessaging content cannot be null."

    .line 17
    invoke-static {v5, v7}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FirebaseInAppMessaging campaign id cannot be null."

    .line 18
    invoke-static {v1, v7}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "FirebaseInAppMessaging campaign name cannot be null."

    .line 19
    invoke-static {v4, v7}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Decoding message: "

    .line 20
    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lgj6;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ln56;->t1(Ljava/lang/String;)V

    .line 21
    new-instance v8, Lf96;

    invoke-direct {v8, v1, v4, v6}, Lf96;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {v5}, Lcz5;->G()Lcz5$b;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v9, "ImageData model must have an imageUrl"

    const/4 v10, 0x0

    if-eqz v7, :cond_2a

    const/4 v11, 0x1

    if-eq v7, v11, :cond_1e

    const/4 v11, 0x2

    if-eq v7, v11, :cond_18

    const/4 v11, 0x3

    if-eq v7, v11, :cond_2

    .line 23
    new-instance v5, Ll96;

    new-instance v7, Lf96;

    invoke-direct {v7, v1, v4, v6}, Lf96;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {v5, v7, v1, v3}, Ll96;-><init>(Lf96;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    goto/16 :goto_1d

    .line 24
    :cond_2
    invoke-virtual {v5}, Lcz5;->D()Lbz5;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lbz5;->R()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual {v1}, Lbz5;->L()Lfz5;

    move-result-object v4

    invoke-static {v4}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v10

    .line 27
    :goto_1
    invoke-virtual {v1}, Lbz5;->M()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 28
    invoke-virtual {v1}, Lbz5;->D()Lfz5;

    move-result-object v5

    invoke-static {v5}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v10

    .line 29
    :goto_2
    invoke-virtual {v1}, Lbz5;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 30
    invoke-virtual {v1}, Lbz5;->C()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_3

    :cond_5
    move-object v13, v10

    .line 31
    :goto_3
    invoke-virtual {v1}, Lbz5;->N()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v1}, Lbz5;->O()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v14, v10

    goto :goto_5

    .line 32
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lbz5;->H()Lyy5;

    move-result-object v6

    invoke-virtual {v1}, Lbz5;->I()Laz5;

    move-result-object v7

    invoke-static {v6, v7}, Lm96;->b(Lyy5;Laz5;)Lb96;

    move-result-object v6

    move-object v14, v6

    .line 33
    :goto_5
    invoke-virtual {v1}, Lbz5;->P()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1}, Lbz5;->Q()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    move-object v15, v10

    goto :goto_7

    .line 34
    :cond_9
    :goto_6
    invoke-virtual {v1}, Lbz5;->J()Lyy5;

    move-result-object v6

    invoke-virtual {v1}, Lbz5;->K()Laz5;

    move-result-object v7

    invoke-static {v6, v7}, Lm96;->b(Lyy5;Laz5;)Lb96;

    move-result-object v6

    move-object v15, v6

    .line 35
    :goto_7
    invoke-virtual {v1}, Lbz5;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 36
    invoke-virtual {v1}, Lbz5;->G()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_8

    :cond_a
    move-object v6, v10

    .line 38
    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 39
    new-instance v7, Lh96;

    invoke-direct {v7, v6, v10}, Lh96;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v11, v7

    goto :goto_9

    .line 40
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v11, v10

    .line 41
    :goto_9
    invoke-virtual {v1}, Lbz5;->F()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 42
    invoke-virtual {v1}, Lbz5;->F()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_a

    :cond_d
    move-object v1, v10

    .line 44
    :goto_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 45
    new-instance v6, Lh96;

    invoke-direct {v6, v1, v10}, Lh96;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v12, v6

    goto :goto_b

    .line 46
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v12, v10

    :goto_b
    if-eqz v14, :cond_17

    .line 47
    iget-object v1, v14, Lb96;->b:Le96;

    if-eqz v1, :cond_16

    if-eqz v15, :cond_11

    .line 48
    iget-object v1, v15, Lb96;->b:Le96;

    if-eqz v1, :cond_10

    goto :goto_c

    .line 49
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model secondary action must be null or have a button"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_c
    if-eqz v4, :cond_15

    if-nez v11, :cond_13

    if-eqz v12, :cond_12

    goto :goto_d

    .line 50
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model must have at least one image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_13
    :goto_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 52
    new-instance v1, Lg96;

    const/16 v17, 0x0

    move-object v7, v1

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v16, v3

    invoke-direct/range {v7 .. v17}, Lg96;-><init>(Lf96;Lp96;Lp96;Lh96;Lh96;Ljava/lang/String;Lb96;Lb96;Ljava/util/Map;Lg96$a;)V

    move-object v5, v1

    goto/16 :goto_1d

    .line 53
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model must have a background color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model must have a title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model must have a primary action button"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Card model must have a primary action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_18
    invoke-virtual {v5}, Lcz5;->F()Ldz5;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ldz5;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 59
    invoke-virtual {v1}, Ldz5;->E()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_e

    :cond_19
    move-object v4, v10

    .line 61
    :goto_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 62
    new-instance v5, Lh96;

    invoke-direct {v5, v4, v10}, Lh96;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v9, v5

    goto :goto_f

    .line 63
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move-object v9, v10

    .line 64
    :goto_f
    invoke-virtual {v1}, Ldz5;->F()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 65
    invoke-virtual {v1}, Ldz5;->C()Lyy5;

    move-result-object v1

    invoke-static {v1}, Lm96;->a(Lyy5;)Lb96$b;

    move-result-object v1

    invoke-virtual {v1}, Lb96$b;->a()Lb96;

    move-result-object v1

    move-object v10, v1

    :cond_1c
    if-eqz v9, :cond_1d

    .line 66
    new-instance v5, Li96;

    const/4 v12, 0x0

    move-object v7, v5

    move-object v11, v3

    invoke-direct/range {v7 .. v12}, Li96;-><init>(Lf96;Lh96;Lb96;Ljava/util/Map;Li96$a;)V

    goto/16 :goto_1d

    .line 67
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ImageOnly model must have image data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1e
    invoke-virtual {v5}, Lcz5;->H()Lez5;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lez5;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 70
    invoke-virtual {v1}, Lez5;->E()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_10

    :cond_1f
    move-object v13, v10

    .line 71
    :goto_10
    invoke-virtual {v1}, Lez5;->H()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 72
    invoke-virtual {v1}, Lez5;->H()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_11

    :cond_20
    move-object v4, v10

    .line 74
    :goto_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 75
    new-instance v5, Lh96;

    invoke-direct {v5, v4, v10}, Lh96;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v11, v5

    goto :goto_12

    .line 76
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    move-object v11, v10

    .line 77
    :goto_12
    invoke-virtual {v1}, Lez5;->J()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 78
    invoke-virtual {v1}, Lez5;->C()Lyy5;

    move-result-object v4

    invoke-virtual {v1}, Lez5;->D()Laz5;

    move-result-object v5

    invoke-static {v4, v5}, Lm96;->b(Lyy5;Laz5;)Lb96;

    move-result-object v4

    move-object v12, v4

    goto :goto_13

    :cond_23
    move-object v12, v10

    .line 79
    :goto_13
    invoke-virtual {v1}, Lez5;->K()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 80
    invoke-virtual {v1}, Lez5;->F()Lfz5;

    move-result-object v4

    invoke-static {v4}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v4

    goto :goto_14

    :cond_24
    move-object v4, v10

    .line 81
    :goto_14
    invoke-virtual {v1}, Lez5;->L()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 82
    invoke-virtual {v1}, Lez5;->I()Lfz5;

    move-result-object v1

    invoke-static {v1}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v1

    move-object v9, v1

    goto :goto_15

    :cond_25
    move-object v9, v10

    :goto_15
    if-eqz v9, :cond_29

    if-eqz v12, :cond_27

    .line 83
    iget-object v1, v12, Lb96;->b:Le96;

    if-eqz v1, :cond_26

    goto :goto_16

    .line 84
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Modal model action must be null or have a button"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_27
    :goto_16
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 86
    new-instance v5, Lk96;

    const/4 v15, 0x0

    move-object v7, v5

    move-object v10, v4

    move-object v14, v3

    invoke-direct/range {v7 .. v15}, Lk96;-><init>(Lf96;Lp96;Lp96;Lh96;Lb96;Ljava/lang/String;Ljava/util/Map;Lk96$a;)V

    goto/16 :goto_1d

    .line 87
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Modal model must have a background color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Modal model must have a title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_2a
    invoke-virtual {v5}, Lcz5;->C()Lzy5;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lzy5;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 91
    invoke-virtual {v1}, Lzy5;->D()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_17

    :cond_2b
    move-object v13, v10

    .line 92
    :goto_17
    invoke-virtual {v1}, Lzy5;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 93
    invoke-virtual {v1}, Lzy5;->G()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_18

    :cond_2c
    move-object v4, v10

    .line 95
    :goto_18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 96
    new-instance v5, Lh96;

    invoke-direct {v5, v4, v10}, Lh96;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v11, v5

    goto :goto_19

    .line 97
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    move-object v11, v10

    .line 98
    :goto_19
    invoke-virtual {v1}, Lzy5;->I()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 99
    invoke-virtual {v1}, Lzy5;->C()Lyy5;

    move-result-object v4

    invoke-static {v4}, Lm96;->a(Lyy5;)Lb96$b;

    move-result-object v4

    invoke-virtual {v4}, Lb96$b;->a()Lb96;

    move-result-object v4

    move-object v12, v4

    goto :goto_1a

    :cond_2f
    move-object v12, v10

    .line 100
    :goto_1a
    invoke-virtual {v1}, Lzy5;->J()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 101
    invoke-virtual {v1}, Lzy5;->E()Lfz5;

    move-result-object v4

    invoke-static {v4}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v4

    goto :goto_1b

    :cond_30
    move-object v4, v10

    .line 102
    :goto_1b
    invoke-virtual {v1}, Lzy5;->K()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 103
    invoke-virtual {v1}, Lzy5;->H()Lfz5;

    move-result-object v1

    invoke-static {v1}, Lm96;->c(Lfz5;)Lp96;

    move-result-object v1

    move-object v9, v1

    goto :goto_1c

    :cond_31
    move-object v9, v10

    :goto_1c
    if-eqz v9, :cond_34

    .line 104
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 105
    new-instance v5, Ld96;

    const/4 v15, 0x0

    move-object v7, v5

    move-object v10, v4

    move-object v14, v3

    invoke-direct/range {v7 .. v15}, Ld96;-><init>(Lf96;Lp96;Lp96;Lh96;Lb96;Ljava/lang/String;Ljava/util/Map;Ld96$a;)V

    .line 106
    :goto_1d
    iget-object v1, v5, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 107
    sget-object v3, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 108
    sget-object v1, Lbg7;->e:Lbg7;

    goto :goto_1e

    .line 109
    :cond_32
    new-instance v1, Lq96;

    invoke-direct {v1, v5, v2}, Lq96;-><init>(Lj96;Ljava/lang/String;)V

    .line 110
    new-instance v2, Lkg7;

    invoke-direct {v2, v1}, Lkg7;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1e

    .line 111
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Banner model must have a background color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Banner model must have a title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_35
    sget-object v1, Lbg7;->e:Lbg7;

    :goto_1e
    return-object v1
.end method
