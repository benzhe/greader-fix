.class public final synthetic Lsa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lta2;


# direct methods
.method public constructor <init>(Lta2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa2;->e:Lta2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lsa2;->e:Lta2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lua2;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, v0, Lta2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Ly40;->H3:Lo40;

    .line 5
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, v0, Lta2;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "mobileads_consent"

    .line 9
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "fc_consent"

    .line 10
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v0, Lta2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaz(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Lua2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lva2;)V

    return-object v1
.end method
