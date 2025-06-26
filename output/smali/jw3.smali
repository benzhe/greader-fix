.class public abstract Ljw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxy3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ljw3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lkw3<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lxy3;"
    }
.end annotation


# static fields
.field private static zzey:Z = false


# instance fields
.field public zzex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljw3;->zzex:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final l()Lsw3;
    .locals 7

    :try_start_0
    move-object v0, p0

    check-cast v0, Lsx3;

    invoke-virtual {v0}, Lsx3;->o()I

    move-result v1

    .line 1
    sget-object v2, Lsw3;->f:Lsw3;

    .line 2
    new-array v2, v1, [B

    .line 3
    sget-object v3, Lzw3;->b:Ljava/util/logging/Logger;

    new-instance v3, Lzw3$a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lzw3$a;-><init>([BII)V

    .line 4
    invoke-virtual {v0, v3}, Lsx3;->q(Lzw3;)V

    .line 5
    invoke-virtual {v3}, Lzw3;->l()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lww3;

    invoke-direct {v0, v2}, Lww3;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

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

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
