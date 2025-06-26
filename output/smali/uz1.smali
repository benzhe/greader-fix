.class public final synthetic Luz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lrz1;

.field public final b:Lsk2;

.field public final c:Lhl2;

.field public final d:Lcq1;


# direct methods
.method public constructor <init>(Lrz1;Lsk2;Lhl2;Lcq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz1;->a:Lrz1;

    iput-object p2, p0, Luz1;->b:Lsk2;

    iput-object p3, p0, Luz1;->c:Lhl2;

    iput-object p4, p0, Luz1;->d:Lcq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Luz1;->a:Lrz1;

    iget-object v10, v0, Luz1;->b:Lsk2;

    iget-object v2, v0, Luz1;->c:Lhl2;

    iget-object v3, v0, Luz1;->d:Lcq1;

    .line 1
    iget-object v4, v1, Lrz1;->c:Lmp1;

    iget-object v5, v1, Lrz1;->d:Lll2;

    iget-object v5, v5, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, v2, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    .line 2
    invoke-virtual {v4, v5, v10, v6}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v11

    .line 3
    iget-boolean v4, v10, Lsk2;->Q:Z

    invoke-interface {v11, v4}, Lxw0;->g0(Z)V

    .line 4
    invoke-interface {v11}, Lxw0;->getView()Landroid/view/View;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v12, Lxs0;

    invoke-direct {v12}, Lxs0;-><init>()V

    .line 7
    iget-object v13, v1, Lrz1;->a:Ly31;

    new-instance v14, Lv61;

    const/4 v15, 0x0

    invoke-direct {v14, v2, v10, v15}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v9, Lrg1;

    new-instance v8, Lxz1;

    iget-object v3, v1, Lrz1;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v7, v1, Lrz1;->d:Lll2;

    iget-boolean v6, v1, Lrz1;->h:Z

    iget-object v5, v1, Lrz1;->g:Lob0;

    move-object v2, v8

    move-object v4, v12

    move-object/from16 v16, v5

    move-object v5, v10

    move/from16 v17, v6

    move-object v6, v11

    move-object v15, v8

    move/from16 v8, v17

    move-object v0, v9

    move-object/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Lxz1;-><init>(Lcom/google/android/gms/internal/ads/zzbar;Law2;Lsk2;Lxw0;Lll2;ZLob0;)V

    invoke-direct {v0, v15, v11}, Lrg1;-><init>(Lwh1;Lxw0;)V

    new-instance v2, Lw31;

    iget v3, v10, Lsk2;->U:I

    invoke-direct {v2, v3}, Lw31;-><init>(I)V

    .line 8
    invoke-virtual {v13, v14, v0, v2}, Ly31;->e(Lv61;Lrg1;Lw31;)Lx31;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lx31;->i()Lop1;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    iget-boolean v4, v1, Lrz1;->h:Z

    if-eqz v4, :cond_0

    iget-object v15, v1, Lrz1;->g:Lob0;

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 11
    :goto_0
    invoke-virtual {v2, v11, v3, v15}, Lop1;->b(Lxw0;ZLob0;)V

    .line 12
    invoke-virtual {v12, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lh61;->d()Lqa1;

    move-result-object v2

    new-instance v3, Lwz1;

    invoke-direct {v3, v11}, Lwz1;-><init>(Lxw0;)V

    .line 14
    sget-object v4, Lms0;->f:Lzv2;

    .line 15
    invoke-virtual {v2, v3, v4}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 16
    invoke-virtual {v0}, Lx31;->i()Lop1;

    iget-object v2, v10, Lsk2;->r:Lzk2;

    iget-object v3, v2, Lzk2;->b:Ljava/lang/String;

    iget-object v2, v2, Lzk2;->a:Ljava/lang/String;

    .line 17
    invoke-static {v11, v3, v2}, Lop1;->a(Lxw0;Ljava/lang/String;Ljava/lang/String;)Law2;

    move-result-object v2

    .line 18
    new-instance v3, Lvz1;

    invoke-direct {v3, v1, v11, v10, v0}, Lvz1;-><init>(Lrz1;Lxw0;Lsk2;Lx31;)V

    iget-object v0, v1, Lrz1;->e:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
