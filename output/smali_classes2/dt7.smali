.class public abstract Ldt7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt7;


# instance fields
.field private final delegate:Ltt7;


# direct methods
.method public constructor <init>(Ltt7;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldt7;->delegate:Ltt7;

    return-void
.end method


# virtual methods
.method public final -deprecated_delegate()Ltt7;
    .locals 1

    .line 1
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

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
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

    invoke-interface {v0}, Ltt7;->close()V

    return-void
.end method

.method public final delegate()Ltt7;
    .locals 1

    .line 1
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

    invoke-interface {v0}, Ltt7;->flush()V

    return-void
.end method

.method public timeout()Lwt7;
    .locals 1

    .line 1
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

    invoke-interface {v0}, Ltt7;->timeout()Lwt7;

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

    iget-object v1, p0, Ldt7;->delegate:Ltt7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lxs7;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ldt7;->delegate:Ltt7;

    invoke-interface {v0, p1, p2, p3}, Ltt7;->write(Lxs7;J)V

    return-void
.end method
