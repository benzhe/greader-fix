.class public abstract Lsw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lsw3;

.field public static final g:Lvw3;


# instance fields
.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lww3;

    sget-object v1, Lux3;->b:[B

    invoke-direct {v0, v1}, Lww3;-><init>([B)V

    sput-object v0, Lsw3;->f:Lsw3;

    invoke-static {}, Lnw3;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lxw3;

    invoke-direct {v0, v1}, Lxw3;-><init>(Ltw3;)V

    goto :goto_0

    :cond_0
    new-instance v0, Luw3;

    invoke-direct {v0, v1}, Luw3;-><init>(Ltw3;)V

    :goto_0
    sput-object v0, Lsw3;->g:Lvw3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsw3;->e:I

    return-void
.end method

.method public static n([BII)Lsw3;
    .locals 2

    new-instance v0, Lww3;

    sget-object v1, Lsw3;->g:Lvw3;

    invoke-interface {v1, p0, p1, p2}, Lvw3;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lww3;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract d(III)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract h(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lsw3;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsw3;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lsw3;->d(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lsw3;->e:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ltw3;

    invoke-direct {v0, p0}, Ltw3;-><init>(Lsw3;)V

    return-object v0
.end method

.method public abstract j(Lrw3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()Z
.end method

.method public abstract o(I)B
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lsw3;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
