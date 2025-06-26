.class public final synthetic Llo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lio1;


# direct methods
.method public constructor <init>(Lio1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo1;->a:Lio1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Llo1;->a:Lio1;

    move-object/from16 v2, p1

    check-cast v2, Lxw0;

    .line 1
    iget-object v3, v1, Lio1;->i:Lvb0;

    const-string v4, "/result"

    invoke-interface {v2, v4, v3}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 2
    invoke-interface {v2}, Lxw0;->I()Lhy0;

    move-result-object v3

    iget-object v9, v1, Lio1;->a:Lqo1;

    new-instance v12, Lcom/google/android/gms/ads/internal/zza;

    iget-object v4, v1, Lio1;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5, v5}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lnp0;Lcom/google/android/gms/internal/ads/zzatu;)V

    iget-object v15, v1, Lio1;->j:Lsy1;

    iget-object v14, v1, Lio1;->k:Ljq2;

    iget-object v13, v1, Lio1;->d:Lns1;

    iget-object v1, v1, Lio1;->e:Lpp2;

    .line 3
    move-object v4, v3

    check-cast v4, Lww0;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    move-object/from16 v17, v13

    move-object v13, v3

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v3

    move-object/from16 v18, v1

    invoke-virtual/range {v4 .. v18}, Lww0;->z(Ler3;Lra0;Lcom/google/android/gms/ads/internal/overlay/zzp;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLob0;Lcom/google/android/gms/ads/internal/zza;Lyp1;Lnp0;Lsy1;Ljq2;Lns1;Lpp2;)V

    return-object v2
.end method
