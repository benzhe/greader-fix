.class public abstract Let7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvt7;


# instance fields
.field private final delegate:Lvt7;


# direct methods
.method public constructor <init>(Lvt7;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Let7;->delegate:Lvt7;

    return-void
.end method


# virtual methods
.method public final -deprecated_delegate()Lvt7;
    .locals 1

    .line 1
    iget-object v0, p0, Let7;->delegate:Lvt7;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Let7;->delegate:Lvt7;

    invoke-interface {v0}, Lvt7;->close()V

    return-void
.end method

.method public final delegate()Lvt7;
    .locals 1

    .line 1
    iget-object v0, p0, Let7;->delegate:Lvt7;

    return-object v0
.end method

.method public read(Lxs7;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Let7;->delegate:Lvt7;

    invoke-interface {v0, p1, p2, p3}, Lvt7;->read(Lxs7;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Let7;->delegate:Lvt7;

    invoke-interface {v0}, Lvt7;->timeout()Lwt7;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Let7;->delegate:Lvt7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
