.class public final synthetic Lh12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Li12;

.field public final b:Lsk2;

.field public final c:Lhl2;

.field public final d:Lcq1;


# direct methods
.method public constructor <init>(Li12;Lsk2;Lhl2;Lcq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh12;->a:Li12;

    iput-object p2, p0, Lh12;->b:Lsk2;

    iput-object p3, p0, Lh12;->c:Lhl2;

    iput-object p4, p0, Lh12;->d:Lcq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lh12;->a:Li12;

    iget-object v12, v0, Lh12;->b:Lsk2;

    iget-object v2, v0, Lh12;->c:Lhl2;

    iget-object v3, v0, Lh12;->d:Lcq1;

    .line 1
    iget-object v4, v1, Li12;->b:Lmp1;

    iget-object v5, v1, Li12;->d:Lll2;

    iget-object v5, v5, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v6, v2, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    .line 2
    invoke-virtual {v4, v5, v12, v6}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v13

    .line 3
    iget-boolean v4, v12, Lsk2;->Q:Z

    invoke-interface {v13, v4}, Lxw0;->g0(Z)V

    .line 4
    invoke-interface {v13}, Lxw0;->getView()Landroid/view/View;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v14, Lxs0;

    invoke-direct {v14}, Lxs0;-><init>()V

    .line 7
    iget-object v15, v1, Li12;->c:Loh1;

    new-instance v11, Lv61;

    const/4 v10, 0x0

    invoke-direct {v11, v2, v12, v10}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v9, Lrg1;

    new-instance v8, Lo12;

    iget-object v3, v1, Li12;->a:Landroid/content/Context;

    iget-object v4, v1, Li12;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v7, v1, Li12;->d:Lll2;

    iget-boolean v6, v1, Li12;->h:Z

    iget-object v5, v1, Li12;->g:Lob0;

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v17, v5

    move-object v5, v14

    move/from16 v18, v6

    move-object v6, v12

    move-object/from16 v19, v7

    move-object v7, v13

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    move-object/from16 v21, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move-object v0, v11

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lo12;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Law2;Lsk2;Lxw0;Lll2;ZLob0;Ll12;)V

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    invoke-direct {v2, v3, v13}, Lrg1;-><init>(Lwh1;Lxw0;)V

    .line 8
    invoke-virtual {v15, v0, v2}, Loh1;->a(Lv61;Lrg1;)Lsg1;

    move-result-object v0

    .line 9
    invoke-virtual {v14, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lh61;->d()Lqa1;

    move-result-object v2

    new-instance v3, Lj12;

    invoke-direct {v3, v13}, Lj12;-><init>(Lxw0;)V

    .line 11
    sget-object v4, Lms0;->f:Lzv2;

    .line 12
    invoke-virtual {v2, v3, v4}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 13
    invoke-virtual {v0}, Lsg1;->h()Lop1;

    move-result-object v2

    const/4 v3, 0x1

    .line 14
    iget-boolean v4, v1, Li12;->h:Z

    if-eqz v4, :cond_0

    iget-object v10, v1, Li12;->g:Lob0;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v18

    .line 15
    :goto_0
    invoke-virtual {v2, v13, v3, v10}, Lop1;->b(Lxw0;ZLob0;)V

    .line 16
    invoke-virtual {v0}, Lsg1;->h()Lop1;

    iget-object v2, v12, Lsk2;->r:Lzk2;

    iget-object v3, v2, Lzk2;->b:Ljava/lang/String;

    iget-object v2, v2, Lzk2;->a:Ljava/lang/String;

    .line 17
    invoke-static {v13, v3, v2}, Lop1;->a(Lxw0;Ljava/lang/String;Ljava/lang/String;)Law2;

    move-result-object v2

    .line 18
    new-instance v3, Lm12;

    invoke-direct {v3, v1, v13, v12, v0}, Lm12;-><init>(Li12;Lxw0;Lsk2;Lsg1;)V

    iget-object v0, v1, Li12;->e:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
