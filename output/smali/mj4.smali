.class public abstract Lmj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lmj4<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lpj4<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lam4;"
    }
.end annotation


# instance fields
.field public zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmj4;->zza:I

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d()[B
    .locals 7

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lpk4;

    invoke-virtual {v0}, Lpk4;->i()I

    move-result v1

    new-array v2, v1, [B

    .line 2
    sget-object v3, Lck4;->b:Ljava/util/logging/Logger;

    .line 3
    new-instance v3, Lck4$a;

    invoke-direct {v3, v2, v1}, Lck4$a;-><init>([BI)V

    .line 4
    invoke-virtual {v0, v3}, Lpk4;->b(Lck4;)V

    .line 5
    invoke-virtual {v3}, Lck4$a;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    add-int/lit8 v3, v3, 0xa

    const-string v4, "Serializing "

    const-string v5, " to a "

    const-string v6, "byte array"

    invoke-static {v3, v4, v2, v5, v6}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final h()Lvj4;
    .locals 7

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lpk4;

    invoke-virtual {v0}, Lpk4;->i()I

    move-result v1

    .line 2
    sget-object v2, Lvj4;->f:Lvj4;

    .line 3
    new-array v2, v1, [B

    .line 4
    sget-object v3, Lck4;->b:Ljava/util/logging/Logger;

    .line 5
    new-instance v3, Lck4$a;

    invoke-direct {v3, v2, v1}, Lck4$a;-><init>([BI)V

    .line 6
    invoke-virtual {v0, v3}, Lpk4;->b(Lck4;)V

    .line 7
    invoke-virtual {v3}, Lck4;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lak4;

    invoke-direct {v0, v2}, Lak4;-><init>([B)V

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    add-int/lit8 v4, v4, 0xa

    const-string v5, "Serializing "

    const-string v6, " to a "

    invoke-static {v4, v5, v3, v6, v2}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
