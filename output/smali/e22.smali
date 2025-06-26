.class public final Le22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Lkj1;",
        "Lzl2;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lji1;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lji1;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le22;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le22;->b:Lji1;

    .line 4
    iput-object p3, p0, Le22;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static c(Lhl2;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lhl2;->a:Lcl2;

    iget-object p0, p0, Lcl2;->a:Lll2;

    iget-object p0, p0, Lll2;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;,
            Lz22;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 1
    sget-object v4, Ldm2;->e:Ldm2;

    iget-object v0, v3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->h6()Lvg0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    iget-object v0, v3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_1
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->r5()Lwg0;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    iget-object v0, v3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_2
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->G2()Lbh0;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x6

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 10
    invoke-static {v2, v0}, Le22;->c(Lhl2;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 11
    invoke-static {v7}, Lwj1;->s(Lbh0;)Lwj1;

    move-result-object v8

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 12
    invoke-static {v2, v0}, Le22;->c(Lhl2;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    :try_start_3
    invoke-interface {v5}, Lvg0;->getVideoController()Lsu3;

    move-result-object v0

    invoke-static {v0, v8}, Lwj1;->i(Lsu3;Lbh0;)Ltj1;

    move-result-object v9

    .line 14
    invoke-interface {v5}, Lvg0;->f()Lm70;

    move-result-object v10

    .line 15
    invoke-interface {v5}, Lvg0;->C()Lx20;

    move-result-object v0

    invoke-static {v0}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 16
    invoke-interface {v5}, Lvg0;->d()Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-interface {v5}, Lvg0;->i()Ljava/util/List;

    move-result-object v13

    .line 18
    invoke-interface {v5}, Lvg0;->g()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-interface {v5}, Lvg0;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 20
    invoke-interface {v5}, Lvg0;->e()Ljava/lang/String;

    move-result-object v16

    .line 21
    invoke-interface {v5}, Lvg0;->z()Lx20;

    move-result-object v0

    invoke-static {v0}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/View;

    .line 22
    invoke-interface {v5}, Lvg0;->o()Lx20;

    move-result-object v18

    .line 23
    invoke-interface {v5}, Lvg0;->s()Ljava/lang/String;

    move-result-object v19

    .line 24
    invoke-interface {v5}, Lvg0;->k()Ljava/lang/String;

    move-result-object v20

    .line 25
    invoke-interface {v5}, Lvg0;->q()D

    move-result-wide v21

    .line 26
    invoke-interface {v5}, Lvg0;->p()Lu70;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 27
    invoke-static/range {v9 .. v25}, Lwj1;->j(Lsu3;Lm70;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lx20;Ljava/lang/String;Ljava/lang/String;DLu70;Ljava/lang/String;F)Lwj1;

    move-result-object v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "Failed to get native ad assets from app install ad mapper"

    .line 28
    invoke-static {v9, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v2

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    goto/16 :goto_5

    :cond_1
    if-eqz v5, :cond_2

    const/4 v9, 0x2

    .line 29
    invoke-static {v2, v9}, Le22;->c(Lhl2;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 30
    :try_start_4
    invoke-interface {v5}, Lvg0;->getVideoController()Lsu3;

    move-result-object v0

    invoke-static {v0, v8}, Lwj1;->i(Lsu3;Lbh0;)Ltj1;

    move-result-object v0

    .line 31
    invoke-interface {v5}, Lvg0;->f()Lm70;

    move-result-object v10

    .line 32
    invoke-interface {v5}, Lvg0;->C()Lx20;

    move-result-object v11

    invoke-static {v11}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 33
    invoke-interface {v5}, Lvg0;->d()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-interface {v5}, Lvg0;->i()Ljava/util/List;

    move-result-object v13

    .line 35
    invoke-interface {v5}, Lvg0;->g()Ljava/lang/String;

    move-result-object v14

    .line 36
    invoke-interface {v5}, Lvg0;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 37
    invoke-interface {v5}, Lvg0;->e()Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-interface {v5}, Lvg0;->z()Lx20;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroid/view/View;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v17, v4

    .line 39
    :try_start_5
    invoke-interface {v5}, Lvg0;->o()Lx20;

    move-result-object v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v19, v7

    .line 40
    :try_start_6
    invoke-interface {v5}, Lvg0;->s()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-interface {v5}, Lvg0;->k()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-interface {v5}, Lvg0;->q()D

    move-result-wide v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v20, v6

    .line 43
    :try_start_7
    invoke-interface {v5}, Lvg0;->p()Lu70;

    move-result-object v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v21, v5

    .line 44
    :try_start_8
    new-instance v5, Lwj1;

    invoke-direct {v5}, Lwj1;-><init>()V

    move-object/from16 v22, v6

    const/4 v6, 0x2

    .line 45
    iput v6, v5, Lwj1;->a:I

    .line 46
    iput-object v0, v5, Lwj1;->b:Lsu3;

    .line 47
    iput-object v10, v5, Lwj1;->c:Lm70;

    .line 48
    iput-object v11, v5, Lwj1;->d:Landroid/view/View;

    const-string v0, "headline"

    .line 49
    invoke-virtual {v5, v0, v12}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object v13, v5, Lwj1;->e:Ljava/util/List;

    const-string v0, "body"

    .line 51
    invoke-virtual {v5, v0, v14}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object v15, v5, Lwj1;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 53
    invoke-virtual {v5, v0, v8}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object v9, v5, Lwj1;->l:Landroid/view/View;

    .line 55
    iput-object v4, v5, Lwj1;->m:Lx20;

    const-string v0, "store"

    .line 56
    invoke-virtual {v5, v0, v7}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 57
    invoke-virtual {v5, v0, v3}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-wide v1, v5, Lwj1;->n:D

    move-object/from16 v0, v22

    .line 59
    iput-object v0, v5, Lwj1;->o:Lu70;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v8, v5

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    goto :goto_2

    :catch_4
    move-exception v0

    :goto_1
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_1

    :goto_2
    const-string v1, "Failed to get native ad from app install ad mapper"

    .line 60
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v1, p1

    if-eqz v20, :cond_3

    .line 61
    invoke-static {v1, v0}, Le22;->c(Lhl2;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    :try_start_9
    invoke-interface/range {v20 .. v20}, Lwg0;->getVideoController()Lsu3;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lwj1;->i(Lsu3;Lbh0;)Ltj1;

    move-result-object v22

    .line 63
    invoke-interface/range {v20 .. v20}, Lwg0;->f()Lm70;

    move-result-object v23

    .line 64
    invoke-interface/range {v20 .. v20}, Lwg0;->C()Lx20;

    move-result-object v0

    invoke-static {v0}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/View;

    .line 65
    invoke-interface/range {v20 .. v20}, Lwg0;->d()Ljava/lang/String;

    move-result-object v25

    .line 66
    invoke-interface/range {v20 .. v20}, Lwg0;->i()Ljava/util/List;

    move-result-object v26

    .line 67
    invoke-interface/range {v20 .. v20}, Lwg0;->g()Ljava/lang/String;

    move-result-object v27

    .line 68
    invoke-interface/range {v20 .. v20}, Lwg0;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    .line 69
    invoke-interface/range {v20 .. v20}, Lwg0;->e()Ljava/lang/String;

    move-result-object v29

    .line 70
    invoke-interface/range {v20 .. v20}, Lwg0;->z()Lx20;

    move-result-object v0

    invoke-static {v0}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/view/View;

    .line 71
    invoke-interface/range {v20 .. v20}, Lwg0;->o()Lx20;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    .line 72
    invoke-interface/range {v20 .. v20}, Lwg0;->R()Lu70;

    move-result-object v36

    .line 73
    invoke-interface/range {v20 .. v20}, Lwg0;->r()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    .line 74
    invoke-static/range {v22 .. v38}, Lwj1;->j(Lsu3;Lm70;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lx20;Ljava/lang/String;Ljava/lang/String;DLu70;Ljava/lang/String;F)Lwj1;

    move-result-object v8
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const-string v2, "Failed to get native ad assets from content ad mapper"

    .line 75
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_3
    if-eqz v20, :cond_5

    const/4 v0, 0x1

    .line 76
    invoke-static {v1, v0}, Le22;->c(Lhl2;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    :try_start_a
    invoke-interface/range {v20 .. v20}, Lwg0;->getVideoController()Lsu3;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    const/4 v3, 0x0

    :try_start_b
    invoke-static {v2, v3}, Lwj1;->i(Lsu3;Lbh0;)Ltj1;

    move-result-object v2

    .line 78
    invoke-interface/range {v20 .. v20}, Lwg0;->f()Lm70;

    move-result-object v4

    .line 79
    invoke-interface/range {v20 .. v20}, Lwg0;->C()Lx20;

    move-result-object v5

    invoke-static {v5}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 80
    invoke-interface/range {v20 .. v20}, Lwg0;->d()Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-interface/range {v20 .. v20}, Lwg0;->i()Ljava/util/List;

    move-result-object v7

    .line 82
    invoke-interface/range {v20 .. v20}, Lwg0;->g()Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-interface/range {v20 .. v20}, Lwg0;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 84
    invoke-interface/range {v20 .. v20}, Lwg0;->e()Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-interface/range {v20 .. v20}, Lwg0;->z()Lx20;

    move-result-object v11

    invoke-static {v11}, Lwj1;->r(Lx20;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 86
    invoke-interface/range {v20 .. v20}, Lwg0;->o()Lx20;

    move-result-object v12

    .line 87
    invoke-interface/range {v20 .. v20}, Lwg0;->r()Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-interface/range {v20 .. v20}, Lwg0;->R()Lu70;

    move-result-object v14

    .line 89
    new-instance v15, Lwj1;

    invoke-direct {v15}, Lwj1;-><init>()V

    .line 90
    iput v0, v15, Lwj1;->a:I

    .line 91
    iput-object v2, v15, Lwj1;->b:Lsu3;

    .line 92
    iput-object v4, v15, Lwj1;->c:Lm70;

    .line 93
    iput-object v5, v15, Lwj1;->d:Landroid/view/View;

    const-string v0, "headline"

    .line 94
    invoke-virtual {v15, v0, v6}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object v7, v15, Lwj1;->e:Ljava/util/List;

    const-string v0, "body"

    .line 96
    invoke-virtual {v15, v0, v8}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object v9, v15, Lwj1;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 98
    invoke-virtual {v15, v0, v10}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object v11, v15, Lwj1;->l:Landroid/view/View;

    .line 100
    iput-object v12, v15, Lwj1;->m:Lx20;

    const-string v0, "advertiser"

    .line 101
    invoke-virtual {v15, v0, v13}, Lwj1;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object v14, v15, Lwj1;->p:Lu70;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    move-object v8, v15

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    const/4 v3, 0x0

    :goto_4
    const-string v2, "Failed to get native ad from content ad mapper"

    .line 103
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v3

    .line 104
    :goto_5
    iget-object v0, v1, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    iget-object v0, v0, Lll2;->g:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v8}, Lwj1;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v2, p0

    .line 107
    iget-object v0, v2, Le22;->b:Lji1;

    new-instance v3, Lv61;

    move-object/from16 v4, p3

    iget-object v5, v4, Lmz1;->a:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-direct {v3, v1, v6, v5}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v1, Ljk1;

    invoke-direct {v1, v8}, Ljk1;-><init>(Lwj1;)V

    new-instance v5, Lam1;

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    invoke-direct {v5, v7, v6, v8}, Lam1;-><init>(Lwg0;Lvg0;Lbh0;)V

    .line 108
    invoke-virtual {v0, v3, v1, v5}, Lji1;->a(Lv61;Ljk1;Lam1;)Lxj1;

    move-result-object v0

    .line 109
    iget-object v1, v4, Lmz1;->c:Llb1;

    check-cast v1, Lg12;

    invoke-virtual {v0}, Lh61;->f()Ln42;

    move-result-object v3

    .line 110
    monitor-enter v1

    .line 111
    :try_start_c
    iput-object v3, v1, Lg12;->e:Lng0;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 112
    monitor-exit v1

    .line 113
    invoke-virtual {v0}, Lh61;->a()Lxa1;

    move-result-object v1

    .line 114
    new-instance v3, Le21;

    iget-object v4, v4, Lmz1;->b:Ljava/lang/Object;

    check-cast v4, Lzl2;

    invoke-direct {v3, v4}, Le21;-><init>(Lzl2;)V

    iget-object v4, v2, Le22;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v4}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 115
    invoke-virtual {v0}, Lvj1;->h()Lkj1;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 116
    monitor-exit v1

    throw v3

    :cond_4
    move-object/from16 v2, p0

    .line 117
    new-instance v0, Lz22;

    const-string v1, "No corresponding native ad listener"

    move-object/from16 v3, v17

    invoke-direct {v0, v3, v1}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, v17

    .line 118
    new-instance v0, Lz22;

    const-string v1, "No native ad mappers"

    invoke-direct {v0, v3, v1}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 119
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception v0

    move-object v2, v1

    .line 120
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_3
    move-exception v0

    move-object v2, v1

    .line 121
    new-instance v1, Lpl2;

    invoke-direct {v1, v0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lzl2;",
            "Lg12;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Le22;->a:Landroid/content/Context;

    iget-object v2, p1, Lhl2;->a:Lcl2;

    iget-object v2, v2, Lcl2;->a:Lll2;

    iget-object v5, v2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p2, Lsk2;->r:Lzk2;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p3, Lmz1;->c:Llb1;

    move-object v8, p2

    check-cast v8, Lng0;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v9, p1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object v10, p1, Lll2;->g:Ljava/util/ArrayList;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v3, v0, Lzl2;->a:Lig0;

    .line 6
    new-instance v4, Ly20;

    invoke-direct {v4, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface/range {v3 .. v10}, Lig0;->j1(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;Lcom/google/android/gms/internal/ads/zzaei;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
