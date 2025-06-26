.class public final synthetic Lvk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ltk1;

.field public final f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ltk1;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk1;->e:Ltk1;

    iput-object p2, p0, Lvk1;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvk1;->e:Ltk1;

    iget-object v1, p0, Lvk1;->f:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v3}, Lwj1;->n()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 2
    iget-object v4, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v4}, Lwj1;->k()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Ltk1;->d:Lwj1;

    .line 3
    invoke-virtual {v3}, Lwj1;->k()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    .line 4
    iget-object v3, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v3}, Lwj1;->k()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 5
    iget-object v2, v0, Ltk1;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v3, v0, Ltk1;->b:Lll2;

    iget-object v3, v3, Lll2;->f:Ljava/lang/String;

    const-string v4, "2"

    .line 6
    invoke-interface {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object v2, v0, Ltk1;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v0, v0, Ltk1;->b:Lll2;

    iget-object v0, v0, Lll2;->f:Ljava/lang/String;

    const-string v3, "1"

    .line 8
    invoke-interface {v2, v0, v3, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget-object v2, v0, Ltk1;->a:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v3, v0, Ltk1;->b:Lll2;

    iget-object v3, v3, Lll2;->f:Ljava/lang/String;

    iget-object v0, v0, Ltk1;->d:Lwj1;

    .line 10
    invoke-virtual {v0}, Lwj1;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method
