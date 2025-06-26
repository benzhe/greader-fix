.class public final synthetic Lmy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Lny1;

.field public final b:Z


# direct methods
.method public constructor <init>(Lny1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy1;->a:Lny1;

    iput-boolean p2, p0, Lmy1;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lmy1;->a:Lny1;

    iget-boolean v2, v0, Lmy1;->b:Z

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2
    iget-object v1, v1, Lny1;->b:Landroid/content/Context;

    const-string v2, "OfflineUpload.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 3
    :cond_0
    sget-object v2, Ly40;->e5:Lo40;

    .line 4
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v5, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    const-string v2, "oa_upload"

    .line 7
    invoke-static {v2}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v2

    .line 8
    invoke-static {v3, v6}, Lc50;->Y0(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object v8, v2, Lqp2;->a:Ljava/util/HashMap;

    const-string v9, "oa_failed_reqs"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v3, v5}, Lc50;->Y0(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 12
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v7, v2, Lqp2;->a:Ljava/util/HashMap;

    const-string v8, "oa_total_reqs"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v5

    invoke-interface {v5}, Lb20;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 15
    iget-object v7, v2, Lqp2;->a:Ljava/util/HashMap;

    const-string v8, "oa_upload_time"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v3}, Lc50;->Q2(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v7

    .line 17
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v7, v2, Lqp2;->a:Ljava/util/HashMap;

    const-string v8, "oa_last_successful_time"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, v1, Lny1;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v5

    const-string v7, ""

    if-eqz v5, :cond_1

    move-object v5, v7

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lny1;->e:Ljava/lang/String;

    .line 20
    :goto_0
    iget-object v8, v2, Lqp2;->a:Ljava/util/HashMap;

    const-string v9, "oa_session_id"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v5, v1, Lny1;->f:Lpp2;

    invoke-interface {v5, v2}, Lpp2;->b(Lqp2;)V

    .line 22
    invoke-static {v3}, Lc50;->V1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 23
    invoke-static {v3, v2}, Lny1;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_12

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Leq3$a;

    const-string v11, "oa_signals"

    .line 25
    invoke-static {v11}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v11

    .line 26
    iget-object v12, v1, Lny1;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v12}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v7

    goto :goto_2

    :cond_2
    iget-object v12, v1, Lny1;->e:Ljava/lang/String;

    .line 27
    :goto_2
    iget-object v13, v11, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v10}, Leq3$a;->Q()Lcq3;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lcq3;->z()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Lcq3;->A()Lcq3$c;

    move-result-object v13

    .line 30
    iget v13, v13, Lcq3$c;->e:I

    .line 31
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    const-string v13, "-1"

    .line 32
    :goto_3
    invoke-virtual {v10}, Leq3$a;->P()Ljava/util/List;

    move-result-object v14

    sget-object v15, Lqy1;->a:Lvs2;

    .line 33
    instance-of v4, v14, Ljava/util/RandomAccess;

    if-eqz v4, :cond_4

    .line 34
    new-instance v4, Lut2;

    invoke-direct {v4, v14, v15}, Lut2;-><init>(Ljava/util/List;Lvs2;)V

    goto :goto_4

    .line 35
    :cond_4
    new-instance v4, Lwt2;

    invoke-direct {v4, v14, v15}, Lwt2;-><init>(Ljava/util/List;Lvs2;)V

    .line 36
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v10}, Leq3$a;->x()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 38
    iget-object v15, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v6, "oa_sig_ts"

    invoke-virtual {v15, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v10}, Leq3$a;->M()Lvq3;

    move-result-object v6

    .line 40
    iget v6, v6, Lvq3;->e:I

    .line 41
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    iget-object v14, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v15, "oa_sig_status"

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v10}, Leq3$a;->N()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 44
    iget-object v14, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v15, "oa_sig_resp_lat"

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v10}, Leq3$a;->O()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 46
    iget-object v14, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v15, "oa_sig_render_lat"

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v14, "oa_sig_formats"

    invoke-virtual {v6, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v4, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v6, "oa_sig_nw_type"

    invoke-virtual {v4, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v10}, Leq3$a;->R()Lvq3;

    move-result-object v4

    .line 50
    iget v4, v4, Lvq3;->e:I

    .line 51
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v13, "oa_sig_wifi"

    invoke-virtual {v6, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v10}, Leq3$a;->S()Lvq3;

    move-result-object v4

    .line 54
    iget v4, v4, Lvq3;->e:I

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v13, "oa_sig_airplane"

    invoke-virtual {v6, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v10}, Leq3$a;->T()Lvq3;

    move-result-object v4

    .line 58
    iget v4, v4, Lvq3;->e:I

    .line 59
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v13, "oa_sig_data"

    invoke-virtual {v6, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v10}, Leq3$a;->U()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v13, "oa_sig_nw_resp"

    invoke-virtual {v6, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v10}, Leq3$a;->V()Lvq3;

    move-result-object v4

    .line 64
    iget v4, v4, Lvq3;->e:I

    .line 65
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v13, "oa_sig_offline"

    invoke-virtual {v6, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v10}, Leq3$a;->W()Leq3$b;

    move-result-object v4

    .line 68
    iget v4, v4, Leq3$b;->e:I

    .line 69
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v10, "oa_sig_nw_state"

    invoke-virtual {v6, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v12}, Lcq3;->B()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 72
    invoke-virtual {v12}, Lcq3;->z()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    invoke-virtual {v12}, Lcq3;->A()Lcq3$c;

    move-result-object v4

    sget-object v6, Lcq3$c;->g:Lcq3$c;

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    invoke-virtual {v12}, Lcq3;->D()Lcq3$b;

    move-result-object v4

    .line 75
    iget v4, v4, Lcq3$b;->e:I

    .line 76
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    iget-object v6, v11, Lqp2;->a:Ljava/util/HashMap;

    const-string v10, "oa_sig_cell_type"

    invoke-virtual {v6, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    iget-object v4, v1, Lny1;->f:Lpp2;

    invoke-interface {v4, v11}, Lpp2;->b(Lqp2;)V

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 79
    :cond_6
    invoke-static {v3}, Lc50;->V1(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 80
    invoke-static {}, Leq3;->F()Leq3$c;

    move-result-object v4

    iget-object v6, v1, Lny1;->b:Landroid/content/Context;

    .line 81
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 82
    iget-boolean v7, v4, Ls63$b;->g:Z

    if-eqz v7, :cond_7

    .line 83
    invoke-virtual {v4}, Ls63$b;->o()V

    const/4 v7, 0x0

    .line 84
    iput-boolean v7, v4, Ls63$b;->g:Z

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 85
    :goto_5
    iget-object v8, v4, Ls63$b;->f:Ls63;

    check-cast v8, Leq3;

    invoke-static {v8, v6}, Leq3;->A(Leq3;Ljava/lang/String;)V

    .line 86
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 87
    iget-boolean v8, v4, Ls63$b;->g:Z

    if-eqz v8, :cond_8

    .line 88
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 89
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 90
    :cond_8
    iget-object v8, v4, Ls63$b;->f:Ls63;

    check-cast v8, Leq3;

    invoke-static {v8, v6}, Leq3;->E(Leq3;Ljava/lang/String;)V

    .line 91
    invoke-static {v3, v7}, Lc50;->Y0(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 92
    iget-boolean v8, v4, Ls63$b;->g:Z

    if-eqz v8, :cond_9

    .line 93
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 94
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 95
    :cond_9
    iget-object v8, v4, Ls63$b;->f:Ls63;

    check-cast v8, Leq3;

    invoke-static {v8, v6}, Leq3;->x(Leq3;I)V

    .line 96
    iget-boolean v6, v4, Ls63$b;->g:Z

    if-eqz v6, :cond_a

    .line 97
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 98
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 99
    :cond_a
    iget-object v6, v4, Ls63$b;->f:Ls63;

    check-cast v6, Leq3;

    invoke-static {v6, v2}, Leq3;->z(Leq3;Ljava/lang/Iterable;)V

    .line 100
    invoke-static {v3, v5}, Lc50;->Y0(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 101
    iget-boolean v6, v4, Ls63$b;->g:Z

    if-eqz v6, :cond_b

    .line 102
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 103
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 104
    :cond_b
    iget-object v6, v4, Ls63$b;->f:Ls63;

    check-cast v6, Leq3;

    invoke-static {v6, v5}, Leq3;->B(Leq3;I)V

    .line 105
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v5

    invoke-interface {v5}, Lb20;->a()J

    move-result-wide v5

    .line 106
    iget-boolean v8, v4, Ls63$b;->g:Z

    if-eqz v8, :cond_c

    .line 107
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 108
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 109
    :cond_c
    iget-object v8, v4, Ls63$b;->f:Ls63;

    check-cast v8, Leq3;

    invoke-static {v8, v5, v6}, Leq3;->y(Leq3;J)V

    .line 110
    invoke-static {v3}, Lc50;->Q2(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v5

    .line 111
    iget-boolean v8, v4, Ls63$b;->g:Z

    if-eqz v8, :cond_d

    .line 112
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 113
    iput-boolean v7, v4, Ls63$b;->g:Z

    .line 114
    :cond_d
    iget-object v7, v4, Ls63$b;->f:Ls63;

    check-cast v7, Leq3;

    invoke-static {v7, v5, v6}, Leq3;->D(Leq3;J)V

    .line 115
    invoke-virtual {v4}, Ls63$b;->j()Le83;

    move-result-object v4

    check-cast v4, Ls63;

    check-cast v4, Leq3;

    .line 116
    invoke-static {v3, v2}, Lny1;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 117
    iget-object v2, v1, Lny1;->a:Lep3;

    new-instance v5, Lpy1;

    invoke-direct {v5, v4}, Lpy1;-><init>(Leq3;)V

    invoke-virtual {v2, v5}, Lep3;->a(Ldp3;)V

    .line 118
    invoke-static {}, Lkq3;->A()Lkq3$a;

    move-result-object v2

    iget-object v4, v1, Lny1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->f:I

    .line 119
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_e

    .line 120
    invoke-virtual {v2}, Ls63$b;->o()V

    const/4 v5, 0x0

    .line 121
    iput-boolean v5, v2, Ls63$b;->g:Z

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    .line 122
    :goto_6
    iget-object v6, v2, Ls63$b;->f:Ls63;

    check-cast v6, Lkq3;

    invoke-static {v6, v4}, Lkq3;->x(Lkq3;I)V

    .line 123
    iget-object v4, v1, Lny1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    .line 124
    iget-boolean v6, v2, Ls63$b;->g:Z

    if-eqz v6, :cond_f

    .line 125
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 126
    iput-boolean v5, v2, Ls63$b;->g:Z

    .line 127
    :cond_f
    iget-object v5, v2, Ls63$b;->f:Ls63;

    check-cast v5, Lkq3;

    invoke-static {v5, v4}, Lkq3;->y(Lkq3;I)V

    .line 128
    iget-object v4, v1, Lny1;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->h:Z

    if-eqz v4, :cond_10

    const/4 v7, 0x0

    goto :goto_7

    :cond_10
    const/4 v4, 0x2

    const/4 v7, 0x2

    .line 129
    :goto_7
    iget-boolean v4, v2, Ls63$b;->g:Z

    if-eqz v4, :cond_11

    .line 130
    invoke-virtual {v2}, Ls63$b;->o()V

    const/4 v4, 0x0

    .line 131
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 132
    :cond_11
    iget-object v4, v2, Ls63$b;->f:Ls63;

    check-cast v4, Lkq3;

    invoke-static {v4, v7}, Lkq3;->z(Lkq3;I)V

    .line 133
    invoke-virtual {v2}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lkq3;

    .line 134
    iget-object v4, v1, Lny1;->a:Lep3;

    new-instance v5, Loy1;

    invoke-direct {v5, v2}, Loy1;-><init>(Lkq3;)V

    invoke-virtual {v4, v5}, Lep3;->a(Ldp3;)V

    .line 135
    iget-object v1, v1, Lny1;->a:Lep3;

    sget-object v2, Lgp3;->Z:Lgp3;

    invoke-virtual {v1, v2}, Lep3;->b(Lgp3;)V

    :cond_12
    const-string v1, "offline_signal_contents"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v3, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "failed_requests"

    .line 139
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "offline_signal_statistics"

    const-string v7, "statistic_name = ?"

    invoke-virtual {v3, v6, v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "total_requests"

    .line 142
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method
