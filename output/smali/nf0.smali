.class public final Lnf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb0;


# instance fields
.field public final a:Loe0;

.field public final b:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lmf0;


# direct methods
.method public constructor <init>(Lmf0;Loe0;Lxs0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe0;",
            "Lxs0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnf0;->c:Lmf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lnf0;->a:Loe0;

    .line 3
    iput-object p3, p0, Lnf0;->b:Lxs0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnf0;->b:Lxs0;

    iget-object v1, p0, Lnf0;->c:Lmf0;

    .line 2
    iget-object v1, v1, Lmf0;->a:Lbf0;

    .line 3
    invoke-interface {v1, p1}, Lbf0;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lnf0;->a:Loe0;

    invoke-virtual {p1}, Loe0;->d()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    iget-object v0, p0, Lnf0;->b:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lnf0;->a:Loe0;

    invoke-virtual {p1}, Loe0;->d()V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lnf0;->a:Loe0;

    invoke-virtual {v0}, Loe0;->d()V

    .line 8
    throw p1

    .line 9
    :catch_1
    iget-object p1, p0, Lnf0;->a:Loe0;

    invoke-virtual {p1}, Loe0;->d()V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lnf0;->b:Lxs0;

    new-instance v0, Laf0;

    invoke-direct {v0}, Laf0;-><init>()V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lnf0;->b:Lxs0;

    new-instance v1, Laf0;

    invoke-direct {v1, p1}, Laf0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object p1, p0, Lnf0;->a:Loe0;

    invoke-virtual {p1}, Loe0;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lnf0;->a:Loe0;

    invoke-virtual {v0}, Loe0;->d()V

    .line 5
    throw p1

    .line 6
    :catch_0
    iget-object p1, p0, Lnf0;->a:Loe0;

    invoke-virtual {p1}, Loe0;->d()V

    return-void
.end method
