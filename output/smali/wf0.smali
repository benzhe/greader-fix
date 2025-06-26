.class public final Lwf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb0;


# instance fields
.field public final a:Lxs0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Luf0;


# direct methods
.method public constructor <init>(Luf0;Lxs0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwf0;->b:Luf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lwf0;->a:Lxs0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lwf0;->a:Lxs0;

    iget-object v1, p0, Lwf0;->b:Luf0;

    .line 2
    iget-object v1, v1, Luf0;->a:Lbf0;

    .line 3
    invoke-interface {v1, p1}, Lbf0;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lwf0;->a:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lwf0;->a:Lxs0;

    new-instance v0, Laf0;

    invoke-direct {v0}, Laf0;-><init>()V

    invoke-virtual {p1, v0}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lwf0;->a:Lxs0;

    new-instance v1, Laf0;

    invoke-direct {v1, p1}, Laf0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
