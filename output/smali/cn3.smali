.class public final Lcn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lzm3;


# direct methods
.method public constructor <init>(Lzm3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn3;->f:Lzm3;

    iput-object p2, p0, Lcn3;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn3;->f:Lzm3;

    iget-object v1, p0, Lcn3;->e:Landroid/view/View;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    new-instance v11, Ltm3;

    iget v3, v0, Lzm3;->j:I

    iget v4, v0, Lzm3;->k:I

    iget v5, v0, Lzm3;->l:I

    iget v6, v0, Lzm3;->m:I

    iget v7, v0, Lzm3;->n:I

    iget v8, v0, Lzm3;->o:I

    iget v9, v0, Lzm3;->p:I

    iget-boolean v10, v0, Lzm3;->s:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ltm3;-><init>(IIIIIIIZ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v2

    invoke-virtual {v2}, Lvm3;->b()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v0, Lzm3;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Ly40;->O:Lo40;

    .line 7
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11
    iget-object v3, v0, Lzm3;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0, v1, v11}, Lzm3;->a(Landroid/view/View;Ltm3;)Ldn3;

    move-result-object v1

    .line 13
    invoke-virtual {v11}, Ltm3;->d()V

    .line 14
    iget v2, v1, Ldn3;->a:I

    if-nez v2, :cond_1

    iget v2, v1, Ldn3;->b:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget v1, v1, Ldn3;->b:I

    if-nez v1, :cond_2

    .line 16
    iget v2, v11, Ltm3;->k:I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 17
    iget-object v1, v0, Lzm3;->h:Lwm3;

    .line 18
    iget-object v2, v1, Lwm3;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v1, v1, Lwm3;->c:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 20
    monitor-exit v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 21
    monitor-exit v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 23
    :cond_4
    iget-object v0, v0, Lzm3;->h:Lwm3;

    invoke-virtual {v0, v11}, Lwm3;->b(Ltm3;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception in fetchContentOnUIThread"

    .line 24
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    const-string v2, "ContentFetchTask.fetchContent"

    .line 26
    iget-object v3, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    .line 27
    invoke-interface {v1, v0, v2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
