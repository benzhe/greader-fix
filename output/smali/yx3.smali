.class public Lyx3;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lyx3;
    .locals 2

    new-instance v0, Lyx3;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lyx3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lyx3;
    .locals 2

    new-instance v0, Lyx3;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lyx3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lyx3;
    .locals 2

    new-instance v0, Lyx3;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lyx3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lyx3;
    .locals 2

    new-instance v0, Lyx3;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lyx3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
