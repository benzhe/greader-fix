.class public final synthetic Lk72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Ll72;

.field public final f:Ljava/util/List;

.field public final g:Lx20;


# direct methods
.method public constructor <init>(Ll72;Ljava/util/List;Lx20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk72;->e:Ll72;

    iput-object p2, p0, Lk72;->f:Ljava/util/List;

    iput-object p3, p0, Lk72;->g:Lx20;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lk72;->e:Ll72;

    iget-object v1, p0, Lk72;->f:Ljava/util/List;

    iget-object v2, p0, Lk72;->g:Lx20;

    .line 1
    iget-object v3, v0, Ll72;->h:Ld23;

    .line 2
    iget-object v3, v3, Ld23;->b:Lws2;

    if-eqz v3, :cond_0

    .line 3
    iget-object v0, v0, Ll72;->g:Landroid/content/Context;

    .line 4
    invoke-static {v2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lws2;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 8
    sget-object v4, Ll72;->r:Ljava/util/List;

    sget-object v5, Ll72;->s:Ljava/util/List;

    invoke-static {v3, v4, v5}, Ll72;->X6(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not a Google URL: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis0;->zzez(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "ms"

    .line 11
    invoke-static {v3, v4, v0}, Ll72;->W6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty impression URLs result."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to get view signals."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
