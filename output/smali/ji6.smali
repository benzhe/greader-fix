.class public abstract Lji6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lak6;",
        ">",
        "Ljava/lang/Object;",
        "Lik6<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field public static final a:Lyi6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lyi6;->a()Lyi6;

    move-result-object v0

    sput-object v0, Lji6;->a:Lyi6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lji6;->a:Lyi6;

    .line 2
    invoke-static {p1}, Lri6;->f(Ljava/io/InputStream;)Lri6;

    move-result-object p1

    .line 3
    move-object v1, p0

    check-cast v1, Lgj6$b;

    .line 4
    iget-object v1, v1, Lgj6$b;->b:Lgj6;

    invoke-static {v1, p1, v0}, Lgj6;->y(Lgj6;Lri6;Lyi6;)Lgj6;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Lri6;->a(I)V
    :try_end_0
    .catch Lkj6; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v0}, Lji6;->c(Lak6;)Lak6;

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    throw p1
.end method

.method public b(Lri6;Lyi6;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lgj6$b;

    .line 2
    iget-object v0, v0, Lgj6$b;->b:Lgj6;

    invoke-static {v0, p1, p2}, Lgj6;->y(Lgj6;Lri6;Lyi6;)Lgj6;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lji6;->c(Lak6;)Lak6;

    return-object p1
.end method

.method public final c(Lak6;)Lak6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lbk6;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Lii6;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lii6;

    .line 4
    new-instance v0, Lxk6;

    invoke-direct {v0}, Lxk6;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lxk6;

    invoke-direct {v0}, Lxk6;-><init>()V

    .line 6
    :goto_0
    new-instance v1, Lkj6;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkj6;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p1, v1, Lkj6;->e:Lak6;

    .line 8
    throw v1

    :cond_1
    return-object p1
.end method
