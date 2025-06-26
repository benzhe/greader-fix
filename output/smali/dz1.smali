.class public final synthetic Ldz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final e:Lsy1;

.field public final f:Ljava/lang/String;

.field public final g:Lns1;

.field public final h:Landroid/app/Activity;

.field public final i:Lpp2;

.field public final j:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method public constructor <init>(Lsy1;Ljava/lang/String;Lns1;Landroid/app/Activity;Lpp2;Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldz1;->e:Lsy1;

    iput-object p2, p0, Ldz1;->f:Ljava/lang/String;

    iput-object p3, p0, Ldz1;->g:Lns1;

    iput-object p4, p0, Ldz1;->h:Landroid/app/Activity;

    iput-object p5, p0, Ldz1;->i:Lpp2;

    iput-object p6, p0, Ldz1;->j:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 8

    .line 1
    iget-object v3, p0, Ldz1;->e:Lsy1;

    iget-object v4, p0, Ldz1;->f:Ljava/lang/String;

    iget-object v1, p0, Ldz1;->g:Lns1;

    iget-object v0, p0, Ldz1;->h:Landroid/app/Activity;

    iget-object v2, p0, Ldz1;->i:Lpp2;

    iget-object p1, p0, Ldz1;->j:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 2
    invoke-virtual {v3, v4}, Lsy1;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v5, "dialog_action"

    const-string v7, "dismiss"

    .line 4
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dialog_click"

    .line 5
    invoke-static/range {v0 .. v6}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    :cond_1
    return-void
.end method
