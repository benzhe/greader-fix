.class public final Lyd3;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/io/IOException;)Lyd3;
    .locals 3

    .line 1
    new-instance v0, Lyd3;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lyd3;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/Exception;I)Lyd3;
    .locals 2

    .line 1
    new-instance v0, Lyd3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lyd3;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/RuntimeException;)Lyd3;
    .locals 3

    .line 1
    new-instance v0, Lyd3;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lyd3;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method
