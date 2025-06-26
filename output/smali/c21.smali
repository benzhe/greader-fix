.class public final Lc21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv11;


# instance fields
.field public final a:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbi(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    iput-object p1, p0, Lc21;->a:Landroid/webkit/CookieManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc21;->a:Landroid/webkit/CookieManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "clear"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3
    sget-object p1, Ly40;->x0:Lo40;

    .line 4
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v0, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lc21;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x3b

    .line 8
    new-instance v2, Lss2;

    invoke-direct {v2, v1}, Lss2;-><init>(C)V

    .line 9
    new-instance v1, Lbt2;

    new-instance v3, Ldt2;

    invoke-direct {v3, v2}, Ldt2;-><init>(Lqs2;)V

    invoke-direct {v1, v3}, Lbt2;-><init>(Ldt2;)V

    .line 10
    iget-object v2, v1, Lbt2;->b:Ldt2;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v3, Lct2;

    invoke-direct {v3, v2, v1, v0}, Lct2;-><init>(Ldt2;Lbt2;Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_0
    invoke-virtual {v3}, Let2;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v3}, Let2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 18
    iget-object v3, p0, Lc21;->a:Landroid/webkit/CookieManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x3d

    .line 19
    new-instance v6, Lss2;

    invoke-direct {v6, v5}, Lss2;-><init>(C)V

    .line 20
    new-instance v5, Lbt2;

    new-instance v7, Ldt2;

    invoke-direct {v7, v6}, Ldt2;-><init>(Lqs2;)V

    invoke-direct {v5, v7}, Lbt2;-><init>(Ldt2;)V

    .line 21
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v6, Lft2;

    invoke-direct {v6, v5, v4}, Lft2;-><init>(Lbt2;Ljava/lang/CharSequence;)V

    .line 23
    instance-of v4, v6, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 24
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v6}, Lft2;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "numberToAdvance must be nonnegative"

    .line 26
    invoke-static {v5, v6}, Lc50;->k(ZLjava/lang/Object;)V

    .line 27
    check-cast v4, Let2;

    invoke-virtual {v4}, Let2;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 28
    invoke-virtual {v4}, Let2;->next()Ljava/lang/Object;

    move-result-object v4

    .line 29
    :goto_2
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ly40;->n0:Lo40;

    .line 30
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 31
    invoke-virtual {v6, v5}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 33
    :goto_3
    invoke-virtual {v3, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x5b

    const-string v1, "position (0) must be less than the number of elements that remained (0"

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ljo;->O(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    :cond_6
    const-string v0, "cookie"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 37
    :cond_7
    iget-object v0, p0, Lc21;->a:Landroid/webkit/CookieManager;

    sget-object v1, Ly40;->x0:Lo40;

    .line 38
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 39
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
