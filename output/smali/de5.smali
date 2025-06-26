.class public abstract Lde5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde5$c;,
        Lde5$b;,
        Lde5$e;,
        Lde5$a;,
        Lde5$d;
    }
.end annotation


# static fields
.field public static final a:Lde5;

.field public static final b:Lde5;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lde5$c;

    const/16 v1, 0x3d

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lde5$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lde5;->a:Lde5;

    .line 3
    new-instance v0, Lde5$c;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lde5$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 5
    new-instance v0, Lde5$e;

    .line 6
    new-instance v2, Lde5$a;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32()"

    invoke-direct {v2, v4, v3}, Lde5$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lde5$e;-><init>(Lde5$a;Ljava/lang/Character;)V

    .line 7
    new-instance v0, Lde5$e;

    .line 8
    new-instance v2, Lde5$a;

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32Hex()"

    invoke-direct {v2, v4, v3}, Lde5$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lde5$e;-><init>(Lde5$a;Ljava/lang/Character;)V

    .line 9
    new-instance v0, Lde5$b;

    .line 10
    new-instance v1, Lde5$a;

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, Lde5$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lde5$b;-><init>(Lde5$a;)V

    .line 11
    sput-object v0, Lde5;->b:Lde5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lde5;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lde5$e;

    .line 3
    iget-object v1, v1, Lde5$e;->c:Lde5$a;

    iget v1, v1, Lde5$a;->d:I

    int-to-long v1, v1

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 4
    new-array v1, v0, [B

    .line 5
    invoke-virtual {p0, v1, p1}, Lde5;->b([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lde5$d; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract b([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde5$d;
        }
    .end annotation
.end method

.method public c([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    add-int v2, v1, v0

    .line 2
    array-length v3, p1

    invoke-static {v1, v2, v3}, Lc50;->C(III)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v3, p0

    check-cast v3, Lde5$e;

    .line 4
    iget-object v3, v3, Lde5$e;->c:Lde5$a;

    iget v4, v3, Lde5$a;->e:I

    iget v3, v3, Lde5$a;->f:I

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v3, v5}, Lfe5;->a(IILjava/math/RoundingMode;)I

    move-result v3

    mul-int v3, v3, v4

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    :try_start_0
    invoke-virtual {p0, v2, p1, v1, v0}, Lde5;->d(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract d(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract f()Lde5;
.end method
