.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf5;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$lambda$0(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Ltf5;)Lty5;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->providesFirebaseInAppMessaging(Ltf5;)Lty5;

    move-result-object p0

    return-object p0
.end method

.method private providesFirebaseInAppMessaging(Ltf5;)Lty5;
    .locals 26

    move-object/from16 v0, p1

    .line 1
    const-class v1, Lzq;

    const-class v2, Lpe5;

    invoke-interface {v0, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe5;

    .line 2
    const-class v3, Lz96;

    invoke-interface {v0, v3}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz96;

    .line 3
    const-class v4, Lbf5;

    invoke-interface {v0, v4}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf5;

    .line 4
    const-class v5, Lno5;

    invoke-interface {v0, v5}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lno5;

    .line 5
    invoke-virtual {v2}, Lpe5;->a()V

    .line 6
    iget-object v6, v2, Lpe5;->a:Landroid/content/Context;

    .line 7
    check-cast v6, Landroid/app/Application;

    .line 8
    new-instance v10, Lw76;

    invoke-direct {v10, v6}, Lw76;-><init>(Landroid/app/Application;)V

    .line 9
    new-instance v6, Lt76;

    invoke-direct {v6, v4, v5}, Lt76;-><init>(Lbf5;Lno5;)V

    .line 10
    new-instance v13, Lj76;

    invoke-direct {v13}, Lj76;-><init>()V

    .line 11
    new-instance v12, Li86;

    new-instance v4, Ls56;

    invoke-direct {v4}, Ls56;-><init>()V

    invoke-direct {v12, v4}, Li86;-><init>(Ls56;)V

    .line 12
    new-instance v8, Lb86;

    invoke-direct {v8}, Lb86;-><init>()V

    .line 13
    new-instance v9, Lq86;

    invoke-direct {v9}, Lq86;-><init>()V

    .line 14
    const-class v4, Lw76;

    invoke-static {v10, v4}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    new-instance v11, Lz76;

    invoke-direct {v11}, Lz76;-><init>()V

    .line 16
    const-class v4, Li86;

    invoke-static {v12, v4}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    new-instance v14, Ll86;

    invoke-direct {v14}, Ll86;-><init>()V

    .line 18
    new-instance v15, Lu86;

    invoke-direct {v15}, Lu86;-><init>()V

    .line 19
    new-instance v16, Lp86;

    invoke-direct/range {v16 .. v16}, Lp86;-><init>()V

    .line 20
    const-class v4, Lt76;

    invoke-static {v6, v4}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    new-instance v4, Lh76;

    const/16 v18, 0x0

    move-object v7, v4

    move-object/from16 v17, v6

    invoke-direct/range {v7 .. v18}, Lh76;-><init>(Lb86;Lq86;Lw76;Lz76;Li86;Lj76;Ll86;Lu86;Lp86;Lt76;Lh76$a;)V

    .line 22
    new-instance v5, Lf26;

    const-class v6, Lze5;

    .line 23
    invoke-interface {v0, v6}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lze5;

    const-string v7, "fiam"

    .line 24
    invoke-virtual {v6, v7}, Lze5;->a(Ljava/lang/String;)Lye5;

    move-result-object v6

    invoke-direct {v5, v6}, Lf26;-><init>(Lye5;)V

    .line 25
    new-instance v6, Lm76;

    .line 26
    iget-object v7, v4, Lh76;->a:Lu86;

    .line 27
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v7, La96;

    invoke-direct {v7}, La96;-><init>()V

    .line 29
    invoke-direct {v6, v2, v3, v7}, Lm76;-><init>(Lpe5;Lz96;Lz86;)V

    .line 30
    new-instance v3, Le86;

    invoke-direct {v3, v2}, Le86;-><init>(Lpe5;)V

    .line 31
    invoke-interface {v0, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzq;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v2, Lf26;

    invoke-static {v5, v2}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 34
    const-class v2, Lm76;

    invoke-static {v6, v2}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 35
    const-class v2, Le86;

    invoke-static {v3, v2}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 36
    const-class v2, Li76;

    invoke-static {v4, v2}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 37
    invoke-static {v0, v1}, Lc50;->u(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 38
    new-instance v8, Lt66;

    invoke-direct {v8, v4}, Lt66;-><init>(Li76;)V

    .line 39
    new-instance v9, Ld76;

    invoke-direct {v9, v4}, Ld76;-><init>(Li76;)V

    .line 40
    new-instance v1, Lw66;

    invoke-direct {v1, v4}, Lw66;-><init>(Li76;)V

    .line 41
    new-instance v2, Lx66;

    invoke-direct {v2, v4}, Lx66;-><init>(Li76;)V

    .line 42
    new-instance v7, La76;

    invoke-direct {v7, v4}, La76;-><init>(Li76;)V

    .line 43
    new-instance v10, Lf86;

    invoke-direct {v10, v3}, Lf86;-><init>(Le86;)V

    .line 44
    new-instance v11, Lg86;

    invoke-direct {v11, v3, v7, v10}, Lg86;-><init>(Le86;Ljj7;Ljj7;)V

    .line 45
    sget-object v3, Liz5;->c:Ljava/lang/Object;

    .line 46
    instance-of v3, v11, Liz5;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Liz5;

    invoke-direct {v3, v11}, Liz5;-><init>(Ljj7;)V

    move-object v11, v3

    .line 48
    :goto_0
    new-instance v3, Lo36;

    invoke-direct {v3, v11}, Lo36;-><init>(Ljj7;)V

    .line 49
    instance-of v7, v3, Liz5;

    if-eqz v7, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    new-instance v7, Liz5;

    invoke-direct {v7, v3}, Liz5;-><init>(Ljj7;)V

    move-object v3, v7

    .line 51
    :goto_1
    new-instance v7, Lv66;

    invoke-direct {v7, v4}, Lv66;-><init>(Li76;)V

    .line 52
    new-instance v10, Lc76;

    invoke-direct {v10, v4}, Lc76;-><init>(Li76;)V

    .line 53
    new-instance v11, Ln76;

    invoke-direct {v11, v6, v3, v7, v10}, Ln76;-><init>(Lm76;Ljj7;Ljj7;Ljj7;)V

    .line 54
    instance-of v3, v11, Liz5;

    if-eqz v3, :cond_2

    move-object v12, v11

    goto :goto_2

    .line 55
    :cond_2
    new-instance v3, Liz5;

    invoke-direct {v3, v11}, Liz5;-><init>(Ljj7;)V

    move-object v12, v3

    .line 56
    :goto_2
    new-instance v13, Ls66;

    invoke-direct {v13, v4}, Ls66;-><init>(Li76;)V

    .line 57
    new-instance v3, Lg76;

    invoke-direct {v3, v4}, Lg76;-><init>(Li76;)V

    .line 58
    new-instance v15, Lb76;

    invoke-direct {v15, v4}, Lb76;-><init>(Li76;)V

    .line 59
    new-instance v14, Lf76;

    invoke-direct {v14, v4}, Lf76;-><init>(Li76;)V

    .line 60
    new-instance v11, Lu66;

    invoke-direct {v11, v4}, Lu66;-><init>(Li76;)V

    .line 61
    new-instance v7, Lr76;

    invoke-direct {v7, v6}, Lr76;-><init>(Lm76;)V

    .line 62
    new-instance v10, Ls76;

    invoke-direct {v10, v6, v7}, Ls76;-><init>(Lm76;Ljj7;)V

    move-object/from16 p1, v0

    .line 63
    new-instance v0, Lq76;

    invoke-direct {v0, v6}, Lq76;-><init>(Lm76;)V

    move-object/from16 v16, v10

    .line 64
    new-instance v10, Lz66;

    invoke-direct {v10, v4}, Lz66;-><init>(Li76;)V

    move-object/from16 v22, v4

    .line 65
    new-instance v4, Lo76;

    invoke-direct {v4, v6, v7, v10}, Lo76;-><init>(Lm76;Ljj7;Ljj7;)V

    .line 66
    new-instance v10, Ljz5;

    invoke-direct {v10, v5}, Ljz5;-><init>(Ljava/lang/Object;)V

    .line 67
    new-instance v5, Ll56;

    move-object v7, v5

    move-object/from16 v21, v10

    move-object/from16 v18, v16

    move-object v10, v1

    move-object/from16 v23, v11

    move-object v11, v2

    move-object/from16 v24, v14

    move-object v14, v3

    move-object/from16 v25, v15

    move-object/from16 v16, v24

    move-object/from16 v17, v23

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-direct/range {v7 .. v21}, Ll56;-><init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V

    .line 68
    instance-of v7, v5, Liz5;

    if-eqz v7, :cond_3

    goto :goto_3

    .line 69
    :cond_3
    new-instance v7, Liz5;

    invoke-direct {v7, v5}, Liz5;-><init>(Ljj7;)V

    move-object v5, v7

    .line 70
    :goto_3
    new-instance v7, Le76;

    move-object/from16 v8, v22

    invoke-direct {v7, v8}, Le76;-><init>(Li76;)V

    .line 71
    new-instance v11, Lp76;

    invoke-direct {v11, v6}, Lp76;-><init>(Lm76;)V

    .line 72
    new-instance v12, Ljz5;

    move-object/from16 v6, p1

    invoke-direct {v12, v6}, Ljz5;-><init>(Ljava/lang/Object;)V

    .line 73
    new-instance v13, Lr66;

    invoke-direct {v13, v8}, Lr66;-><init>(Li76;)V

    .line 74
    new-instance v6, Ly66;

    invoke-direct {v6, v8}, Ly66;-><init>(Li76;)V

    .line 75
    new-instance v8, Ly86;

    move-object v10, v8

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Ly86;-><init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V

    .line 76
    instance-of v9, v8, Liz5;

    if-eqz v9, :cond_4

    move-object/from16 v17, v8

    goto :goto_4

    .line 77
    :cond_4
    new-instance v9, Liz5;

    invoke-direct {v9, v8}, Liz5;-><init>(Ljj7;)V

    move-object/from16 v17, v9

    .line 78
    :goto_4
    new-instance v21, Lx26;

    move-object/from16 v10, v21

    move-object/from16 v11, v25

    move-object v12, v2

    move-object v13, v3

    move-object/from16 v14, v24

    move-object v15, v1

    move-object/from16 v16, v23

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lx26;-><init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V

    .line 79
    new-instance v1, Lwy5;

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    move-object/from16 v20, v0

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Lwy5;-><init>(Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;Ljj7;)V

    .line 80
    instance-of v0, v1, Liz5;

    if-eqz v0, :cond_5

    goto :goto_5

    .line 81
    :cond_5
    new-instance v0, Liz5;

    invoke-direct {v0, v1}, Liz5;-><init>(Ljj7;)V

    move-object v1, v0

    .line 82
    :goto_5
    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lty5;

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf5<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lsf5;

    .line 1
    const-class v1, Lty5;

    .line 2
    invoke-static {v1}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    new-instance v3, Lig5;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lz96;

    .line 5
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lpe5;

    .line 7
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lze5;

    .line 9
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lbf5;

    .line 11
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v5, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lzq;

    .line 13
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 14
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v2, Lno5;

    .line 15
    new-instance v3, Lig5;

    invoke-direct {v3, v2, v4, v5}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 16
    invoke-virtual {v1, v3}, Lsf5$b;->a(Lig5;)Lsf5$b;

    .line 17
    new-instance v2, Lvy5;

    invoke-direct {v2, p0}, Lvy5;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V

    .line 18
    invoke-virtual {v1, v2}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 19
    invoke-virtual {v1}, Lsf5$b;->c()Lsf5$b;

    .line 20
    invoke-virtual {v1}, Lsf5$b;->b()Lsf5;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fiam"

    const-string v2, "19.1.3"

    .line 21
    invoke-static {v1, v2}, Ln56;->F(Ljava/lang/String;Ljava/lang/String;)Lsf5;

    move-result-object v1

    aput-object v1, v0, v4

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
