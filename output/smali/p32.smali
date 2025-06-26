.class public final synthetic Lp32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lm32;

.field public final b:Lsk2;

.field public final c:Lhl2;

.field public final d:Lcq1;


# direct methods
.method public constructor <init>(Lm32;Lsk2;Lhl2;Lcq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp32;->a:Lm32;

    iput-object p2, p0, Lp32;->b:Lsk2;

    iput-object p3, p0, Lp32;->c:Lhl2;

    iput-object p4, p0, Lp32;->d:Lcq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lp32;->a:Lm32;

    iget-object v13, v0, Lp32;->b:Lsk2;

    iget-object v2, v0, Lp32;->c:Lhl2;

    iget-object v3, v0, Lp32;->d:Lcq1;

    .line 1
    iget-object v4, v1, Lm32;->b:Lmp1;

    iget-object v5, v1, Lm32;->d:Lll2;

    iget-object v5, v5, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, v2, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    .line 2
    invoke-virtual {v4, v5, v13, v6}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v14

    .line 3
    iget-boolean v4, v13, Lsk2;->Q:Z

    invoke-interface {v14, v4}, Lxw0;->g0(Z)V

    .line 4
    invoke-interface {v14}, Lxw0;->getView()Landroid/view/View;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v15, Lxs0;

    invoke-direct {v15}, Lxs0;-><init>()V

    .line 7
    iget-object v12, v1, Lm32;->c:Lgp1;

    new-instance v11, Lv61;

    const/4 v10, 0x0

    invoke-direct {v11, v2, v13, v10}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v9, Lep1;

    new-instance v8, Ls32;

    iget-object v3, v1, Lm32;->a:Landroid/content/Context;

    iget-object v4, v1, Lm32;->b:Lmp1;

    iget-object v5, v1, Lm32;->d:Lll2;

    iget-object v6, v1, Lm32;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v7, v1, Lm32;->g:Lob0;

    iget-boolean v2, v1, Lm32;->h:Z

    const/16 v16, 0x0

    move/from16 v17, v2

    move-object v2, v8

    move-object/from16 v18, v7

    move-object v7, v13

    move-object/from16 v19, v8

    move-object v8, v15

    move-object/from16 v20, v9

    move-object v9, v14

    move-object/from16 v21, v10

    move-object/from16 v10, v18

    move-object v0, v11

    move/from16 v11, v17

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Ls32;-><init>(Landroid/content/Context;Lmp1;Lll2;Lcom/google/android/gms/internal/ads/zzbar;Lsk2;Law2;Lxw0;Lob0;ZLt32;)V

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    invoke-direct {v2, v3, v14}, Lep1;-><init>(Lwh1;Lxw0;)V

    .line 8
    invoke-virtual {v13, v0, v2}, Lgp1;->e(Lv61;Lep1;)Lfp1;

    move-result-object v0

    .line 9
    invoke-virtual {v15, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lfp1;->l()Lcg1;

    move-result-object v2

    .line 11
    new-instance v3, Lac0;

    invoke-direct {v3, v2}, Lac0;-><init>(Lzb0;)V

    const-string v2, "/reward"

    invoke-interface {v14, v2, v3}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 12
    invoke-virtual {v0}, Lh61;->d()Lqa1;

    move-result-object v2

    new-instance v3, Lr32;

    invoke-direct {v3, v14}, Lr32;-><init>(Lxw0;)V

    .line 13
    sget-object v4, Lms0;->f:Lzv2;

    .line 14
    invoke-virtual {v2, v3, v4}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 15
    invoke-virtual {v0}, Lfp1;->h()Lop1;

    move-result-object v2

    const/4 v3, 0x1

    .line 16
    iget-boolean v4, v1, Lm32;->h:Z

    if-eqz v4, :cond_0

    iget-object v10, v1, Lm32;->g:Lob0;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v21

    .line 17
    :goto_0
    invoke-virtual {v2, v14, v3, v10}, Lop1;->b(Lxw0;ZLob0;)V

    .line 18
    invoke-virtual {v0}, Lfp1;->h()Lop1;

    move-object/from16 v2, v17

    iget-object v3, v2, Lsk2;->r:Lzk2;

    iget-object v4, v3, Lzk2;->b:Ljava/lang/String;

    iget-object v3, v3, Lzk2;->a:Ljava/lang/String;

    .line 19
    invoke-static {v14, v4, v3}, Lop1;->a(Lxw0;Ljava/lang/String;Ljava/lang/String;)Law2;

    move-result-object v3

    .line 20
    new-instance v4, Lq32;

    invoke-direct {v4, v1, v14, v2, v0}, Lq32;-><init>(Lm32;Lxw0;Lsk2;Lfp1;)V

    iget-object v0, v1, Lm32;->e:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
