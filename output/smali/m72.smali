.class public final synthetic Lm72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Ll72;

.field public final f:Landroid/net/Uri;

.field public final g:Lx20;


# direct methods
.method public constructor <init>(Ll72;Landroid/net/Uri;Lx20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm72;->e:Ll72;

    iput-object p2, p0, Lm72;->f:Landroid/net/Uri;

    iput-object p3, p0, Lm72;->g:Lx20;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lm72;->e:Ll72;

    iget-object v1, p0, Lm72;->f:Landroid/net/Uri;

    iget-object v2, p0, Lm72;->g:Lx20;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v3, v0, Ll72;->h:Ld23;

    iget-object v0, v0, Ll72;->g:Landroid/content/Context;

    .line 3
    invoke-static {v2}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v1, v0, v2, v4}, Ld23;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Lf13; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 5
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "ms"

    .line 6
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to append spam signals to click url."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
