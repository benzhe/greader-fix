.class public final Lws7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    sget-object v0, Lwt7;->NONE:Lwt7;

    return-object v0
.end method

.method public write(Lxs7;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2, p3}, Lxs7;->skip(J)V

    return-void
.end method
