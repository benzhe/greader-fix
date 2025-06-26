.class public final Ltv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcq0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcq0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltv1;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ltv1;->f:Lcq0;

    return-void
.end method


# virtual methods
.method public final M(Lhl2;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget-object v0, v0, Lwk2;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Ltv1;->f:Lcq0;

    iget-object v1, p0, Ltv1;->e:Landroid/content/Context;

    iget-object v2, p1, Lhl2;->a:Lcl2;

    iget-object v2, v2, Lcl2;->a:Lll2;

    iget-object v2, v2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Ly40;->f0:Lo40;

    .line 6
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v1}, Lcq0;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcq0;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Ltv1;->f:Lcq0;

    iget-object v1, p0, Ltv1;->e:Landroid/content/Context;

    iget-object p1, p1, Lhl2;->b:Lfl2;

    iget-object p1, p1, Lfl2;->b:Lwk2;

    iget-object p1, p1, Lwk2;->d:Ljava/lang/String;

    const-string v2, "_aq"

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, p1, v3}, Lcq0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    return-void
.end method
